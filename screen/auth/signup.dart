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
import 'package:grpc/grpc.dart';
import 'package:universal_io/io.dart';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:weddy_ceres/apis/di/network_module.dart';
import 'package:weddy_ceres/common/screen_common_widget.dart';

import 'package:weddy_ceres/common/widget_factory.dart';
import 'package:iconsax/iconsax.dart';
import 'package:weddy_ceres/repository/auth_repository.dart';
import 'package:weddy_ceres/screen/auth/sms_verification.dart';
import 'package:auto_size_text/auto_size_text.dart';

import '../../apis/noauth/app_auth_no_auth.pb.dart';
import '../../apis/noauth/app_auth_no_auth.pbgrpc.dart';
import '../../apis/result.dart';
import '../../repository/safe_api.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({Key? key}) : super(key: key);

  @override
  SignupScreenState createState() => SignupScreenState();
}

class SignupScreenState extends State<SignupScreen> {
  final widgetFactory = WidgetFactory();
  final screenCommonWidget = ScreenCommonWidget();

  bool isPasswdObscureText = true;
  bool isConfirmPasswdObscureText = true;
  bool isAgreePrivacy = false;

  IconData passwdIconVisible = Icons.visibility_off;
  IconData confirmPasswdIconVisible = Icons.visibility_off;

  final TextEditingController passwordEditingController =
      TextEditingController();
  final TextEditingController accountEditingController =
      TextEditingController();
  final TextEditingController confirmPasswordEditingController =
      TextEditingController();
  final TextEditingController phoneEditingController = TextEditingController();

  void togglePasswdObscureText() {
    setState(() {
      isPasswdObscureText = !isPasswdObscureText;
      if (isPasswdObscureText == true) {
        passwdIconVisible = Icons.visibility_off;
      } else {
        passwdIconVisible = Icons.visibility;
      }
    });
  }

  void toggleConfirmPasswdObscureText() {
    setState(() {
      isConfirmPasswdObscureText = !isConfirmPasswdObscureText;
      if (isConfirmPasswdObscureText == true) {
        confirmPasswdIconVisible = Icons.visibility_off;
      } else {
        confirmPasswdIconVisible = Icons.visibility;
      }
    });
  }

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
                                '회원 가입',
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
                            createPasswordTextField(),
                            createConfirmPasswordTextField(),
                            createPhoneTextField(),
                            const SizedBox(
                              height: 20,
                            ),
                            createServiceAgree(),
                            createSigninButton(),
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

  Widget createPasswordTextField() {
    return widgetFactory.createDefaultTextField(context,
        suffix: IconButton(
            icon: Icon(passwdIconVisible, color: Colors.grey[700], size: 20),
            onPressed: () {
              togglePasswdObscureText();
            }),
        passwordField: true,
        labelText: '비밀번호',
        textEditingController: passwordEditingController);
  }

  Widget createConfirmPasswordTextField() {
    return widgetFactory.createDefaultTextField(context,
        suffix: IconButton(
            icon: Icon(confirmPasswdIconVisible,
                color: Colors.grey[700], size: 20),
            onPressed: () {
              togglePasswdObscureText();
            }),
        passwordField: true,
        labelText: '비밀번호 확인',
        textEditingController: confirmPasswordEditingController);
  }

  Widget createServiceAgree() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Checkbox(
          shape: const CircleBorder(),
          value: isAgreePrivacy,
          onChanged: (value) {
            setState(() {
              isAgreePrivacy = value!;
            });
          },
        ),
        GestureDetector(
            onTap: () {
              screenCommonWidget.showSnackBar(context, "웹 화면으로 이동");
            },
            // todo add 서비스 약관 동의 추가
            child: AutoSizeText('개인정보 이용동의',
                style: Theme.of(context).textTheme.headline5))
      ],
    );
  }

  Widget createSigninButton() {
    return SizedBox(
      width: double.maxFinite,
      child: widgetFactory.createDefaultButton(
        context,
        text: "회원가입",
        icon: Iconsax.happyemoji,
        onPressed: () {
          signup(accountEditingController.text, passwordEditingController.text,
              phoneEditingController.text, 'aa', 1);

          // Navigator.push(
          //     context,
          //     MaterialPageRoute(
          //         builder: (context) => const PinCodeVerificationScreen()));
        },
      ),
    );
  }

  final AppAuthServiceWithoutTokenClient noAuthClient =
      AppAuthServiceWithoutTokenClient(GrpcClientSingleton().client!);

  Future signup(String id, String name, String password, String phoneNumber,
      int relationshipCode) {
    return noAuthClient.signup(SignupRequest(
        userId: id,
        userName: name,
        password: password,
        phoneNumber: phoneNumber,
        relationshipCode: relationshipCode,
        userPlatform: Platform.isAndroid ? "AOS" : "IOS"));
  }

  Future signIn(String id, String name, String password, String phoneNumber,
      int relationshipCode) {
    return noAuthClient.signin(SigninRequest(
        userId: id,
        password: password,
        userPlatform: Platform.isAndroid ? "AOS" : "IOS"));
  }
}
