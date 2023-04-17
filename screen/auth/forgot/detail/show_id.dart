import 'package:flutter/material.dart';
import 'package:weddynew/resources/Colors.dart';
import 'package:weddynew/resources/Text.dart';
import 'package:weddynew/screen/auth/forgot/forgot_password.dart';
import 'package:weddynew/screen/auth/signin/signin_page.dart';

import '../../../../common/widget_factory.dart';

class ShowIdScreen extends StatelessWidget {
  final String id;
  static const String routeName = "/show_id";

  const ShowIdScreen({super.key, required this.id});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: WidgetFactory()
          .createDefaultAppBar(context, title: '아이디 찾기', visibleBack: false),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(
            height: 40,
          ),
          Center(
              child: Text(
            '아이디 안내',
            style: TextItems.heading2.copyWith(
                fontSize: 24,
                fontWeight: FontWeight.w800,
                color: ColorItems.spaceCadet),
          )),
          const SizedBox(
            height: 24,
          ),
          idContainer(context),
          const SizedBox(
            height: 24,
          ),
          Text('인증하신 휴대폰 번호로 가입한 아이디입니다.',
              style: TextItems.body2.copyWith(
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                  color: ColorItems.spaceCadet)),
          const Spacer(),
          loginButton(context),
          const SizedBox(
            height: 20,
          ),
          forgotPasswordButton(context),
          const SizedBox(
            height: 24,
          ),
        ],
      ),
    );
  }

  Widget idContainer(BuildContext context) {
    return Container(
        height: 54,
        width: MediaQuery.of(context).size.width * .8,
        decoration: BoxDecoration(
          border: Border.all(color: ColorItems.primary, width: 1),
          borderRadius: BorderRadius.circular(64),
        ),
        child: Center(
            child: Text(id,
                style: TextItems.heading3.copyWith(
                    fontSize: 18,
                    fontWeight: FontWeight.w700,
                    color: ColorItems.spaceCadet))));
  }

  Widget loginButton(BuildContext context) {
    return ElevatedButton(
        style: ElevatedButton.styleFrom(
            fixedSize: Size(MediaQuery.of(context).size.width * .75, 54),
            backgroundColor: ColorItems.primary,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(64))),
        onPressed: () {
          Navigator.pushNamed(context, SignInPage.routeName);
        },
        child: Text('로그인',
            style: TextItems.heading3.copyWith(
                fontSize: 18,
                fontWeight: FontWeight.w700,
                color: Colors.white)));
  }

  Widget forgotPasswordButton(BuildContext context) {
    return ElevatedButton(
        style: ElevatedButton.styleFrom(
            fixedSize: Size(MediaQuery.of(context).size.width * .75, 54),
            side: const BorderSide(
              width: 1.0,
              color: ColorItems.spaceCadet,
            ),
            backgroundColor: ColorItems.white,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(64))),
        onPressed: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) {
            return ForgotPasswordPage();
          }));
        },
        child: Text('비밀번호 찾기',
            style: TextItems.heading3.copyWith(
                fontSize: 18,
                fontWeight: FontWeight.w700,
                color: ColorItems.spaceCadet)));
  }
}
