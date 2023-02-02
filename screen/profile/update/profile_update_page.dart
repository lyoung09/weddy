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
import 'package:weddynew/screen/profile/update/profile_update_widget.dart';

import '../../../base/base_bloc_listener_page.dart';
import '../bloc/profile_bloc.dart';
import '../bloc/profile_display_type.dart';
import '../bloc/profile_event.dart';
import '../bloc/profile_state.dart';

typedef GetTagName = String Function(int index);

class ProfileUpdatePage extends BaseBlocListenerPage<ProfileBloc, ProfileState> {
  ProfileUpdatePage({Key? key, this.displayType = ProfileDisplayType.update}) : super(key: key);

  static const String routeName = "/profile_update";

  final ProfileDisplayType displayType;
  late final ProfileUpdateWidget widget = ProfileUpdateWidget(displayType);

  @override
  Widget buildPage(BuildContext context, Widget blocBody) {
    return Scaffold(
      appBar: widgetFactory.createDefaultAppBar(context, title: '기본정보 입력'),
      body: blocBody
    );
  }

  @override
  Widget buildWidget() {
    return widget;
  }

  @override
  initEvent() => InitProfileEvent(displayType: displayType);

  @override
  void onStateChanged(BuildContext context, ProfileState state) {
    if (state.status.isSuccess) {
      widget.updateData(state.profile);
    }
  }
}
