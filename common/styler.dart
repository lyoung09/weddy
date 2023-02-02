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
import 'package:flutter/material.dart';
import 'package:weddynew/common/consts.dart';
import 'package:iconsax/iconsax.dart';

class Styler {
  final Color underlineColor = const Color(0xFFcccccc);
  final Color tabScreenBackgroundColor =
      const Color.fromARGB(255, 255, 238, 239);

  final Icon floatingButtonAddIcon = const Icon(
    Iconsax.save_add,
    color: Colors.deepOrangeAccent,
  );

  final Icon floatingButtonDeleteIcon = const Icon(
    Iconsax.save_remove,
    color: Colors.deepOrangeAccent,
  );

  final Icon floatingButtonShowIcon = const Icon(
    Iconsax.category,
    color: Colors.deepOrangeAccent,
  );

  final Divider listDivider = const Divider(
      height: 2, indent: 10, endIndent: 10, color: Color(0xFFc6c6c6));

  // Defines text style
  final TextStyle authHeaderTextStyle = const TextStyle(
      color: Color(0xFFf99697), fontSize: 22, fontWeight: FontWeight.bold);

  final TextStyle checkBoxTextStyle = const TextStyle(
      color: Colors.blueGrey, fontSize: 14, fontWeight: FontWeight.bold);

  final TextStyle buttonTextStyle = const TextStyle(
      fontFamily: appFontFamily,
      fontSize: 14,
      color: Colors.white,
      fontWeight: FontWeight.bold);

  final TextStyle tabAppbarTitleStyle = const TextStyle(
      fontFamily: appFontFamily,
      fontWeight: FontWeight.bold,
      fontSize: 20,
      color: Color(0xFFeb6052));

  final TextStyle timelineGroupTitleStyle = const TextStyle(
      fontFamily: appFontFamily,
      color: Colors.white,
      fontSize: 18,
      fontWeight: FontWeight.bold);

  final TextStyle timelineGroupSubTitleStyle = const TextStyle(
      fontFamily: appFontFamily,
      color: Colors.black38,
      fontSize: 16,
      fontWeight: FontWeight.bold);
}
