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
import 'package:iconsax/iconsax.dart';
import 'package:weddynew/screen/auth/signin/signin_page.dart';
import 'package:weddynew/screen/drawer/call_center.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  ProfileScreenState createState() => ProfileScreenState();
}

class ProfileScreenState extends State<ProfileScreen> {
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
    // Add logout, withdraw
    return Scaffold(
        appBar: widgetFactory.createDefaultAppBar(context, title: '내 프로필'),
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
            child: Column(children: [
          const SizedBox(height: 10),
          buildHeaderWidget(),
          ListTile(
            // todo logout move to profile
            title: widgetFactory.createDefaultButton(context,
                icon: Iconsax.call,
                text: '고객센터',
                onPressed: () => {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const CallCenterScreen()))
                    }),
          ),
          ListTile(
            // todo logout move to profile
            title: widgetFactory.createDefaultButton(context,
                icon: Iconsax.logout,
                text: '로그아웃',
                onPressed: () => {
                      Navigator.pushReplacement(context,
                          MaterialPageRoute(builder: (context) => SignInPage()))
                    }),
          ),
          ListTile(
            // todo logout move to profile
            title: widgetFactory.createDefaultButton(context,
                icon: Iconsax.security_user,
                text: '회원탈퇴',
                onPressed: () => {
                      // 확인 팝업 후 탈퇴
                      Navigator.pushReplacement(context,
                          MaterialPageRoute(builder: (context) => SignInPage()))
                    }),
          ),
        ])));
  }

  Widget buildHeaderWidget() {
    return widgetFactory.createHeaderCard(context,
        widget:
            Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
          Container(
            padding: const EdgeInsets.all(6),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                CircleAvatar(
                  backgroundColor: Colors.white,
                  maxRadius: 64,
                  backgroundImage: AssetImage('assets/images/woman.png'),
                ),
                SizedBox(width: 10),
                Text("이혜리")
              ],
            ),
          ),
        ]));
  }
}
