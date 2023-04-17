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
import 'package:weddynew/apis/result.dart';
import 'package:weddynew/di/di_module.dart';
import 'package:weddynew/repository/auth_repository.dart';
import 'package:weddynew/resources/Text.dart';
import 'package:weddynew/screen/auth/forgot/detail/show_id.dart';

import '../../../base/base_stateless_widget.dart';
import '../../../provider/boolean_provider.dart';
import '../../../resources/Colors.dart';
import '../verification/pin_code_verification_page.dart';

class ForgotAccountPage extends BaseStatelessWidget {
  ForgotAccountPage({Key? key}) : super(key: key);

  static const String routeName = "/forgot_account";

  final TextEditingController phoneEditingController = TextEditingController();
  final TextEditingController nameEditingController = TextEditingController();

  final BooleanProvider buttonEnabledProvider =
      BooleanProvider(initValue: false);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: widgetFactory.createDefaultAppBar(context, title: '아이디 찾기'),
      backgroundColor: Colors.white,
      body: AnnotatedRegion<SystemUiOverlayStyle>(
          value: Platform.isIOS
              ? SystemUiOverlayStyle.light
              : const SystemUiOverlayStyle(
                  statusBarIconBrightness: Brightness.light),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              const SizedBox(height: 92),
              Text(
                '회원가입 시 등록한 이름과 휴대폰 번호를 입력해주세요',
                style: TextItems.body1.copyWith(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    color: ColorItems.spaceCadet),
              ),
              const SizedBox(height: 28),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: createNameTextField(context),
              ),
              const SizedBox(height: 22),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Expanded(child: createPhoneTextField(context)),
                    authSendButton(context),
                  ],
                ),
              ),
              // const SizedBox(height: 30),
              // Padding(
              //   padding: const EdgeInsets.all(8.0),
              //   child: createSendButton(context),
              // )
            ],
          )),
    );
  }

  Widget createSendButton(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: SizedBox(
            width: double.maxFinite,
            child: BooleanProvider.createWidget(provider: buttonEnabledProvider,
                (state) {
              return widgetFactory.createDefaultButton(
                context,
                text: '인증하기',
                onPressed: state.value
                    ? () {
                        Navigator.pushNamed(
                            context, PinCodeVerificationPage.routeName,
                            arguments: PinCodeVerificationArgs(
                                verifyType:
                                    PinCodeVerificationArgs.typeForgotAccount,
                                phoneNumber: phoneEditingController.text));
                      }
                    : null,
              );
            })));
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
              //AuthRepository(dao: getIt.get(), service: getIt.get(), bizService: getIt.get(), preference: getIt.get()).chagePasswordRepository('oldPassword', 'newPassword').then((value) => value.success((data) { }))

              // Navigator.push(
              //     context,
              //     MaterialPageRoute(
              //         builder: (_) => const ShowIdScreen(id: "hoit")));
              Navigator.pushNamed(context, PinCodeVerificationPage.routeName,
                  arguments: PinCodeVerificationArgs(
                      verifyType: PinCodeVerificationArgs.typeForgotAccount,
                      phoneNumber: phoneEditingController.text,
                      name: nameEditingController.text));
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

  Widget createPhoneTextField(BuildContext context) {
    return widgetFactory.createDefaultTextField(
      context,
      hintText: '휴대폰번호',
      inputType: TextInputType.number,
      textEditingController: phoneEditingController,
      onChanged: (value) {
        buttonEnabledProvider.setValue(nameEditingController.text.isNotEmpty &&
            (value.trim().isNotEmpty &&
                (value.trim().length == 10 || value.trim().length == 11)));
      },
    );
  }

  Widget createNameTextField(BuildContext context) {
    return widgetFactory.createDefaultTextField(
      context,
      hintText: '이름을 입력해주세요',
      textEditingController: nameEditingController,
    );
  }
}
