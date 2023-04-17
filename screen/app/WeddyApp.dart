// ignore: must_be_immutable

import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:weddynew/base/base_bloc_listener_page.dart';
import 'package:weddynew/base/bloc/bloc_state.dart';
import 'package:weddynew/screen/app/bloc/app_bloc.dart';
import 'package:weddynew/screen/auth/forgot/detail/show_id.dart';

import '../../resources/Colors.dart';
import '../../resources/Images.dart';
import '../../resources/Text.dart';
import '../auth/forgot/detail/change_password.dart';
import '../auth/verification/pin_code_verification_page.dart';
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
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Image.asset('assets/images/logo.png'),
      ),
    );
  }

  @override
  initEvent() => InitAppEvent();

  @override
  void onStateChanged(BuildContext context, AppState state) {
    if (state.status.isSuccess) {
      if (state.isLoggedIn) {
        Navigator.pushReplacementNamed(context, HomePage.routeName,
            arguments: 0);
      } else {
        Navigator.pushReplacement(context,
            MaterialPageRoute(builder: (context) => const WalkthroughPage()));
      }
    }
    // Navigator.pushReplacement(context,
    //     MaterialPageRoute(builder: (context) => const ChangePasswordScreen()));
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
          } else if (snapshot.connectionState == ConnectionState.none ||
              snapshot.connectionState == ConnectionState.waiting) {
            return errorPopup(context, 'Graph_connectionLost.png',
                '네트워크 연결이 끊겼습니다', '인터넷 연결 상태를 확인한 후', '다시 시도해주세요.');
          } else if (snapshot.hasError) {
            return errorPopup(context, 'Graph_problem.png', '앱을 다시 실행해주세요',
                '앱 실행 중 문제가 발생했습니다.', '다시 시도해주세요.');
          } else {
            return const Center();
          }
        });
  }

  Widget errorPopup(BuildContext context, String image, String mainText,
      String minorText, String minorText2) {
    return Scaffold(
      body: AlertDialog(
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(18.0))),
        content: Container(
          width: MediaQuery.of(context).size.width * .8,
          height: MediaQuery.of(context).size.height * .6,
          padding: const EdgeInsets.only(left: 36, right: 36),
          child: Column(
            children: [
              const SizedBox(
                height: 32,
              ),
              Images.getIcon(image),
              const SizedBox(
                height: 30,
              ),
              Text(
                mainText,
                style: TextItems.title3.copyWith(
                  fontSize: 20,
                  fontWeight: FontWeight.w700,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Text(minorText,
                  style: TextItems.title5
                      .copyWith(fontSize: 14, fontWeight: FontWeight.w500)),
              const SizedBox(
                height: 3,
              ),
              Text(minorText2,
                  style: TextItems.title5.copyWith(
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                  )),
              const SizedBox(
                height: 35,
              ),
              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.black,
                      fixedSize: const Size(120, 36),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(24))),
                  onPressed: () {
                    if (Platform.isAndroid) {
                      SystemNavigator.pop();
                    } else if (Platform.isIOS) {
                      exit(0);
                    }
                  },
                  child: Text('확인',
                      style: TextItems.title4.copyWith(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          color: Colors.white))),
              const SizedBox(
                height: 20,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
