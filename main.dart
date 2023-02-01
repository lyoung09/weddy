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

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:device_info_plus/device_info_plus.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:weddy_ceres/screen/auth/signin.dart';
import 'package:weddy_ceres/screen/bottom_navigation.dart';
import 'package:weddy_ceres/screen/themedata.dart';
import 'model/mobile_device.dart';

import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    name: 'weddy',
    options: DefaultFirebaseOptions.currentPlatform,
  );

  MobileDevice mobileDevice =
      MobileDevice(isAndroid: false, uuid: '', isIos: false);
  // this function makes application always run in portrait mode
  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
    statusBarColor: Colors.transparent,
    statusBarIconBrightness: Brightness.dark,
  ));
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp])
      .then((_) {
    runApp(MaterialApp(
      debugShowCheckedModeBanner: true,
      title: 'Weddy-Mobile',
      theme: themeData,
      routes: {
        '/': (context) => MyApp(mobileDevice: mobileDevice),
        //'/': (context) => BottomNavigationPage(),
      },
    ));
  });
}

// ignore: must_be_immutable
class MyApp extends StatefulWidget {
  MobileDevice mobileDevice;
  MyApp({Key? key, required this.mobileDevice}) : super(key: key);

  @override
  MyAppState createState() => MyAppState();
}

class MyAppState extends State<MyApp> {
  static final DeviceInfoPlugin deviceInfoPlugin = DeviceInfoPlugin();
  Future<SharedPreferences> sharedPreferences = SharedPreferences.getInstance();

  @override
  void initState() {
    super.initState();
    checkUserId();
    initPlatformState();
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: null,
        builder: (context, AsyncSnapshot snapshot) {
          // Show splash screen while waiting for app resources to load:
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Container(
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/images/splash.jpg'),
                    fit: BoxFit.cover,
                  ),
                ),
                child: const Center(
                  child: CircularProgressIndicator(),
                ));
          } else {
            // Loading is done, return the app:
            return const SigninScreen();
          }
        });
  }

  Future<void> checkUserId() async {}

  Future<void> initPlatformState() async {
    Map<String, dynamic> deviceMapData = <String, dynamic>{};
    String deviceId = '';

    try {
      if (Platform.isAndroid) {
        deviceMapData =
            readAndroidBuildData(await deviceInfoPlugin.androidInfo);
        deviceId = deviceMapData['androidInfo'];
      } else if (Platform.isIOS) {
        deviceMapData = readIosDeviceInfo(await deviceInfoPlugin.iosInfo);
        deviceId = deviceMapData['identifierForVendor'];
      }
    } on PlatformException {
      deviceMapData = <String, dynamic>{
        'Error:': 'Failed to get platform version.'
      };
    }

    if (!mounted) return;

    setState(() {
      widget.mobileDevice.isAndroid = Platform.isAndroid;
      widget.mobileDevice.isIos = Platform.isIOS;
      widget.mobileDevice.uuid = deviceId;
    });
  }

  Map<String, dynamic> readAndroidBuildData(AndroidDeviceInfo build) {
    return <String, dynamic>{
      'version.securityPatch': build.version.securityPatch,
      'version.sdkInt': build.version.sdkInt,
      'version.release': build.version.release,
      'version.previewSdkInt': build.version.previewSdkInt,
      'version.incremental': build.version.incremental,
      'version.codename': build.version.codename,
      'version.baseOS': build.version.baseOS,
      'board': build.board,
      'bootloader': build.bootloader,
      'brand': build.brand,
      'device': build.device,
      'display': build.display,
      'fingerprint': build.fingerprint,
      'hardware': build.hardware,
      'host': build.host,
      'id': build.id,
      'manufacturer': build.manufacturer,
      'model': build.model,
      'product': build.product,
      'supported32BitAbis': build.supported32BitAbis,
      'supported64BitAbis': build.supported64BitAbis,
      'supportedAbis': build.supportedAbis,
      'tags': build.tags,
      'type': build.type,
      'isPhysicalDevice': build.isPhysicalDevice,
      //'androidId': build.androidId,
      'systemFeatures': build.systemFeatures,
    };
  }

  Map<String, dynamic> readIosDeviceInfo(IosDeviceInfo data) {
    return <String, dynamic>{
      'name': data.name,
      'systemName': data.systemName,
      'systemVersion': data.systemVersion,
      'model': data.model,
      'localizedModel': data.localizedModel,
      'identifierForVendor': data.identifierForVendor,
      'isPhysicalDevice': data.isPhysicalDevice,
      'utsname.sysname:': data.utsname.sysname,
      'utsname.nodename:': data.utsname.nodename,
      'utsname.release:': data.utsname.release,
      'utsname.version:': data.utsname.version,
      'utsname.machine:': data.utsname.machine,
    };
  }
}
