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
import 'package:intl/intl.dart';
import 'dart:math';
import 'dart:core';

class LocalUtils {
  static int generateUserUUID() {
    int time = DateTime.now().millisecondsSinceEpoch;
    Random random = Random(time);

    return (random.nextDouble() * time).floor();
  }

  static String getCurrentDateTime() {
    DateTime now = DateTime.now().toLocal();
    return '${now.year}-${now.month.toString().padLeft(2, '0')}-${now.day.toString().padLeft(2, '0')} ${now.hour.toString().padLeft(2, '0')}:${now.minute.toString().padLeft(2, '0')}:${now.second.toString().padLeft(2, '0')}';
  }

  static String getCurrentDate() {
    DateTime now = DateTime.now().toLocal();
    return '${now.year}-${now.month.toString().padLeft(2, '0')}-${now.day.toString().padLeft(2, '0')}';
  }

  static String getNumberText(String prefix, int number) {
    if (prefix.isEmpty) {
      return NumberFormat.decimalPattern().format(number);
    }

    return '$prefix ${NumberFormat.decimalPattern().format(number)}';
  }

  static String getPriceText(int number) {
    return number < 10000
        ? '가격 ${NumberFormat.decimalPattern().format(number ~/ 1000)}천원'
        : '가격 ${NumberFormat.decimalPattern().format(number ~/ 10000)}만원';
  }

  static String getCurrentTime() {
    DateTime now = DateTime.now().toLocal();
    return '${now.hour.toString().padLeft(2, '0')}:${now.minute.toString().padLeft(2, '0')}:${now.second.toString().padLeft(2, '0')}';
  }

  static bool validateMobileNumber(String value) {
    String patttern = r'(^(?:[+0]9)?[0-9]{10,15}$)';
    RegExp regExp = RegExp(patttern);
    if (value.length < 8) {
      return false;
    } else if (!regExp.hasMatch(value)) {
      return false;
    } else {
      return true;
    }
  }

  static bool validateEmail(String value) {
    String pattern =
        r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';
    RegExp regex = RegExp(pattern);
    if (!regex.hasMatch(value)) {
      return false;
    } else {
      return true;
    }
  }

  static String removeDecimalZeroFormat(double v) {
    NumberFormat formatter = NumberFormat();
    formatter.minimumFractionDigits = 0;
    formatter.maximumFractionDigits = 2;
    return formatter.format(v);
  }

  static String formatTime(int timeNum) {
    return timeNum < 10 ? '0$timeNum' : timeNum.toString();
  }
}
