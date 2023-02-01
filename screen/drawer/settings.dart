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

import 'package:weddy_ceres/common/widget_factory.dart';
import 'package:weddy_ceres/model/vendor_service_detail.dart';
import 'package:settings_ui/settings_ui.dart';
import 'package:iconsax/iconsax.dart';
import 'package:auto_size_text/auto_size_text.dart';

class SettingsScreen extends StatefulWidget {
  const SettingsScreen({Key? key}) : super(key: key);

  @override
  SettingsScreenState createState() => SettingsScreenState();
}

class SettingsScreenState extends State<SettingsScreen> {
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
    return Scaffold(
        appBar: widgetFactory.createDefaultAppBar(context, title: '앱 설정'),
        backgroundColor: Colors.white,
        body: SettingsList(
          sections: [
            SettingsSection(
              title: const AutoSizeText('설정'),
              tiles: <SettingsTile>[
                /*
                SettingsTile.navigation(
                  leading: const Icon(Iconsax.),
                  title: const AutoSizeText('Language'),
                  value: const AutoSizeText('English'),
                ),*/
                SettingsTile.switchTile(
                  onToggle: (value) {},
                  initialValue: true,
                  leading: const Icon(Iconsax.notification),
                  title: const AutoSizeText('알림 설정'),
                ),
              ],
            ),
          ],
        ));
  }
}
