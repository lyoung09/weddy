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
import 'package:weddynew/screen/auth/signup/signup_layout.dart';

import '../../../base/base_bloc_listener_page.dart';
import '../../../base/bloc/base_bloc_state.dart';
import 'bloc/signup_bloc.dart';

class SignupPage extends BaseBlocListenerPage<SignupBloc, BaseBlocState> {
  SignupPage({Key? key}) : super(key: key);

  static const String routeName = "/sign_up";

  @override
  Widget buildPage(BuildContext context, Widget blocBody) {
    return Scaffold(
        appBar: widgetFactory.createDefaultAppBar(context, title: "회원가입"),
        backgroundColor: Colors.white,
        body: blocBody);
  }

  @override
  Widget buildWidget() {
    return AnnotatedRegion<SystemUiOverlayStyle>(
        value: Platform.isIOS
            ? SystemUiOverlayStyle.light
            : const SystemUiOverlayStyle(
                statusBarIconBrightness: Brightness.light),
        child: SignupLayout());
  }

  @override
  void onStateChanged(BuildContext context, BaseBlocState state) {}
}
