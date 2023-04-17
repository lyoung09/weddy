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

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weddynew/screen/auth/verification/pin_code_verification_layout.dart';
import 'package:weddynew/screen/auth/verification/timer/bloc/timer_bloc.dart';
import 'package:weddynew/screen/auth/verification/timer/ticker.dart';

import '../../../base/bloc/base_bloc.dart';
import '../../../common/screen_common_widget.dart';
import '../../../common/widget_factory.dart';
import '../../../di/di_module.dart';
import '../bloc/auth_bloc.dart';
import '../bloc/auth_event.dart';
import '../bloc/auth_state.dart';
import 'bloc/verification_timer_bloc.dart';

class PinCodeVerificationPage extends StatelessWidget {
  const PinCodeVerificationPage({
    Key? key,
    required this.args,
  }) : super(key: key);

  static const String routeName = "/sms_verification";

  final PinCodeVerificationArgs args;

  @override
  Widget build(BuildContext context) {
    ScreenCommonWidget screenCommonWidget = ScreenCommonWidget();
    WidgetFactory widgetFactory = WidgetFactory();

    AuthBloc bloc = getIt.get(
        param1: AuthState(
      verifyType: args.verifyType,
      id: args.id,
      password: args.password,
      name: args.name,
      phoneNumber: args.phoneNumber,
      email: args.email,
    ));

    final navEvent = bloc.navEvent;
    final popEvent = bloc.popEvent;

    bloc.snackBarEvent.addListener(() {
      if (bloc.snackBarEvent.value?.isNotEmpty == true) {
        screenCommonWidget.showSnackBar(context, bloc.snackBarEvent.value);
      }
    });

    bloc.modalEvent.addListener(() {
      if (bloc.modalEvent.value?.isNotEmpty == true) {
        screenCommonWidget.showConfirmDialog(context,
            message: bloc.modalEvent.value, icon: bloc.modalEvent.value);
      }
    });

    navEvent.addListener(() {
      NavigationEvent? navigation = navEvent.value;
      if (navigation != null) {
        if (navigation.clearStack) {
          Navigator.pushNamedAndRemoveUntil(
              context, navigation.routeName, (route) => false,
              arguments: navigation.arguments);
        } else {
          if (navigation.callback == null) {
            Navigator.pushNamed(context, navigation.routeName,
                    arguments: navigation.arguments)
                .then((value) => navigation.callback?.call(value));
          }
        }
      }
    });

    popEvent.addListener(() {
      PopEvent? pop = popEvent.value;
      if (pop != null) {
        Navigator.pop(context, pop.result);
      }
    });

    return MultiBlocProvider(
      providers: [
        BlocProvider<AuthBloc>(
            create: (context) => bloc..add(AuthSmsVerifyInitEvent())),
        BlocProvider<TimerBloc>(
            create: (context) => TimerBloc(ticker: getIt.get())
              ..add(const TimerStarted(duration: 180)))
      ],
      child: SmsVerificationLayout(),
    );
  }
}

class PinCodeVerificationArgs {
  PinCodeVerificationArgs(
      {required this.verifyType,
      required this.phoneNumber,
      this.id,
      this.password,
      this.name,
      this.email,
      this.gender});

  static const typeSignUp = "signUp";
  static const typeForgotAccount = "forgotAccount";
  static const typeForgotPassword = "forgotPassword";

  final String verifyType;
  final String? id;
  final String? password;
  final String? name;
  final String? email;
  final String phoneNumber;
  final int? gender;
}
