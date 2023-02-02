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
import 'dart:io';
import 'package:flutter_localizations/flutter_localizations.dart';

import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:device_info_plus/device_info_plus.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:weddynew/di/di_module.dart';
import 'package:weddynew/screen/app/WeddyApp.dart';
import 'package:weddynew/screen/auth/forgot/forgot_account.dart';
import 'package:weddynew/screen/auth/forgot/forgot_password.dart';
import 'package:weddynew/screen/auth/signin/signin_page.dart';
import 'package:weddynew/screen/auth/signup/signup_page.dart';
import 'package:weddynew/screen/auth/verification/pin_code_verification_page.dart';
import 'package:weddynew/screen/do_product/youtube_player_page.dart';
import 'package:weddynew/screen/home/home.dart';
import 'package:weddynew/screen/home/dress/detail/dress_detail_page.dart';
import 'package:weddynew/screen/profile/bloc/profile_display_type.dart';
import 'package:weddynew/screen/profile/update/profile_update_page.dart';
import 'package:weddynew/screen/themedata.dart';
import 'package:weddynew/utils/logger.dart';
import 'global_variable.dart';
import 'model/mobile_device.dart';

import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';

Future<void> _firebaseMessagingBackgroundHandler(RemoteMessage message) async {
  Logger.d('Handling a background message ${message.messageId}');
}

late AndroidNotificationChannel channel;
late FlutterLocalNotificationsPlugin flutterLocalNotificationsPlugin;
void main() async {
  // defines theme color
  WidgetsFlutterBinding.ensureInitialized();

  // this function makes application always run in portrait mode
  //WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    name: 'weddy',
    options: DefaultFirebaseOptions.currentPlatform,
  );

  //await initFirebase();
  await initGetIt();
  final FirebaseAnalytics analytics = getIt.get();
  final FirebaseAnalyticsObserver observer = getIt.get();
  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
    statusBarColor: Colors.transparent,
    statusBarIconBrightness: Brightness.dark,
  ));

  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp])
      .then((_) {
    runApp(MaterialApp(
      navigatorKey: GlobalVariable.navigatorState,
      localizationsDelegates: const [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate
      ],
      navigatorObservers: <NavigatorObserver>[observer],
      debugShowCheckedModeBanner: kDebugMode,
      title: 'Weddy-Mobile',
      theme: themeData,
      routes: {
        '/': (context) => const HomePage(),
        HomePage.routeName: (context) => const HomePage(),
        SignInPage.routeName: (context) => SignInPage(),
        SignupPage.routeName: (context) => SignupPage(),
        ForgotAccountPage.routeName: (context) => ForgotAccountPage(),
        ForgotPasswordPage.routeName: (context) => ForgotPasswordPage(),
        // CallCenterPage.routeName: (context) => const CallCenterPage(),
        // MemoPage.routeName: (context) => const MemoPage(),
        // NoticePage.routeName: (context) => const NoticePage(),
        // PushMessagePage.routeName: (context) => const PushMessagePage(),
        // SettingsPage.routeName: (context) => const SettingsPage(),
        // FamilyLinkPage.routeName: (context) => const FamilyLinkPage(),
        // ProfilePage.routeName: (context) => const ProfilePage(),
        // GuidebookPage.routeName: (context) => const GuidebookPage()
      },
      onGenerateRoute: (settings) {
        Widget? widget;
        switch (settings.name) {
          case PinCodeVerificationPage.routeName:
            {
              widget = PinCodeVerificationPage(
                  args: settings.arguments as PinCodeVerificationArgs);
              break;
            }
          case ProfileUpdatePage.routeName:
            {
              widget = ProfileUpdatePage(
                  displayType: settings.arguments as ProfileDisplayType);
              break;
            }
          case DressDetailPage.routeName:
            {
              widget = DressDetailPage(dressId: settings.arguments as int);
              break;
            }
          case YoutubePlayerPage.routeName:
            {
              widget = YoutubePlayerPage(videoId: settings.arguments as String);
              break;
            }
          // case MapPage.routeName:
          //   {
          //     widget = MapPage(args: settings.arguments as MapPageArgs);
          //     break;
          //   }
          // case ProductDetailPage.routeName:
          //   {
          //     widget = ProductDetailPage(serviceId: settings.arguments as int);
          //     break;
          //   }
          // case ProductSearchPage.routeName:
          //   {
          //     widget = ProductSearchPage(title: settings.arguments as String);
          //     break;
          //   }

          // case PromotionImagePage.routeName:
          //   {
          //     widget = PromotionImagePage(
          //         imageList: settings.arguments as List<String>);
          //     break;
          //   }
        }

        if (widget != null) {
          analytics.setCurrentScreen(screenName: settings.name);
          return MaterialPageRoute(builder: (context) => widget!);
        }

        return null;
      },
    ));
  });
}

Future<void> initFirebase() async {
  await Firebase.initializeApp();
  FirebaseMessaging.onBackgroundMessage(_firebaseMessagingBackgroundHandler);

  channel = const AndroidNotificationChannel(
    'push_channel', // id
    'Push', // title
    description:
        'This channel is used for important notifications.', // description
    importance: Importance.high,
  );

  flutterLocalNotificationsPlugin = FlutterLocalNotificationsPlugin();

  await flutterLocalNotificationsPlugin
      .resolvePlatformSpecificImplementation<
          AndroidFlutterLocalNotificationsPlugin>()
      ?.createNotificationChannel(channel);

  var initializationSettingsAndroid =
      const AndroidInitializationSettings('@mipmap/ic_launcher');

  var initializationSettingsIOS = const IOSInitializationSettings(
    requestSoundPermission: true,
    requestBadgePermission: true,
    requestAlertPermission: true,
  );

  flutterLocalNotificationsPlugin = FlutterLocalNotificationsPlugin();

  await flutterLocalNotificationsPlugin
      .resolvePlatformSpecificImplementation<
          AndroidFlutterLocalNotificationsPlugin>()
      ?.createNotificationChannel(channel);

  var initializationSettings = InitializationSettings(
      android: initializationSettingsAndroid, iOS: initializationSettingsIOS);

  await flutterLocalNotificationsPlugin.initialize(
    initializationSettings,
  );

  await FirebaseMessaging.instance.setForegroundNotificationPresentationOptions(
    alert: true,
    badge: true,
    sound: true,
  );
}
