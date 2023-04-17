import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

import '../../../base/base_stateless_widget.dart';
import '../../../provider/boolean_provider.dart';
import '../../../resources/Colors.dart';
import '../../../resources/Images.dart';
import '../../../resources/Text.dart';
import '../../../utils/account_utils.dart';
import '../bloc/auth_bloc.dart';
import '../bloc/auth_event.dart';
import '../forgot/forgot_account.dart';
import '../forgot/forgot_password.dart';
import '../signup/signup_page.dart';

class SignInWidget extends BaseStatelessWidget {
  SignInWidget({Key? key}) : super(key: key);

  final TextEditingController passwordEditingController =
      TextEditingController();
  final TextEditingController accountEditingController =
      TextEditingController();

  final autoLoginCheckedState = BooleanProvider(initValue: true);

  @override
  Widget build(BuildContext context) {
    //const SizedBox(height: 14),
    //createSignup(context),
    return Column(
      children: <Widget>[
        const AutoSizeText("Welcome back!", style: TextItems.title2),
        const SizedBox(height: 14),
        createAccountTextField(context),
        const SizedBox(height: 14),
        createPasswordTextField(context),
        const SizedBox(height: 40),
        createLoginButton(context),
        const SizedBox(height: 32),
        createForgotButtons(context),
        const SizedBox(height: 55),
      ],
    );
  }

  Widget createAccountTextField(BuildContext context) {
    return widgetFactory.closeTextField(
      context,
      labelText: '아이디',
      textEditingController: accountEditingController,
    );
  }

  Widget createPasswordTextField(BuildContext context) {
    return BooleanProvider.createWidget(
        initValue: true,
        (provider) => widgetFactory.createPasswordTextField(context,
                passwordField: provider.value,
                textEditingController: passwordEditingController,
                onIconPressed: () {
              provider.change();
            }, labelText: '비밀번호'));
  }

  Widget createForgotButtons(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 32, right: 32),
      child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
        const SizedBox(
          width: 8,
        ),
        widgetFactory.createTextButton(
          text: '아이디 찾기',
          style: TextItems.title4
              .copyWith(fontSize: 16, fontWeight: FontWeight.w500),
          onPressed: () {
            Navigator.pushNamed(context, ForgotAccountPage.routeName);
          },
        ),
        const SizedBox(
          width: 8,
        ),
        Images.getIcon('Divider2.png', height: 20, width: 2),
        const SizedBox(
          width: 8,
        ),
        widgetFactory.createTextButton(
          text: '비밀번호 찾기',
          style: TextItems.title4
              .copyWith(fontSize: 16, fontWeight: FontWeight.w500),
          onPressed: () {
            Navigator.pushNamed(context, ForgotPasswordPage.routeName);
          },
        ),
        const SizedBox(
          width: 8,
        ),
        Images.getIcon('Divider2.png', height: 20, width: 2),
        const SizedBox(
          width: 8,
        ),
        widgetFactory.createTextButton(
          text: '회원가입',
          style: TextItems.title4
              .copyWith(fontSize: 16, fontWeight: FontWeight.w500),
          onPressed: () {
            Navigator.pushNamed(context, SignupPage.routeName);
          },
        ),
      ]),
    );
  }

  Widget createLoginButton(BuildContext context) {
    return Center(
        child: ElevatedButton(
      style: ElevatedButton.styleFrom(
          backgroundColor: ColorItems.primary,
          padding:
              const EdgeInsets.only(top: 14, bottom: 14, left: 40, right: 40),
          fixedSize: const Size(230, 54),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(36))),
      onPressed: () {
        final id = accountEditingController.text;
        final password = passwordEditingController.text;

        if (availableCheck(context, id, password)) {
          addBlocEvent<AuthBloc>(
              context,
              AuthSignInEvent(accountEditingController.text,
                  passwordEditingController.text, true));
        }
      },
      child: Text(
        '로그인',
        style: TextItems.heading3.copyWith(
            fontSize: 18, fontWeight: FontWeight.w700, color: Colors.white),
      ),
    ));
  }

  bool availableCheck(BuildContext context, String id, String password) {
    final accountAvailable = AccountUtils();

    if (!accountAvailable.availableUserId(id)) {
      screenCommonWidget.showSnackBar(context, "아이디 영문, 숫자 6~20 자리 까지 가능해요");
      return false;
    }

    if (!accountAvailable.availableUserPassword(password)) {
      screenCommonWidget.showSnackBar(
          context, "비밀번호 영문 대소문자, 숫자, 특수문자 포함 8~20 자리 까지 가능해요");
      return false;
    }

    return true;
  }
}

// Widget createSignup(BuildContext context) {
  //   return Row(
  //     mainAxisAlignment: MainAxisAlignment.end,
  //     children: [
  //       GestureDetector(
  //           onTap: () {
  //             Navigator.pushNamed(context, SignupPage.routeName);
  //           },
  //           child: const AutoSizeText(
  //             '회원가입',
  //             style: TextItems.heading4,
  //           ))
  //     ],
  //   );
  // }
