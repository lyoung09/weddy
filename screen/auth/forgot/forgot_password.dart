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
import 'package:universal_io/io.dart';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:weddynew/screen/auth/forgot/forgot_account.dart';

import '../../../base/base_stateless_widget.dart';
import '../../../provider/boolean_provider.dart';
import '../../../resources/Colors.dart';
import '../../../resources/Text.dart';
import '../verification/pin_code_verification_page.dart';

class ForgotPasswordPage extends BaseStatelessWidget {
  ForgotPasswordPage({Key? key}) : super(key: key);

  static const String routeName = "/forgot_password";

  final TextEditingController accountEditingController =
      TextEditingController();
  final TextEditingController phoneEditingController = TextEditingController();

  final BooleanProvider buttonEnabledProvider =
      BooleanProvider(initValue: false);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: widgetFactory.createDefaultAppBar(context, title: '비밀번호 찾기'),
        backgroundColor: Colors.white,
        body: AnnotatedRegion<SystemUiOverlayStyle>(
          value: Platform.isIOS
              ? SystemUiOverlayStyle.light
              : const SystemUiOverlayStyle(
                  statusBarIconBrightness: Brightness.light),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              const SizedBox(height: 92),
              Padding(
                padding: const EdgeInsets.only(left: 24.0),
                child: Text(
                  '아이디와 휴대폰 번호를 입력해주세요',
                  style: TextItems.body1.copyWith(
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                      color: ColorItems.spaceCadet),
                ),
              ),
              const SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.only(left: 24.0),
                child: Text(
                  '인증이 완료되면 비밀번호를 재발급 받으실 수 있어요!',
                  style: TextItems.body1.copyWith(
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                      color: ColorItems.spaceCadet),
                ),
              ),
              const SizedBox(height: 24),
              createAccountTextField(context),
              const SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Expanded(child: createPhoneTextField(context)),
                    authSendButton(context),
                  ],
                ),
              ),
              const Spacer(),
              Center(child: forgotId(context)),
              const SizedBox(height: 52)
            ],
          ),
        ));
  }

  Widget createAccountTextField(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 8.0, right: 8),
      child: widgetFactory.createDefaultTextField(
        context,
        labelText: '아이디를 입력해주세요',
        textEditingController: accountEditingController,
        onChanged: (value) {
          buttonEnabledProvider.setValue(value.trim().isNotEmpty &&
              (phoneEditingController.text.trim().isNotEmpty) &&
              (phoneEditingController.text.trim().length == 10 ||
                  phoneEditingController.text.trim().length == 11));
        },
      ),
    );
  }

  Widget createPhoneTextField(BuildContext context) {
    return widgetFactory.createDefaultTextField(
      context,
      labelText: '휴대폰번호',
      inputType: TextInputType.number,
      textEditingController: phoneEditingController,
      onChanged: (value) {
        buttonEnabledProvider.setValue(
            accountEditingController.text.trim().isNotEmpty &&
                (value.trim().isNotEmpty &&
                    (value.trim().length == 10 || value.trim().length == 11)));
      },
    );
  }

  Widget authSendButton(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 8.0),
      child: BooleanProvider.createWidget(provider: buttonEnabledProvider,
          (state) {
        return ElevatedButton(
            style: ElevatedButton.styleFrom(
                backgroundColor: state.value == true
                    ? ColorItems.primary
                    : ColorItems.mysticRose,
                disabledBackgroundColor: ColorItems.mysticRose,
                padding: EdgeInsets.zero,
                fixedSize: const Size(100, 42),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(18))),
            onPressed: () {
              state.value == true
                  ? Navigator.pushNamed(
                      context, PinCodeVerificationPage.routeName,
                      arguments: PinCodeVerificationArgs(
                          verifyType:
                              PinCodeVerificationArgs.typeForgotPassword,
                          phoneNumber: phoneEditingController.text,
                          id: accountEditingController.text))
                  : null;
            },
            child: Text(
              '인증 요청',
              style: TextItems.title4.copyWith(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                  color: Colors.white),
            ));
      }),
    );
  }

  Widget forgotId(context) {
    return TextButton(
        onPressed: () {
          Navigator.pushReplacement(context,
              MaterialPageRoute(builder: (context) {
            return ForgotAccountPage();
          }));
        },
        child: Text(
          '아이디를 잊으셨나요?',
          style: TextItems.title4.copyWith(
              fontSize: 16,
              fontWeight: FontWeight.w500,
              color: ColorItems.spaceCadet),
        ));
  }
}
