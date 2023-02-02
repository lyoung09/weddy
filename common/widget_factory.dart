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
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:iconsax/iconsax.dart';
import 'package:weddynew/common/styler.dart';

import '../resources/Colors.dart';
import '../resources/Images.dart';
import '../resources/Text.dart';
import '../utils/custom_text_Field.dart';

class WidgetFactory {
  WidgetFactory();

  final Styler styler = Styler();

  Widget createReturnToBackButton(context, {GestureTapCallback? onTap}) {
    return Center(
      child: GestureDetector(
        onTap: onTap ??
            () {
              Navigator.pop(context);
            },
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Icon(Iconsax.arrow_left,
                size: 20, color: Theme.of(context).colorScheme.secondary),
            AutoSizeText(
              '이전 화면으로 돌아가기',
              style: TextStyle(
                  color: Theme.of(context).colorScheme.secondary,
                  fontWeight: FontWeight.w700),
            )
          ],
        ),
      ),
    );
  }

  Widget createHeaderCard(context, {required Widget widget}) {
    return Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        elevation: 0,
        margin: const EdgeInsets.all(10),
        color: Colors.white,
        child: Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
          Padding(
              padding: const EdgeInsets.all(6),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: const [
                  Icon(size: 16, color: Colors.lightBlue, Iconsax.star),
                ],
              )),
          const SizedBox(height: 4),
          widget,
          const SizedBox(height: 26),
        ]));
  }

  PreferredSizeWidget createDefaultAppBar(context,
      {String? title, bool visibleBack = true}) {
    return PreferredSize(
        preferredSize: const Size.fromHeight(52),
        child: AppBar(
          leading: visibleBack
              ? IconButton(
                  icon: Images.getIcon('icon_arrow', color: ColorItems.salmon),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                )
              : null,
          title: title != null
              ? AutoSizeText(
                  title,
                  style: Theme.of(context).textTheme.headlineSmall,
                )
              : null,
          elevation: 0,
        ));
  }

  PreferredSizeWidget createEmptyAppBar(context) {
    return AppBar(
      toolbarHeight: 0,
      elevation: 0,
      backgroundColor: Colors.white,
    );
  }

  Widget createDefaultTextField(context,
      {Widget? suffix,
      Widget? suffixWidget,
      String? hintText,
      String? suffixText,
      String? errorText,
      bool passwordField = false,
      TextInputType inputType = TextInputType.text,
      List<TextInputFormatter>? inputFormatters,
      ValueChanged<String>? onChanged,
      required TextEditingController textEditingController,
      String? labelText,
      bool disable = false,
      GestureTapCallback? onTap}) {
    return SizedBox(
        height: 42,
        child: TextField(
            obscureText: passwordField,
            decoration: InputDecoration(
                contentPadding: const EdgeInsets.only(left: 18, right: 18),
                focusedBorder: const OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(18)),
                    borderSide:
                        BorderSide(color: ColorItems.secondarySpaceCadet)),
                enabledBorder: const OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(18)),
                    borderSide:
                        BorderSide(color: ColorItems.secondarySpanishGray)),
                suffixText: suffixText,
                suffixIcon: suffix != null
                    ? Padding(padding: const EdgeInsets.all(9), child: suffix)
                    : null,
                suffix: suffixWidget,
                labelText: labelText,
                labelStyle: TextItems.title4
                    .copyWith(color: ColorItems.secondarySpanishGray),
                hintText: hintText,
                hintStyle: TextItems.title4
                    .copyWith(color: ColorItems.secondarySpanishGray),
                errorText: errorText),
            keyboardType: inputType,
            inputFormatters: inputFormatters,
            controller: textEditingController,
            style: TextItems.title4,
            onChanged: onChanged,
            onTap: onTap,
            focusNode: disable ? AlwaysDisabledFocusNode() : null,
            enableInteractiveSelection: !disable));
  }

  Widget createPasswordTextField(context,
      {required bool passwordField,
      required TextEditingController textEditingController,
      required VoidCallback onIconPressed,
      String? labelText,
      String? hintText}) {
    Widget icon;
    if (passwordField) {
      icon = Images.getIcon('icon_password_hide',
          color: ColorItems.secondarySpanishGray);
    } else {
      icon = Images.getIcon('icon_password_show', color: ColorItems.salmon);
    }

    return createDefaultTextField(context,
        suffix: IconButton(
            padding: const EdgeInsets.all(0),
            icon: icon,
            onPressed: onIconPressed),
        passwordField: passwordField,
        labelText: labelText,
        hintText: hintText,
        textEditingController: textEditingController);
  }

  Widget createDisabledTextField(
    context, {
    Widget? suffix,
    GestureTapCallback? onTap,
    ValueChanged<String>? onChanged,
    required TextEditingController textEditingController,
    required String labelText,
  }) {
    return createDefaultTextField(context,
        labelText: labelText,
        textEditingController: textEditingController,
        suffix: suffix,
        onTap: onTap,
        disable: true);
  }

  Widget createTextButton({
    required String text,
    Color textColor = ColorItems.spaceCadet,
    double fontSize = TextSize.heading4,
    bool bold = true,
    TextStyle? style,
    required Function onPressed,
  }) {
    return GestureDetector(
      onTap: onPressed as void Function(),
      child: AutoSizeText(text,
          style: style ??
              TextItems.heading4.copyWith(
                  color: textColor,
                  fontSize: fontSize,
                  fontWeight:
                      bold == true ? FontWeight.bold : FontWeight.normal)),
    );
  }

  Widget createDefaultCheckbox(
      {required text, required value, required Function(bool?)? onChanged}) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Checkbox(
          shape: const CircleBorder(),
          value: value,
          onChanged: onChanged,
        ),
        AutoSizeText(text, style: styler.checkBoxTextStyle)
      ],
    );
  }

  Widget createIconLabelWithValue(context,
      {required String title,
      required IconData icon,
      required Color iconColor,
      required Widget value,
      bool wrapWidth = false}) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Icon(
          size: 12,
          icon,
          color: iconColor,
        ),
        const SizedBox(
          width: 2,
        ),
        Wrap(children: [
          SizedBox(
              width: wrapWidth ? null : MediaQuery.of(context).size.width / 5,
              child: AutoSizeText(title,
                  style: Theme.of(context).textTheme.bodyMedium))
        ]),
        const SizedBox(width: 10),
        Container(child: value),
      ],
    );
  }

  Widget createChip(
      {required String title,
      required Color textColor,
      required Color backgroundColor}) {
    return Chip(
        elevation: 2,
        padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(8))),
        backgroundColor: backgroundColor,
        label: AutoSizeText(title,
            style: TextStyle(
                color: textColor, fontSize: 12, fontWeight: FontWeight.bold)));
  }

  Widget createStatusLabel(
      {required String title,
      Color? textColor,
      Color? backgroundColor,
      Color? borderColor}) {
    return Container(
        margin: const EdgeInsets.all(2),
        padding: const EdgeInsets.all(2),
        decoration: BoxDecoration(
            color: backgroundColor,
            border: borderColor != null
                ? Border.all(width: 1, color: borderColor)
                : null,
            borderRadius: BorderRadius.circular(10)),
        child: AutoSizeText(title,
            style: TextItems.body2
                .copyWith(color: textColor ?? ColorItems.secondarySpaceCadet)));
  }

  Widget createDefaultButton(context,
      {required String text,
      required Function? onPressed,
      Color? textColor,
      Color? background,
      Color? border,
      Color? iconColor = Colors.white,
      IconData? icon}) {
    ButtonStyle style = ButtonStyle(
        elevation: MaterialStateProperty.all(0),
        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(100))),
        side: MaterialStateProperty.resolveWith<BorderSide?>((states) {
          if (border == null) {
            return null;
          } else {
            return BorderSide(color: border);
          }
        }),
        backgroundColor: MaterialStateProperty.resolveWith<Color>(
          (Set<MaterialState> states) {
            if (states.contains(MaterialState.pressed)) {
              return background ?? Theme.of(context).colorScheme.primary;
            } else if (states.contains(MaterialState.disabled)) {
              return ColorItems.mysticRose;
            }
            return background ?? Theme.of(context).colorScheme.primary;
          },
        ),
        padding: MaterialStateProperty.all(const EdgeInsets.all(14)));
    Widget label = Row(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        AutoSizeText(
          text,
          style:
              TextItems.heading3.copyWith(color: textColor ?? ColorItems.white),
          textAlign: TextAlign.center,
        )
      ],
    );

    if (icon == null) {
      return ElevatedButton(
          style: style,
          onPressed: onPressed != null ? onPressed as void Function() : null,
          child: label);
    } else {
      return ElevatedButton.icon(
        style: style,
        onPressed: onPressed != null ? onPressed as void Function() : null,
        label: label,
        icon: Icon(icon, color: iconColor),
      );
    }
  }

  Widget createDefaultTextButton(context,
          {required String text,
          required Function? onPressed,
          Color? backgroundColor}) =>
      TextButton(
          style: ButtonStyle(
              shape: MaterialStateProperty.all(RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(100.0),
              )),
              backgroundColor: MaterialStateProperty.resolveWith<Color>(
                  (Set<MaterialState> states) =>
                      states.contains(MaterialState.disabled)
                          ? ColorItems.mysticRose
                          : (backgroundColor ??
                              Theme.of(context).colorScheme.primary)),
              overlayColor: MaterialStateProperty.all(Colors.transparent)),
          onPressed: onPressed != null ? onPressed as void Function() : null,
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 14.0),
            child: AutoSizeText(
              text,
              style: TextItems.heading3.copyWith(color: ColorItems.white),
              textAlign: TextAlign.center,
            ),
          ));

  Widget createProgressIndicator() => const Center(
        child: CircularProgressIndicator(),
      );

  Widget createBottomSheetContainer(BuildContext context, Widget? child,
          {EdgeInsetsGeometry? margin, double? height}) =>
      Positioned(
          width: MediaQuery.of(context).size.width,
          height: height,
          bottom: 0,
          child: Container(
            decoration: const BoxDecoration(
                color: ColorItems.white,
                borderRadius: BorderRadius.vertical(top: Radius.circular(44)),
                boxShadow: [
                  BoxShadow(
                    color: ColorItems.shadow,
                    offset: Offset(0, -5),
                    blurRadius: 30,
                  )
                ]),
            child: Container(
                margin: margin ?? const EdgeInsets.fromLTRB(36, 16, 36, 16),
                child: child),
          ));
}
