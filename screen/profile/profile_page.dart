import 'package:flutter/material.dart';
import 'package:weddynew/screen/profile/profile_footer_widget.dart';
import 'package:weddynew/screen/profile/profile_header_widget.dart';

import '../../base/base_bloc_listener_page.dart';
import 'bloc/profile_bloc.dart';
import 'bloc/profile_event.dart';
import 'bloc/profile_state.dart';

class ProfilePage extends BaseBlocListenerPage<ProfileBloc, ProfileState> {
   ProfilePage({Key? key}) : super(key: key);

  static const String routeName = "/profile";

  @override
  Widget buildPage(BuildContext context, Widget blocBody) {
    return Scaffold(
        appBar: widgetFactory.createDefaultAppBar(context, title: '내 프로필'),
        backgroundColor: Colors.white,
        body: blocBody
    );
  }

  @override
  Widget buildWidget() {
    return SingleChildScrollView(
        child: Column(children: [
         const SizedBox(height: 10),
          ProfileHeaderWidget(),
          ProfileFooterWidget()
        ])
    );
  }

  @override
  initEvent() => InitProfileEvent();

  @override
  void onStateChanged(BuildContext context, ProfileState state) {
  }
}