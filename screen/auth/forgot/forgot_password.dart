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

import '../../../base/base_stateless_widget.dart';
import '../../../provider/boolean_provider.dart';
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
          child: Padding(
              padding: const EdgeInsets.only(left: 36, top: 135, right: 36),
              child: Column(
                mainAxisSize: MainAxisSize.max,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  const Text(
                    'Enter your ID and Phone Number and we’ll send you an SMS code to your phone',
                  ),
                  const SizedBox(height: 38),
                  createAccountTextField(context),
                  const SizedBox(height: 20),
                  createPhoneTextField(context),
                  const SizedBox(height: 30),
                  createSendButton(context)
                ],
              )),
        ));
  }

  Widget createAccountTextField(BuildContext context) {
    return widgetFactory.createDefaultTextField(
      context,
      labelText: '아이디',
      textEditingController: accountEditingController,
      onChanged: (value) {
        buttonEnabledProvider.setValue(value.trim().isNotEmpty &&
            phoneEditingController.text.trim().isNotEmpty);
      },
    );
  }

  Widget createPhoneTextField(BuildContext context) {
    return widgetFactory.createDefaultTextField(
      context,
      labelText: '휴대폰번호',
      textEditingController: phoneEditingController,
      onChanged: (value) {
        buttonEnabledProvider.setValue(value.trim().isNotEmpty &&
            accountEditingController.text.trim().isNotEmpty);
      },
    );
  }

  Widget createSendButton(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: SizedBox(
            width: double.maxFinite,
            child: BooleanProvider.createWidget(provider: buttonEnabledProvider,
                (state) {
              return widgetFactory.createDefaultButton(context,
                  text: "인증하기",
                  onPressed: state.value
                      ? () {
                          Navigator.pushNamed(
                              context, PinCodeVerificationPage.routeName,
                              arguments: PinCodeVerificationArgs(
                                  verifyType: PinCodeVerificationArgs
                                      .typeForgotPassword,
                                  phoneNumber: phoneEditingController.text));
                        }
                      : null);
            })));
  }
}
