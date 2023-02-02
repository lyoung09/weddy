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
import 'package:weddynew/resources/Colors.dart';
import 'package:weddynew/resources/Text.dart';

const ColorScheme customColorScheme = ColorScheme(
  primary: ColorItems.primary,
  secondary: ColorItems.secondarySpaceCadet,
  surface: ColorItems.white,
  background: ColorItems.white,
  error: ColorItems.imperialRed,
  onPrimary: ColorItems.mysticRose,
  onSecondary: ColorItems.mysticRose,
  onSurface: ColorItems.mysticRose,
  onBackground: ColorItems.mysticRose,
  onError: ColorItems.mysticRose,
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
        iconTheme: IconThemeData(color: ColorItems.primary),
        // This will be applied to the action icon buttons that locates on the right side
        actionsIconTheme: IconThemeData(color: ColorItems.primary),
        centerTitle: true,
        elevation: 1,
        titleTextStyle: TextItems.heading3),
    unselectedWidgetColor: ColorItems.secondarySpanishGray,
    textTheme: const TextTheme(
      headlineLarge: TextItems.heading1,
      headlineMedium: TextItems.heading2,
      headlineSmall: TextItems.heading3,
      titleLarge: TextItems.title1,
      titleMedium: TextItems.title2,
      titleSmall: TextItems.title3,
      bodyLarge: TextItems.body1,
      bodyMedium: TextItems.body2,
      bodySmall: TextItems.body3,
      labelLarge: TextItems.title4,
      labelMedium: TextItems.title5,
      labelSmall: TextItems.title6,
    ),
    canvasColor: ColorItems.white);
