import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import 'package:weddynew/base/bloc/bloc_state.dart';
import 'package:weddynew/screen/auth/verification/pin_code_verification_remain_widget.dart';

import '../../../base/base_stateless_widget.dart';
import '../../../common/screen_common_widget.dart';
import '../../../common/widget_factory.dart';
import '../../../provider/boolean_provider.dart';
import '../../../resources/Colors.dart';

import '../../../resources/Text.dart';
import '../bloc/auth_bloc.dart';
import '../bloc/auth_event.dart';
import '../bloc/auth_state.dart';
import 'bloc/verification_timer_bloc.dart';
import 'bloc/verification_timer_event.dart';
import 'bloc/verification_timer_state.dart';

class SmsVerificationLayout extends BaseStatelessWidget {
  SmsVerificationLayout({Key? key}) : super(key: key);

  final buttonEnableProvider = BooleanProvider(initValue: false);
  final pinCodeEditingController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    String? phoneNumber = context.read<AuthBloc>().state.phoneNumber;
    return BlocListener<AuthBloc, AuthState>(
      listener: (context, state) {
        if (state.status.isSuccess) {
          addBlocEvent<VerificationTimerBloc>(
              context, VerificationTimerStartEvent());
        } else if (state.status.isNext) {
          addBlocEvent<VerificationTimerBloc>(
              context, VerificationTimerStopEvent());
        }
      },
      child: Padding(
        padding: const EdgeInsets.fromLTRB(24, 8, 24, 8),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            AutoSizeText('인증번호를 입력하세요',
                style: Theme.of(context).textTheme.headline4),
            const SizedBox(height: 10),
            AutoSizeText(
              '인증번호를 $phoneNumber 번호로 전송했습니다.',
              style: Theme.of(context).textTheme.bodyText1,
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 40),
            createPinCodeTextField(context),
            const SizedBox(height: 30),
            const SmsVerificationRemainWidget(),
            const Spacer(),
            createResendButton(context, screenCommonWidget),
            const SizedBox(height: 16),
            createVerificationButton(
                context, widgetFactory, screenCommonWidget),
            const SizedBox(
              height: 40,
            )
          ],
        ),
      ),
    );
  }

  Widget createVerificationButton(BuildContext context,
      WidgetFactory widgetFactory, ScreenCommonWidget screenCommonWidget) {
    return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 36),
        child: SizedBox(
            width: double.maxFinite,
            child: BooleanProvider.createWidget(
                provider: buttonEnableProvider,
                (state) => widgetFactory.createDefaultTextButton(context,
                    text: '인증완료',
                    onPressed: state.value
                        ? () {
                            // Navigator.pushReplacementNamed(
                            //     context, HomePage.routeName);
                            if (context
                                .read<VerificationTimerBloc>()
                                .state
                                .status
                                .isStop) {
                              screenCommonWidget.showSnackBar(
                                  context, '인증 시간이 초과되었습니다');
                              return;
                            }

                            context.read<AuthBloc>().add(
                                AuthSmsVerifyPinCodeEvent(
                                    pinCodeEditingController.text));
                          }
                        : null))));
  }

  Widget createResendButton(
      BuildContext context, ScreenCommonWidget screenCommonWidget) {
    return Center(
        child: Wrap(
      children: [
        AutoSizeText(
          '인증문자를 받지 못하셨나요? ',
          style: Theme.of(context)
              .textTheme
              .bodyText2
              ?.copyWith(color: ColorItems.secondarySpanishGray),
        ),
        GestureDetector(
          onTap: () {
            final timerBloc = context.read<VerificationTimerBloc>();
            if (timerBloc.state.status.isStop) {
              screenCommonWidget.showSnackBar(context, '인증번호를 재전송 했습니다');
              timerBloc.add(VerificationTimerRestartEvent());
            } else {
              screenCommonWidget.showSnackBar(context, '잠시 후 재전송 가능합니다');
            }
          },
          child: AutoSizeText(
            '재전송',
            style: Theme.of(context)
                .textTheme
                .bodyText2
                ?.copyWith(fontWeight: FontWeight.bold),
          ),
        )
      ],
    ));
  }

  Widget createPinCodeTextField(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: PinCodeTextField(
        autoFocus: true,
        appContext: context,
        keyboardType: TextInputType.number,
        length: 6,
        showCursor: false,
        obscureText: false,
        enableActiveFill: true,
        animationType: AnimationType.fade,
        textStyle: TextItems.title2,
        pinTheme: PinTheme(
            shape: PinCodeFieldShape.underline,
            fieldHeight: 66,
            fieldWidth: 20,
            borderRadius: const BorderRadius.all(Radius.circular(15)),
            borderWidth: 1,
            // inactiveFillColor: ColorItems.platinum,
            // inactiveColor: Colors.transparent,
            // activeFillColor: ColorItems.platinum,
            // activeColor: ColorItems.spaceCadet,
            // selectedFillColor: ColorItems.platinum,
            // selectedColor: ColorItems.spaceCadet
            inactiveFillColor: Colors.transparent,
            inactiveColor: Colors.black,
            activeFillColor: Colors.transparent,
            activeColor: Colors.black,
            selectedFillColor: Colors.transparent,
            selectedColor: Colors.black),
        animationDuration: const Duration(milliseconds: 300),
        onChanged: (value) {
          buttonEnableProvider.setValue(value.length == 6);
        },
        beforeTextPaste: (text) {
          return false;
        },
        controller: pinCodeEditingController,
        errorTextSpace: 0,
        scrollPadding: EdgeInsets.zero,
      ),
    );
  }
}
