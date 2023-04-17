// ignore_for_file: public_member_api_docs, sort_constructors_first
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
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:device_info_plus/device_info_plus.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:weddynew/apis/category/category_model.dart';
import 'package:weddynew/di/di_module.dart';
import 'package:weddynew/screen/app/WeddyApp.dart';
import 'package:weddynew/screen/auth/forgot/detail/change_password.dart';
import 'package:weddynew/screen/auth/forgot/detail/show_id.dart';
import 'package:weddynew/screen/auth/forgot/forgot_account.dart';
import 'package:weddynew/screen/auth/forgot/forgot_password.dart';
import 'package:weddynew/screen/auth/signin/signin_page.dart';
import 'package:weddynew/screen/auth/signup/signup_page.dart';
import 'package:weddynew/screen/auth/verification/pin_code_verification_page.dart';
import 'package:weddynew/screen/do_product/youtube_player_page.dart';
import 'package:weddynew/screen/home/category/bloc/category_bloc.dart';
import 'package:weddynew/screen/home/category/category_page.dart';
import 'package:weddynew/screen/home/category/detail/vendor_detail_page.dart';
import 'package:weddynew/screen/home/category/like/like_page.dart';
import 'package:weddynew/screen/home/category/list/vendor_list_page.dart';
import 'package:weddynew/screen/home/category/search/search_screen.dart';
import 'package:weddynew/screen/home/category/search/suggestion_screen.dart';
import 'package:weddynew/screen/home/category/weddinghall/weddinghall_detail/weddinghall_detail_page.dart';
import 'package:weddynew/screen/home/home.dart';
import 'package:weddynew/screen/home/dress/detail/dress_detail_page.dart';
import 'package:weddynew/screen/profile/bloc/profile_display_type.dart';
import 'package:weddynew/screen/profile/update/profile_update_page.dart';
import 'package:weddynew/screen/themedata.dart';
import 'package:weddynew/utils/horizontal_swiper.dart';
import 'package:weddynew/utils/logger.dart';
import 'apis/biz/app_biz.pb.dart';
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
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    name: 'weddy',
    options: DefaultFirebaseOptions.currentPlatform,
  );

  await initFirebase();
  await initGetIt();
  await Hive.initFlutter(); // Directory Initialize

  final FirebaseAnalytics analytics = getIt.get();
  final FirebaseAnalyticsObserver observer = getIt.get();

  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
    statusBarColor: Colors.transparent,
    statusBarIconBrightness: Brightness.dark,
  ));

  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp])
      .then((_) {
    runApp(
      MaterialApp(
        navigatorKey: GlobalVariable.navigatorState,
        locale: const Locale("ko", "KR"),
        localizationsDelegates: const [
          GlobalMaterialLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate
        ],
        navigatorObservers: <NavigatorObserver>[observer],
        debugShowCheckedModeBanner: kDebugMode,
        title: 'Weddy-Mobile',
        theme: themeData,
        routes: {
          '/': (context) => const WeddyApp(),
          // HomePage.routeName: (context) => HomePage(),
          SignInPage.routeName: (context) => SignInPage(),
          SignupPage.routeName: (context) => SignupPage(),
          ForgotAccountPage.routeName: (context) => ForgotAccountPage(),
          ForgotPasswordPage.routeName: (context) => ForgotPasswordPage(),
          CategoryPage.routeName: (context) => CategoryPage(),
          LikeVendorPage.routeName: (context) => LikeVendorPage(),
          SuggestionScreen.routeName: (context) => const SuggestionScreen(),

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
            case HomePage.routeName:
              {
                widget = HomePage(index: settings.arguments as int);
                break;
              }
            case ShowIdScreen.routeName:
              {
                widget = ShowIdScreen(id: settings.arguments as String);
                break;
              }
            case ChangePasswordScreen.routeName:
              {
                widget = ChangePasswordScreen(id: settings.arguments as String);
                break;
              }

            case PinCodeVerificationPage.routeName:
              {
                widget = PinCodeVerificationPage(
                    args: settings.arguments as PinCodeVerificationArgs);
                break;
              }
            case ProfileUpdatePage.routeName:
              {
                ProfileUpdatePage profileDetail =
                    settings.arguments as ProfileUpdatePage;

                widget = ProfileUpdatePage(
                  displayType: profileDetail.displayType,
                  args: profileDetail.args,
                );
                break;
              }
            case DressDetailPage.routeName:
              {
                widget =
                    DressDetailPage(item: settings.arguments as ContentsItem);
                break;
              }
            case CategoryDetail.routeName:
              {
                CategoryDetail categoryDetail =
                    settings.arguments as CategoryDetail;
                widget = CategoryDetail(
                    popIndex: categoryDetail.popIndex,
                    indexId: categoryDetail.indexId,
                    category: categoryDetail.category);
                break;
              }
            case WeddingHallDetail.routeName:
              {
                WeddingHallDetail weddingHallDetail =
                    settings.arguments as WeddingHallDetail;
                widget = WeddingHallDetail(
                    popIndex: weddingHallDetail.popIndex,
                    indexId: weddingHallDetail.indexId,
                    category: weddingHallDetail.category);
                break;
              }
            case YoutubePlayerPage.routeName:
              {
                widget =
                    YoutubePlayerPage(videoId: settings.arguments as String);
                break;
              }
            case SearchScreen.routeName:
              {
                SearchScreen searchScreen = settings.arguments as SearchScreen;

                widget = SearchScreen(
                  blocContext: searchScreen.blocContext,
                  state: searchScreen.state,
                );
                break;
              }
            case HorizontalSwiper.routeName:
              {
                HorizontalSwiper horizontalSwiper =
                    settings.arguments as HorizontalSwiper;

                widget = HorizontalSwiper(
                  images: horizontalSwiper.images,
                  name: horizontalSwiper.name,
                );
                break;
              }
            case VendorListPage.routeName:
              {
                widget = VendorListPage(
                  vendorCategory: settings.arguments as CategoryModel,
                );
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
      ),
    );
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

class DetailArguments {
  final List<String> images;
  final String name;
  DetailArguments({
    required this.images,
    required this.name,
  });
}
