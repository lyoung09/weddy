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
import 'package:iconsax/iconsax.dart';
import 'package:weddy_ceres/common/styler.dart';

class WidgetFactory {
  final Styler styler = Styler();

  Widget createReturnToBackButton(context) {
    return Center(
      child: GestureDetector(
        onTap: () {
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

  Widget createAuthScreenBackground(context) {
    return Container(
      height: MediaQuery.of(context).size.height / 3.5,
      decoration: BoxDecoration(
          gradient: LinearGradient(colors: [
        Theme.of(context).colorScheme.primary,
        Theme.of(context).colorScheme.secondary
      ], begin: Alignment.topLeft, end: Alignment.bottomRight)),
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
          const SizedBox(height: 10),
        ]));
  }

  PreferredSizeWidget createDefaultAppBar(context, {required title}) {
    return AppBar(
      title: AutoSizeText(
        title,
        style: Theme.of(context).textTheme.headline1,
      ),
      bottom: PreferredSize(
          preferredSize: const Size.fromHeight(1.0),
          child: Container(
            color: Colors.white,
            height: 1.0,
          )),
    );
  }

  AppBar createEmptyAppBar() {
    return AppBar(
      toolbarHeight: 0,
      elevation: 0,
      backgroundColor: Colors.white,
    );
  }

  Widget createDefaultTextField(
    context, {
    Widget? suffix,
    bool passwordField = false,
    required TextEditingController textEditingController,
    required String labelText,
  }) {
    return TextField(
      obscureText: passwordField,
      decoration: InputDecoration(
        focusedBorder: const UnderlineInputBorder(
            borderSide: BorderSide(color: Colors.grey)),
        enabledBorder: UnderlineInputBorder(
          borderSide: BorderSide(color: styler.underlineColor),
        ),
        suffixIcon: suffix,
        labelText: labelText,
        labelStyle: Theme.of(context).textTheme.subtitle1,
      ),
      keyboardType: TextInputType.text,
      controller: textEditingController,
      style: const TextStyle(color: Colors.grey),
    );
  }

  Widget createPasswordTextField(
      {required textEditController,
      required Function onPressed,
      required String labelText,
      required String hintText,
      required Color iconColor}) {
    return TextField(
      decoration: InputDecoration(
        suffix: IconButton(
          icon: Icon(color: iconColor, size: 22, Icons.search),
          onPressed: onPressed as void Function(),
        ),
        focusedBorder: const UnderlineInputBorder(
            borderSide: BorderSide(color: Colors.lightBlueAccent, width: 2.0)),
        enabledBorder: const UnderlineInputBorder(
          borderSide: BorderSide(color: Color(0xFFcccccc)),
        ),
        labelText: labelText,
        labelStyle: const TextStyle(color: Colors.blueGrey),
      ),
      keyboardType: TextInputType.text,
      controller: textEditController,
      style: const TextStyle(color: Colors.grey),
    );
  }

  Widget createTextButton({
    required String text,
    Color? textColor = Colors.lightBlue,
    double? fontSize = 16,
    required Function onPressed,
  }) {
    return GestureDetector(
      onTap: onPressed as void Function(),
      child: AutoSizeText(text,
          style: TextStyle(
              color: textColor,
              fontSize: fontSize,
              fontWeight: FontWeight.bold)),
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
      required Widget value}) {
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
              width: MediaQuery.of(context).size.width / 5,
              child: AutoSizeText(title,
                  style: Theme.of(context).textTheme.bodyText2))
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
      required Color textColor,
      required Color backgroundColor}) {
    return Container(
        margin: const EdgeInsets.all(2),
        padding: const EdgeInsets.all(2),
        decoration: BoxDecoration(
            color: Colors.transparent, borderRadius: BorderRadius.circular(10)),
        child: AutoSizeText(title,
            style: TextStyle(
                color: textColor, fontSize: 14, fontWeight: FontWeight.bold)));
  }

  Widget createDefaultButton(context,
      {Color iconColor = Colors.white,
      required String text,
      required Function onPressed,
      required IconData icon}) {
    return ElevatedButton.icon(
      style: ButtonStyle(
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
              RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(18.0))),
          backgroundColor: MaterialStateProperty.resolveWith<Color>(
            (Set<MaterialState> states) {
              if (states.contains(MaterialState.pressed)) {
                return Theme.of(context).colorScheme.primary;
              } else if (states.contains(MaterialState.disabled)) {
                return Colors.grey;
              }
              return Theme.of(context).colorScheme.secondary;
            },
          ),
          padding: MaterialStateProperty.all(const EdgeInsets.all(10))),
      onPressed: onPressed as void Function(),
      label: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8),
        child: AutoSizeText(
          text,
          style: styler.buttonTextStyle,
          textAlign: TextAlign.center,
        ),
      ),
      icon: Icon(icon, color: iconColor),
    );
  }
}
