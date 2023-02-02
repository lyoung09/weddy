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
import 'package:weddynew/base/bloc/bloc_state.dart';
import 'package:weddynew/screen/auth/signin/signin_layout.dart';

import '../../../base/base_bloc_listener_page.dart';
import '../bloc/auth_bloc.dart';
import '../bloc/auth_state.dart';

class SignInPage extends BaseBlocListenerPage<AuthBloc, AuthState> {
  SignInPage({Key? key}) : super(key: key);

  static const String routeName = "/sign_in";

  @override
  Widget buildPage(BuildContext context, Widget blocBody) {
    return Scaffold(backgroundColor: Colors.white, body: blocBody);
  }

  @override
  Widget buildWidget() {
    return SignInLayout();
  }

  @override
  void onStateChanged(BuildContext context, AuthState state) {
    if (state.status.isError) {
      screenCommonWidget.showSnackBar(context, "아이디 또는 비밀번호가 일치하지 않습니다");
    }
  }
}
