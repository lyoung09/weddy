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

import 'package:weddynew/common/widget_factory.dart';
import 'package:weddynew/model/vendor_service_detail.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:auto_size_text/auto_size_text.dart';

class CallCenterScreen extends StatefulWidget {
  const CallCenterScreen({Key? key}) : super(key: key);

  @override
  CallCenterScreenState createState() => CallCenterScreenState();
}

class CallCenterScreenState extends State<CallCenterScreen> {
  final widgetFactory = WidgetFactory();

  late VendorServiceDetail serviceProductDetail;

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    // add call and email
    return Scaffold(
      appBar: widgetFactory.createDefaultAppBar(context, title: '고객센터'),
      backgroundColor: Colors.white,
      body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Center(
                child: ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                shape: const CircleBorder(),
                padding: const EdgeInsets.all(20),
                primary: Colors.lightBlue,
                onPrimary: Colors.white, // <-- Splash color
              ),
              child: const Icon(Icons.phone, size: 48, color: Colors.white),
            )),
            const SizedBox(height: 10),
            const AutoSizeText('버튼을 누르시면 고객센터로 연결됩니다'),
          ]),
    );
  }

  Future<void> callPhone() async {
    final Uri launchUri = Uri(
      scheme: 'tel',
      path: '025488584',
    );

    if (!await launchUrl(launchUri)) {
      throw '해당 번호 025488584 연결에 실패했습니다';
    }
  }
}
