import 'package:flutter/material.dart';
import 'package:package_info_plus/package_info_plus.dart';

class MyPackage {
  Future<String> myPackageVersion() async {
    PackageInfo packageInfo = await PackageInfo.fromPlatform();
    debugPrint(packageInfo.version.toString() + "ttttt");
    return packageInfo.version;
  }
}
