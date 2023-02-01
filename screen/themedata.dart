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
import 'package:weddy_ceres/common/consts.dart';

const Color primaryThemeColor = Color(0xFFeb6052);
const Color secondaryThemeColor = Color(0xFFf99697);

const ColorScheme customColorScheme = ColorScheme(
  primary: primaryThemeColor,
  secondary: secondaryThemeColor,
  surface: Colors.purpleAccent,
  background: Colors.white,
  error: Colors.amber,
  onPrimary: primaryThemeColor,
  onSecondary: secondaryThemeColor,
  onSurface: Colors.lightBlue,
  onBackground: Color(0xFF5499C7),
  onError: Colors.redAccent,
  brightness: Brightness.light,
);

ThemeData themeData = ThemeData(
    cardColor: Colors.white,
    fontFamily: appFontFamily,
    //cardTheme: CardTheme(),
    colorScheme: customColorScheme,
    appBarTheme: const AppBarTheme(
        backgroundColor: Colors.white,
        // This will be applied to the 'back' icon
        iconTheme: IconThemeData(color: secondaryThemeColor),
        // This will be applied to the action icon buttons that locates on the right side
        actionsIconTheme: IconThemeData(color: secondaryThemeColor),
        centerTitle: true,
        elevation: 1,
        titleTextStyle: TextStyle(
            fontSize: 20.0,
            color: secondaryThemeColor,
            fontWeight: FontWeight.bold)),
    unselectedWidgetColor: secondaryThemeColor,
    toggleableActiveColor: primaryThemeColor,
    textTheme: const TextTheme(
      headline1: TextStyle(
          fontSize: 20.0,
          color: primaryThemeColor,
          fontWeight: FontWeight.bold),
      headline2: TextStyle(
          fontSize: 18.0,
          color: secondaryThemeColor,
          fontWeight: FontWeight.bold),
      headline3: TextStyle(
          fontSize: 16.0, color: Colors.black54, fontWeight: FontWeight.bold),
      headline4: TextStyle(
          fontSize: 18.0,
          color: Color(0xFF005666),
          fontWeight: FontWeight.bold),
      headline5: TextStyle(
          fontSize: 14.0,
          color: Color(0xFF005666),
          fontWeight: FontWeight.bold),
      headline6: TextStyle(
          fontSize: 16.0, color: Colors.redAccent, fontWeight: FontWeight.bold),
      bodyText1: TextStyle(
          fontSize: 18.0, color: Colors.black54, fontWeight: FontWeight.bold),
      bodyText2: TextStyle(
        fontSize: 14.0,
        color: Colors.blueGrey,
        fontWeight: FontWeight.bold,
      ),
      subtitle1: TextStyle(
        fontSize: 14.0,
        color: Colors.grey,
        fontWeight: FontWeight.bold,
      ),
      subtitle2: TextStyle(
        fontSize: 12.0,
        color: Color(0xFF005666),
      ),
      // used the price
      caption: TextStyle(
          fontSize: 14.0,
          color: Color(0xFF5499C7),
          fontWeight: FontWeight.bold),
    ),
    canvasColor: Colors.white);
