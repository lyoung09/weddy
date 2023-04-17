import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class CustomString {
  String pirceToString(int price) {
    String t = price.toString();
    if (t.length > 3) {
      var formatter = NumberFormat('###,000');
      t = formatter.format(price);

      return t + '원';
    } else {
      return t + '원';
    }
  }

  String pirceToStringKorean(int price) {
    String t = price.toString();
    if (t.length > 5) {
      t = NumberFormat.compactCurrency(
        decimalDigits: 2,
        locale: 'ko_KR',
      ).format(price).substring(3);
    } else {
      return t + '원';
    }
    return t + '원';
  }
}
