import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import 'package:weddynew/screen/auth/verification/timer/bloc/timer_bloc.dart';
import 'package:weddynew/screen/auth/verification/timer/view/timer_page.dart';
import '../../../base/base_stateless_widget.dart';
import '../../../common/screen_common_widget.dart';
import '../../../common/widget_factory.dart';
import '../../../provider/boolean_provider.dart';
import '../../../resources/Colors.dart';

import '../../../resources/Text.dart';
import '../bloc/auth_bloc.dart';
import '../bloc/auth_event.dart';

class SmsVerificationLayout extends BaseStatelessWidget {
  SmsVerificationLayout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final duration = context.select((TimerBloc bloc) => bloc.state.duration);
    final bloc = context.read<AuthBloc>();
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: widgetFactory.createDefaultAppBar(context, title: "회원가입"),
      body: SingleChildScrollView(
        physics: const AlwaysScrollableScrollPhysics(),
        child: Padding(
          padding: const EdgeInsets.fromLTRB(24, 8, 24, 8),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              AutoSizeText(
                '인증번호를 입력하세요',
                style: TextItems.heading2.copyWith(
                    fontSize: 24,
                    fontWeight: FontWeight.w800,
                    color: ColorItems.spaceCadet),
              ),
              const SizedBox(height: 10),
              duration == 0
                  ? Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(right: 30),
                          child: Text('입력 제한 시간이 초과되었습니다!',
                              textScaleFactor: 1.4,
                              maxLines: 3,
                              style: TextItems.title7.copyWith(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w500,
                                  color: ColorItems.spaceCadet)),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                              left: 30.0, right: 30, top: 8),
                          child: Text('다시 시도하시려면 ‘재전송하기’버튼을 클릭해주세요',
                              textScaleFactor: 1.4,
                              maxLines: 3,
                              style: TextItems.title7.copyWith(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w500,
                                  color: ColorItems.spaceCadet)),
                        ),
                      ],
                    )
                  : AutoSizeText(
                      '요청하신 번호로 인증번호 4자리를 전송했습니다.',
                      style: TextItems.body1.copyWith(
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                          color: ColorItems.spaceCadet),
                      textAlign: TextAlign.center,
                    ),
              const SizedBox(height: 40),
              createPinCodeTextField(context, bloc),
              const SizedBox(height: 30),
              TimerView(
                context: context,
                duration: duration,
              ),
            ],
          ),
        ),
      ),
      bottomSheet: Padding(
        padding:
            EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
        child: ListView(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          children: [
            createResendButton(context, screenCommonWidget, duration),
            const SizedBox(height: 16),
            createVerificationButton(
                context, widgetFactory, screenCommonWidget, bloc),
            const SizedBox(height: 16),
          ],
        ),
      ),
    );
  }

  Widget createVerificationButton(
      BuildContext context,
      WidgetFactory widgetFactory,
      ScreenCommonWidget screenCommonWidget,
      AuthBloc bloc) {
    return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 36),
        child: SizedBox(
            width: double.maxFinite,
            child: BooleanProvider.createWidget(
                provider: bloc.buttonEnableProvider,
                (state) => widgetFactory.createDefaultTextButton(context,
                    text: '확인',
                    onPressed: state.value
                        ? () {
                            if (context.read<TimerBloc>().state
                                is TimerComplete) {
                              screenCommonWidget.showConfirmDialog(context,
                                  message: '인증 시간이 초과되었습니다');
                              return;
                            }

                            bloc.add(AuthSmsVerifyPinCodeEvent());
                          }
                        : null))));
  }

  Widget createResendButton(BuildContext context,
      ScreenCommonWidget screenCommonWidget, int duration) {
    return Wrap(
      children: [
        const SizedBox(
          width: 64,
        ),
        AutoSizeText(
          '인증문자를 받지 못하셨나요? ',
          style: TextItems.body2.copyWith(
              fontSize: 14,
              fontWeight: FontWeight.w400,
              color: ColorItems.secondarySpanishGray),
        ),
        const SizedBox(
          width: 14,
        ),
        GestureDetector(
          onTap: () {
            final timerBloc = context.read<TimerBloc>();
            if (timerBloc.state is TimerRunComplete) {
              // screenCommonWidget.showSnackBar(context, '인증번호를 재전송 했습니다');
              context.read<AuthBloc>().add(AuthSmsVerifyInitEvent());
              timerBloc.add(const TimerStarted(duration: 180));
            } else {
              //screenCommonWidget.showSnackBar(context, '잠시 후 재전송 가능합니다');
            }
          },
          child: AutoSizeText(
            '재전송하기',
            style: duration != 0
                ? TextItems.heading4.copyWith(
                    fontSize: 14,
                    fontWeight: FontWeight.w700,
                    color: ColorItems.secondarySpanishGray)
                : TextItems.heading4.copyWith(
                    fontSize: 14,
                    fontWeight: FontWeight.w700,
                    color: ColorItems.spaceCadet),
          ),
        ),
        const SizedBox(
          width: 70,
        ),
      ],
    );
  }

  Widget createPinCodeTextField(BuildContext context, AuthBloc bloc) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: PinCodeTextField(
        autoFocus: true,
        appContext: context,
        keyboardType: TextInputType.number,
        length: 4,
        showCursor: false,
        obscureText: false,
        enableActiveFill: true,
        animationType: AnimationType.fade,
        textStyle: TextItems.title2,
        cursorColor: Colors.transparent,
        pinTheme: PinTheme(
          //shape: PinCodeFieldShape.box,
          fieldHeight: 68,
          fieldWidth: 68,
          shape: PinCodeFieldShape.underline,
          borderRadius: const BorderRadius.all(Radius.circular(50)),
          borderWidth: 0,
          inactiveFillColor: ColorItems.platinum,
          inactiveColor: Colors.transparent,
          activeFillColor: ColorItems.platinum,
          activeColor: ColorItems.spaceCadet,
          selectedFillColor: ColorItems.platinum,
          selectedColor: ColorItems.spaceCadet,
          // inactiveFillColor: Colors.transparent,
          // inactiveColor: Colors.black,
          // activeFillColor: Colors.transparent,
          // activeColor: Colors.black,
          // selectedFillColor: Colors.transparent,
          // selectedColor: Colors.black
        ),
        animationDuration: const Duration(milliseconds: 300),
        onChanged: (value) {
          //pinCodeEditingController.text = value;
          bloc.pinCodeText(value);

          //context.read<AuthBloc>().pinCodeEditingController.text = value;
        },
        // beforeTextPaste: (text) {
        //   return false;
        // },
        errorTextSpace: 0,
        controller: bloc.pinCodeEditingController,
        scrollPadding: EdgeInsets.zero,
      ),
    );
  }
}
