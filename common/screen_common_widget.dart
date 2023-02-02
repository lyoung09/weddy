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

import '../resources/Colors.dart';

class ScreenCommonWidget {
  Future showProgressDialog(context) {
    return showDialog(
        context: context,
        barrierDismissible: false,
        builder: (BuildContext context) {
          return WillPopScope(
            onWillPop: () {
              return Future.value(false);
            },
            child: const Center(
              child: CircularProgressIndicator(),
            ),
          );
        });
  }

  Widget createBottomSheetLine() {
    return Center(
        child: Container(
      margin: const EdgeInsets.only(top: 12, bottom: 12),
      width: 40,
      height: 4,
      decoration: BoxDecoration(
          color: Colors.grey[500], borderRadius: BorderRadius.circular(10)),
    ));
  }

  void showBottomSheet(context, {required Widget contents, bool visibleTopController = true, String? title}) {
    showModalBottomSheet<void>(
      context: context,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(30), topRight: Radius.circular(30)),
      ),
      builder: (BuildContext context) {
        Widget child = contents;

        if (title != null && title.isNotEmpty) {
          child = Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              AutoSizeText(title, style: Theme.of(context).textTheme.headline2),
              const SizedBox(height: 16),
              contents
            ],
          );
        }
        return Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            visibleTopController
            ? Container(
              width: 52,
              height: 4,
              margin: const EdgeInsets.symmetric(vertical: 10.0),
              decoration: const BoxDecoration(
                color: ColorItems.secondarySpanishGray,
                borderRadius: BorderRadius.all(Radius.circular(3)),
              ),
            )
            : const SizedBox(height: 19),
            Padding(padding: const EdgeInsets.only(left: 24, right: 24, bottom: 30), child: child),
          ],
        );
      },
    );
  }

  void showSnackBar(context, message) {
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
        backgroundColor: Colors.amber,
        content: AutoSizeText(
          message,
          textAlign: TextAlign.center,
        )));
  }

  Widget buildProgressIndicator(lastData) {
    if (lastData == false) {
      return Padding(
        padding: const EdgeInsets.all(8.0),
        child: Center(
          child: Opacity(
            opacity: 1,
            child: Container(
              height: 20,
              width: 20,
              margin: const EdgeInsets.all(5),
              child: const CircularProgressIndicator(
                valueColor: AlwaysStoppedAnimation<Color>(Colors.blueAccent),
                strokeWidth: 2.0,
              ),
            ),
          ),
        ),
      );
    } else {
      return const SizedBox.shrink();
    }
  }

  Future showConfirmDialog(context,
      {required message,
      String? icon,
      String? buttonText,
      Color? buttonColor,
      Function? onConfirm}) {
    // set up the buttons
    Widget cancelButton = TextButton(
        onPressed: () {
          Navigator.pop(context, false);
        },
        child: const Text('취소'));
    Widget okButton = TextButton(
        onPressed: () {
          Navigator.pop(context, true);
        },
        child: const Text("확인"));

    // set up the AlertDialog
    AlertDialog alert = AlertDialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      title: const Text(
        '확인',
        style: TextStyle(fontSize: 18),
      ),
      content: Text(message, style: const TextStyle(fontSize: 14)),
      actions: [
        cancelButton,
        okButton,
      ],
    );

    // show the dialog
    return showDialog(
      context: context,
      builder: (BuildContext context) {
        return alert;
      },
    );
  }
}
