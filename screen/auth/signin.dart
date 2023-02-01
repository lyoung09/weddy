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
import 'package:weddy_ceres/screen/auth/forgot_account.dart';
import 'package:weddy_ceres/screen/auth/forgot_password.dart';
import 'package:weddy_ceres/screen/auth/signup.dart';
import 'package:weddy_ceres/screen/bottom_navigation.dart';
import 'package:iconsax/iconsax.dart';
import 'package:auto_size_text/auto_size_text.dart';

class SigninScreen extends StatefulWidget {
  const SigninScreen({Key? key}) : super(key: key);

  @override
  SigninScreenState createState() => SigninScreenState();
}

class SigninScreenState extends State<SigninScreen> {
  final widgetFactory = WidgetFactory();

  bool obscureText = true;
  bool autoLogin = true;
  IconData iconVisible = Icons.visibility_off;
  final TextEditingController passwordEditingController =
      TextEditingController();
  final TextEditingController accountEditingController =
      TextEditingController();

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
              // top background gradient
              widgetFactory.createAuthScreenBackground(context),
              createHeader(),
              const SizedBox(height: 10),
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
                                'WEDDY',
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
                            const SizedBox(
                              height: 20,
                            ),
                            createRememberLogin(),
                            createLoginButton(),
                          ],
                        )),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  createSignup(),
                  const SizedBox(height: 10),
                  createForgotButtons(),
                  const SizedBox(
                    height: 20,
                  ),
                ],
              )
            ],
          ),
        ));
  }

  Widget createHeader() {
    return Container(
        margin: EdgeInsets.fromLTRB(
            0, MediaQuery.of(context).size.height / 6, 0, 15),
        alignment: Alignment.topCenter,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: const [
            AutoSizeText(
              'My Wedding Design',
              style: TextStyle(
                  fontFamily: 'Poppins',
                  color: Colors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(
              width: 10,
            ),
            CircleAvatar(
              backgroundColor: Colors.transparent,
              maxRadius: 32,
              backgroundImage: AssetImage('assets/images/logo_character.png'),
            )
          ],
        ));
  }

  Widget createAccountTextField() {
    return widgetFactory.createDefaultTextField(context,
        labelText: '아이디', textEditingController: accountEditingController);
  }

  Widget createPasswordTextField() {
    return widgetFactory.createDefaultTextField(context,
        suffix: IconButton(
            icon: Icon(iconVisible, color: Colors.grey[700], size: 20),
            onPressed: () {
              togglePasswordText();
            }),
        passwordField: true,
        labelText: '비밀번호',
        textEditingController: passwordEditingController);
  }

  Widget createRememberLogin() {
    return widgetFactory.createDefaultCheckbox(
        onChanged: (value) {
          setState(() {
            autoLogin = value!;
          });
        },
        text: '로그인 기억하기',
        value: autoLogin);
  }

  Widget createSignup() {
    return Center(
      child: Wrap(
        children: <Widget>[
          const AutoSizeText('아직 회원이 아니신가요? '),
          GestureDetector(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const SignupScreen()));
            },
            child: AutoSizeText(
              '회원가입',
              style: TextStyle(
                  color: Theme.of(context).colorScheme.primary,
                  fontSize: 16,
                  fontWeight: FontWeight.bold),
            ),
          ),
        ],
      ),
    );
  }

  Widget createForgotButtons() {
    return Align(
      alignment: Alignment.center,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          widgetFactory.createTextButton(
            text: '아이디 찾기',
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const ForgotAccountScreen()));
            },
          ),
          const SizedBox(
            width: 30,
          ),
          widgetFactory.createTextButton(
            text: '비밀번호 찾기',
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const ForgotPasswordScreen()));
            },
          ),
        ],
      ),
    );
  }

  Widget createLoginButton() {
    return SizedBox(
      width: double.maxFinite,
      child: widgetFactory.createDefaultButton(
        context,
        text: '로그인',
        icon: Iconsax.login,
        onPressed: () {
          Navigator.pushReplacement(
              context,
              MaterialPageRoute(
                  builder: (context) => const BottomNavigationPage()));
        },
      ),
    );
  }

  void togglePasswordText() {
    setState(() {
      obscureText = !obscureText;
      if (obscureText == true) {
        iconVisible = Icons.visibility_off;
      } else {
        iconVisible = Icons.visibility;
      }
    });
  }
}
