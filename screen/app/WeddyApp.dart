// ignore: must_be_immutable

import 'package:flutter/material.dart';
import 'package:weddynew/base/base_bloc_listener_page.dart';
import 'package:weddynew/base/bloc/bloc_state.dart';
import 'package:weddynew/screen/app/bloc/app_bloc.dart';

import '../home/home.dart';
import '../walkthrough/walkthrough_page.dart';
import 'bloc/app_event.dart';
import 'bloc/app_state.dart';

class WeddyApp extends StatefulWidget {
  const WeddyApp({Key? key}) : super(key: key);

  @override
  WeddyAppState createState() => WeddyAppState();
}

class SplashPage extends BaseBlocListenerPage<AppBloc, AppState> {
  SplashPage({Key? key}) : super(key: key);

  @override
  Widget buildPage(BuildContext context, Widget blocBody) {
    return Container(
      child: blocBody,
    );
  }

  @override
  Widget buildWidget() {
    return const Center();
  }

  @override
  initEvent() => InitAppEvent();

  @override
  void onStateChanged(BuildContext context, AppState state) {
    if (state.status.isSuccess) {
      if (state.isLoggedIn) {
        Navigator.pushReplacementNamed(context, HomePage.routeName);
      } else {
        Navigator.pushReplacement(context,
            MaterialPageRoute(builder: (context) => const WalkthroughPage()));
      }
    }

    // Navigator.pushReplacement(
    //     context, MaterialPageRoute(builder: (context) => ProfileUpdatePage()));
  }
}

class WeddyAppState extends State<WeddyApp> {
  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: null,
        builder: (context, AsyncSnapshot snapshot) {
          // Show splash screen while waiting for app resources to load:
          if (mounted) {
            return SplashPage();
          } else {
            return const Center();
          }
        });
  }
}
