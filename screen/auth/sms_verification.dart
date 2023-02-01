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
import 'dart:async';

import 'package:flutter/material.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import 'package:weddy_ceres/common/screen_common_widget.dart';

import 'package:weddy_ceres/common/widget_factory.dart';
import 'package:auto_size_text/auto_size_text.dart';

class PinCodeVerificationScreen extends StatefulWidget {
  const PinCodeVerificationScreen({Key? key}) : super(key: key);

  @override
  PinCodeVerificationScreenState createState() =>
      PinCodeVerificationScreenState();
}

class PinCodeVerificationScreenState extends State<PinCodeVerificationScreen> {
  final widgetFactory = WidgetFactory();
  final screenCommonWidget = ScreenCommonWidget();

  bool buttonDisabled = true;
  String verificationCode = '';
  Timer? timer;
  int countdown = 10;

  @override
  void initState() {
    startVerifyTimer();
    super.initState();
  }

  @override
  void dispose() {
    timer?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView(
      padding: const EdgeInsets.fromLTRB(30, 120, 30, 30),
      children: <Widget>[
        Center(
            child: Icon(Icons.phone_android,
                color: Theme.of(context).colorScheme.secondary, size: 50)),
        const SizedBox(height: 20),
        Center(
            child: AutoSizeText(
          '인증번호를 입력하세요',
          style: Theme.of(context).textTheme.subtitle1,
        )),
        const SizedBox(
          height: 20,
        ),
        SizedBox(
          width: MediaQuery.of(context).size.width / 1.5,
          child: AutoSizeText(
            '인증번호를 01012341234 번호로 전송했습니다.',
            style: Theme.of(context).textTheme.subtitle1,
            textAlign: TextAlign.center,
          ),
        ),
        const SizedBox(
          height: 40,
        ),
        createPinCodeTextField(),
        createCountdownField(),
        const SizedBox(
          height: 40,
        ),
        createVerificationButton(),
        const SizedBox(
          height: 40,
        ),
        createResendButton(),
        const SizedBox(
          height: 30,
        ),
        widgetFactory.createReturnToBackButton(context)
      ],
    ));
  }

  Widget createCountdownField() {
    return Center(
      child: Wrap(
        children: [
          AutoSizeText('남은 시간 $countdown초',
              style: const TextStyle(color: Colors.redAccent, fontSize: 14)),
        ],
      ),
    );
  }

  Widget createVerificationButton() {
    return SizedBox(
        width: double.maxFinite,
        child: TextButton(
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.resolveWith<Color>(
                  (Set<MaterialState> states) => buttonDisabled
                      ? Colors.grey[300]!
                      : Theme.of(context).colorScheme.secondary),
              overlayColor: MaterialStateProperty.all(Colors.transparent),
              shape: MaterialStateProperty.all(RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(18.0),
              )),
            ),
            onPressed: () {
              if (!buttonDisabled) {
                if (countdown <= 0) {
                  screenCommonWidget.showSnackBar(context, '인증 시간이 초과되었습니다');
                  return;
                }
                screenCommonWidget.showSnackBar(
                    context, '인증완료 : $verificationCode');
                Navigator.pop(context);
              }
            },
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 5.0),
              child: AutoSizeText(
                '인증완료',
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: buttonDisabled ? Colors.grey[600] : Colors.white),
                textAlign: TextAlign.center,
              ),
            )));
  }

  Widget createResendButton() {
    return Center(
        child: Wrap(
      children: [
        AutoSizeText(
          '인증문자를 받지 못하셨나요? ',
          style: Theme.of(context).textTheme.subtitle1,
        ),
        GestureDetector(
          onTap: () {
            // todo check timer
            if (countdown > 0) {
              screenCommonWidget.showSnackBar(
                  context, '$countdown초 이후 재전송 가능합니다');
              return;
            }
            screenCommonWidget.showSnackBar(context, '인증번호를 재전송 했습니다');
          },
          child: AutoSizeText(
            '재전송',
            style: Theme.of(context).textTheme.headline5,
          ),
        )
      ],
    ));
  }

  Widget createPinCodeTextField() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 50),
      child: PinCodeTextField(
        autoFocus: true,
        appContext: context,
        keyboardType: TextInputType.number,
        length: 4,
        showCursor: false,
        obscureText: false,
        animationType: AnimationType.fade,
        pinTheme: PinTheme(
            shape: PinCodeFieldShape.underline,
            fieldHeight: 50,
            fieldWidth: 40,
            inactiveColor: Colors.grey,
            activeColor: Colors.green,
            selectedColor: Theme.of(context).colorScheme.secondary),
        animationDuration: const Duration(milliseconds: 300),
        backgroundColor: Colors.transparent,
        onChanged: (value) {
          setState(() {
            if (value.length == 4) {
              if (countdown != 0) {}
              buttonDisabled = false;
            } else {
              buttonDisabled = true;
            }

            verificationCode = value;
          });
        },
        beforeTextPaste: (text) {
          return false;
        },
      ),
    );
  }

  void startVerifyTimer() {
    timer = Timer.periodic(const Duration(seconds: 1), (timer) {
      setState(() {
        countdown--;
        if (countdown == 0) {
          timer.cancel();
        }
      });
    });
  }
}
