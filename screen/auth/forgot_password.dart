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

import 'package:weddy_ceres/common/widget_factory.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:weddy_ceres/screen/auth/sms_verification.dart';

class ForgotPasswordScreen extends StatefulWidget {
  const ForgotPasswordScreen({Key? key}) : super(key: key);

  @override
  ForgotPasswordScreenState createState() => ForgotPasswordScreenState();
}

class ForgotPasswordScreenState extends State<ForgotPasswordScreen> {
  final widgetFactory = WidgetFactory();

  final TextEditingController accountEditingController =
      TextEditingController();
  final TextEditingController phoneEditingController = TextEditingController();

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: AnnotatedRegion<SystemUiOverlayStyle>(
          value: Platform.isIOS
              ? SystemUiOverlayStyle.light
              : const SystemUiOverlayStyle(
                  statusBarIconBrightness: Brightness.light),
          child: Stack(
            children: <Widget>[
              // top blue background gradient
              widgetFactory.createAuthScreenBackground(context),
              ListView(
                children: <Widget>[
                  Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    elevation: 5,
                    margin: EdgeInsets.fromLTRB(32,
                        MediaQuery.of(context).size.height / 3.5 - 72, 32, 0),
                    color: Colors.white,
                    child: Container(
                        margin: const EdgeInsets.fromLTRB(24, 0, 24, 20),
                        child: Column(
                          children: <Widget>[
                            const SizedBox(
                              height: 40,
                            ),
                            Center(
                              child: AutoSizeText(
                                '비밀번호 찾기',
                                style: widgetFactory.styler.authHeaderTextStyle,
                              ),
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            createAccountTextField(),
                            const SizedBox(
                              height: 20,
                            ),
                            createPhoneTextField(),
                            const SizedBox(
                              height: 20,
                            ),
                            createSendButton()
                          ],
                        )),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  widgetFactory.createReturnToBackButton(context)
                ],
              )
            ],
          ),
        ));
  }

  Widget createAccountTextField() {
    return widgetFactory.createDefaultTextField(context,
        labelText: '아이디', textEditingController: accountEditingController);
  }

  Widget createPhoneTextField() {
    return widgetFactory.createDefaultTextField(context,
        labelText: '휴대폰번호', textEditingController: phoneEditingController);
  }

  Widget createSendButton() {
    return SizedBox(
      width: double.maxFinite,
      child: widgetFactory.createDefaultButton(
        context,
        text: "인증하기",
        icon: Icons.phone_android,
        onPressed: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => const PinCodeVerificationScreen()));
        },
      ),
    );
  }
}
