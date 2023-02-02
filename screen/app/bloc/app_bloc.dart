import 'dart:io';

import 'package:android_id/android_id.dart';
import 'package:device_info_plus/device_info_plus.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';

import '../../../apis/preferences.dart';
import '../../../base/bloc/base_bloc.dart';
import '../../../base/bloc/bloc_state.dart';
import '../../../di/di_module.dart';
import '../../../main.dart';
import '../../../model/mobile_device.dart';
import '../../../repository/auth_repository.dart';
import '../../../utils/logger.dart';
import 'app_event.dart';
import 'app_state.dart';

class AppBloc extends BaseBloc<InitAppEvent, AppState> {
  AppBloc() : super(AppState()) {
    on<InitAppEvent>(_initApp);
  }

  final MobileDevice _mobileDevice = MobileDevice(isAndroid: false, uuid: '', isIos: false);
  final DeviceInfoPlugin _deviceInfoPlugin = DeviceInfoPlugin();
  final _androidIdPlugin = const AndroidId();
  final PreferencesCustom _preferences = getIt.get();

  final AuthRepository _authRepository = getIt.get();

  var _androidId = "Unknown";

  void _initApp(InitAppEvent event, Emitter<AppState> emit) async {
    await _initPlatformState();
    await _initFCMListener();
    await _updateUserProfile();
    emit(state.copyWith(status: BlocStatus.success, isLoggedIn: _preferences.accessToken.isNotEmpty));
  }

  Future<void> _initPlatformState() async {
    Map<String, dynamic> deviceMapData = <String, dynamic>{};
    String deviceId = '';

    try {
      if (Platform.isAndroid) {
        await _initAndroidId();
        deviceMapData =
            _readAndroidBuildData(await _deviceInfoPlugin.androidInfo);
        deviceId = _androidId;
      } else if (Platform.isIOS) {
        deviceMapData = _readIosDeviceInfo(await _deviceInfoPlugin.iosInfo);
        deviceId = deviceMapData['identifierForVendor'];
      }
    } on PlatformException {
      deviceMapData = <String, dynamic>{
        'Error:': 'Failed to get platform version.'
      };
    }

    _mobileDevice.isAndroid = Platform.isAndroid;
    _mobileDevice.isIos = Platform.isIOS;
    _mobileDevice.uuid = deviceId;

    _preferences.deviceId = deviceId;
  }

  Future<void> _initAndroidId() async {
    String androidId;
    // Platform messages may fail, so we use a try/catch PlatformException.
    // We also handle the message potentially returning null.
    try {
      androidId = await _androidIdPlugin.getId() ?? 'Unknown ID';
    } on PlatformException {
      androidId = 'Failed to get Android ID.';
    }

    // If the widget was removed from the tree while the asynchronous platform
    // message was in flight, we want to discard the reply rather than calling
    // setState to update our non-existent appearance.

    _androidId = androidId;
  }

  Future<void> _updateUserProfile() async {
    String accessToken = _preferences.accessToken;
    if (accessToken.isNotEmpty) {
      await _authRepository.getUserProfile();
    }
  }

  Map<String, dynamic> _readAndroidBuildData(AndroidDeviceInfo build) {
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
      'systemFeatures': build.systemFeatures,
    };
  }

  Future<void> _initFCMListener() async {
    FirebaseMessaging.onMessage.listen((RemoteMessage message) async {
      RemoteNotification? notification = message.notification;
      var androidNotiDetails = AndroidNotificationDetails(
        channel.id,
        channel.name,
        channelDescription: channel.description,
      );
      var iOSNotiDetails = const IOSNotificationDetails();
      var details =
      NotificationDetails(android: androidNotiDetails, iOS: iOSNotiDetails);
      if (notification != null) {
        flutterLocalNotificationsPlugin.show(
          notification.hashCode,
          notification.title,
          notification.body,
          details,
        );
      }
    });

    FirebaseMessaging.onMessageOpenedApp.listen((message) {
      Logger.d(message.toString());
    });

    String? token = await FirebaseMessaging.instance.getToken();
    Logger.d("$token", tag: "FCM TOKEN");
    if (token != null) {
      _preferences.pushToken = token;
    }
  }

  Map<String, dynamic> _readIosDeviceInfo(IosDeviceInfo data) {
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