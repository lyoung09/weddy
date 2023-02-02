/*
 *
 * Weddy CONFIDENTIAL
 * _____________________________________________________________________
 *
 * [2021] - [2030] Weddy
 *  All Rights Reserved.
 *
 * NOTICE:  All information contained herein is, and remains
 * the property of Weddy and its suppliers,
 * if any.  The intellectual and technical concepts contained
 * herein are proprietary to Weddy and its suppliers and
 * may be covered by Korea and Foreign Patents,
 * patents in process, and are protected by trade secret or copyright law.
 * Dissemination of this information or reproduction of this material
 * is strictly forbidden unless prior written permission is obtained
 * from Weddy.
 */

import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../base/base_stateless_widget.dart';
import '../../../provider/boolean_provider.dart';
import '../../../provider/generic_provider.dart';
import '../../../repository/auth_repository.dart';
import '../../../resources/Colors.dart';
import '../../../resources/Images.dart';
import '../../../resources/Text.dart';
import '../verification/pin_code_verification_page.dart';
import 'bloc/signup_bloc.dart';
import 'bloc/signup_event.dart';

class SignupWidget extends BaseStatelessWidget {
  SignupWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final bloc = context.read<SignupBloc>();

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        const SizedBox(height: 20),
        Row(
          children: [
            Flexible(flex: 1, child: createUserIdTextField(context, bloc)),
            const SizedBox(width: 4),
            createDuplicatedIdButton(context, bloc)
          ],
        ),
        Padding(
          padding: const EdgeInsets.only(left: 10),
          child: AutoSizeText('아이디 4~15자 입력해주세요.',
              style: TextItems.body6.copyWith(color: ColorItems.imperialRed)),
        ),
        const SizedBox(height: 4),
        createPasswordTextField(context, bloc),
        Padding(
          padding: const EdgeInsets.only(left: 10),
          child: AutoSizeText('비밀번호는 영문 소문자/대문자/숫자/특수문자 포함 8~15자 입력해주세요.',
              style: TextItems.body6.copyWith(color: ColorItems.imperialRed)),
        ),
        const SizedBox(height: 4),
        createConfirmPasswordTextField(context, bloc),
        const SizedBox(height: 20),
        widgetFactory.createDefaultTextField(context,
            labelText: '휴대폰번호',
            textEditingController: bloc.phoneEditingController,
            inputType: TextInputType.phone,
            onChanged: bloc.onTextChanged),
        const SizedBox(height: 20),
        widgetFactory.createDefaultTextField(context,
            labelText: '이름',
            textEditingController: bloc.nameEditingController,
            onChanged: bloc.onTextChanged),
        const SizedBox(height: 30),
        Padding(
            padding: const EdgeInsets.only(left: 36, right: 36),
            child: createGenderWidget(context, bloc)),
        const SizedBox(height: 12),
        createServiceAgree(context, bloc),
        const SizedBox(height: 12),
        createSignupButton(context, bloc),
      ],
    );
  }

  Widget createUserIdTextField(BuildContext context, SignupBloc bloc) {
    return widgetFactory.createDefaultTextField(context,
        labelText: '아이디',
        textEditingController: bloc.accountEditingController,
        onChanged: bloc.onTextChangedId);
  }

  Widget createDuplicatedIdButton(BuildContext context, SignupBloc bloc) {
    return GestureDetector(
        onTap: () => bloc.add(SignupIsDuplicatedIdEvent()),
        child: GenericProvider.createWidget<bool>(
            provider: bloc.duplicatedIdProvider, (state) {
          Color color = state.value == false
              ? ColorItems.carolinaBlue
              : ColorItems.secondarySpanishGray;
          return Container(
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                  border: Border.fromBorderSide(BorderSide(color: color)),
                  borderRadius: const BorderRadius.all(Radius.circular(14))),
              child: AutoSizeText('중복체크',
                  style: TextItems.title4.copyWith(color: color)));
        }));
  }

  Widget createPasswordTextField(BuildContext context, SignupBloc bloc) {
    return BooleanProvider.createWidget(
        initValue: true,
        (provider) => widgetFactory.createPasswordTextField(context,
                passwordField: provider.value,
                textEditingController: bloc.passwordEditingController,
                onIconPressed: () {
              provider.change();
            }, labelText: '비밀번호'));
  }

  Widget createConfirmPasswordTextField(BuildContext context, SignupBloc bloc) {
    return BooleanProvider.createWidget(
        initValue: true,
        (provider) => widgetFactory.createPasswordTextField(context,
                passwordField: provider.value,
                textEditingController: bloc.confirmPasswordEditingController,
                onIconPressed: () {
              provider.change();
            }, labelText: '비밀번호 확인'));
  }

  Widget createServiceAgree(BuildContext context, SignupBloc bloc) {
    return BooleanProvider.createWidget(
        provider: bloc.agreeProvider,
        (provider) => Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                GestureDetector(
                    onTap: () => provider.change(),
                    child: Images.getIcon('icon_check_field',
                        color: provider.value
                            ? ColorItems.greenPigment
                            : ColorItems.secondarySpanishGray)),
                const SizedBox(width: 12),
                GestureDetector(
                    onTap: () {
                      screenCommonWidget.showSnackBar(context, "웹 화면으로 이동");
                    },
                    // todo add 서비스 약관 동의 추가
                    child: const AutoSizeText('개인정보 이용동의',
                        style: TextItems.title5))
              ],
            ));
  }

  Widget createSignupButton(BuildContext context, SignupBloc bloc) {
    return BooleanProvider.createWidget(
        provider: bloc.buttonEnableProvider,
        (provider) => SizedBox(
              width: double.maxFinite,
              child: widgetFactory.createDefaultButton(
                context,
                text: "회원가입",
                onPressed: provider.value
                    ? () {
                        if (bloc.availableCheck() &&
                            bloc.accountAvailableCheck()) {
                          Navigator.pushNamed(
                              context, PinCodeVerificationPage.routeName,
                              arguments: PinCodeVerificationArgs(
                                  verifyType:
                                      PinCodeVerificationArgs.typeSignUp,
                                  id: bloc.accountEditingController.text,
                                  password: bloc.passwordEditingController.text,
                                  phoneNumber: bloc.phoneEditingController.text,
                                  name: bloc.nameEditingController.text,
                                  gender: bloc.genderProvider.value));
                        }
                      }
                    : null,
              ),
            ));
  }

  Widget createGenderWidget(BuildContext context, SignupBloc bloc) {
    return GenericProvider.createWidget<int>(
        provider: bloc.genderProvider,
        (state) => Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GestureDetector(
                    onTap: () => bloc.updateGender(2),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        state.value == 2
                            ? Images.getIcon('graph_bride')
                            : Images.getIcon('graph_bride_gray'),
                        const SizedBox(height: 6),
                        AutoSizeText('신부',
                            style: TextItems.title7.copyWith(
                                color: state.value == 2
                                    ? ColorItems.spaceCadet
                                    : ColorItems.secondarySpanishGray))
                      ],
                    )),
                GestureDetector(
                    onTap: () => bloc.updateGender(1),
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          state.value == 1
                              ? Images.getIcon('graph_groom')
                              : Images.getIcon('graph_groom_gray'),
                          const SizedBox(height: 6),
                          AutoSizeText('신랑',
                              style: TextItems.title7.copyWith(
                                  color: state.value == 1
                                      ? ColorItems.spaceCadet
                                      : ColorItems.secondarySpanishGray))
                        ])),
              ],
            ));
  }
}
