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
import 'dart:async';

import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

import 'package:weddynew/common/screen_common_widget.dart';
import 'package:weddynew/common/shimmer_loading.dart';

import 'package:weddynew/model/family_link.dart';
import '../../common/dummy_data.dart';
import '../../common/widget_factory.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:iconsax/iconsax.dart';

class FamilyLinkScreen extends StatefulWidget {
  const FamilyLinkScreen({Key? key}) : super(key: key);

  @override
  FamilyLinkScreenState createState() => FamilyLinkScreenState();
}

class FamilyLinkScreenState extends State<FamilyLinkScreen> {
  final widgetFactory = WidgetFactory();
  final shimmerLoading = ShimmerLoading();
  final screenCommonWidget = ScreenCommonWidget();

  bool loading = true;
  Timer? _timerDummy;

  List<FamilyLink> linkItems = [];

  @override
  void initState() {
    _getData();
    super.initState();
  }

  @override
  void dispose() {
    _timerDummy?.cancel();
    super.dispose();
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar:
            widgetFactory.createDefaultAppBar(context, title: '체크리스트 공유 관리'),
        backgroundColor: Colors.white,
        body: RefreshIndicator(
            onRefresh: refreshData,
            backgroundColor: Colors.white,
            child: (loading == true)
                ? shimmerLoading.buildShimmerContent()
                : SingleChildScrollView(
                    child: Column(
                    children: [
                      const SizedBox(height: 10),
                      ListView.separated(
                          separatorBuilder: (BuildContext context, int index) =>
                              widgetFactory.styler.listDivider,
                          itemCount: linkItems.length,
                          scrollDirection: Axis.vertical,
                          shrinkWrap: true,
                          itemBuilder: (context, index) {
                            return buildItem(linkItems[index]);
                          })
                    ],
                  ))));
  }

  Widget buildItem(FamilyLink familyLink) {
    return GestureDetector(
        child: Column(children: [
      Padding(
          padding: const EdgeInsets.fromLTRB(15, 5, 15, 0),
          child: ListTile(
            title: AutoSizeText(
              familyLink.familyName,
              style: Theme.of(context).textTheme.bodyText1,
            ),
            subtitle:
                Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                const SizedBox(height: 4),
                AutoSizeText(familyLink.name,
                    style: Theme.of(context).textTheme.bodyText2, maxLines: 1),
                Row(
                  children: [
                    const Icon(Icons.phone, size: 14),
                    TextButton(
                      onPressed: () {
                        callPhone(
                          familyLink.phoneNumber,
                        );
                      },
                      child: AutoSizeText(
                        familyLink.phoneNumber,
                        style: Theme.of(context).textTheme.subtitle1,
                      ),
                    ),
                  ],
                ),
              ])
            ]),
            trailing: IconButton(
                iconSize: 22,
                color: Colors.redAccent,
                icon: const Icon(Iconsax.trash),
                onPressed: () => {}),
          )),
    ]));
  }

  Future<void> callPhone(String phoneNumber) async {
    final Uri launchUri = Uri(
      scheme: 'tel',
      path: phoneNumber,
    );

    if (!await launchUrl(launchUri)) {
      throw '해당 번호 $phoneNumber 연결에 실패했습니다';
    }
  }

  Future refreshData() async {
    setState(() {
      linkItems.clear();
      loading = true;
      _getData();
    });
  }

  void _getData() {
    _timerDummy = Timer(const Duration(seconds: 1), () {
      setState(() {
        loading = false;
      });
    });
    linkItems = DummyData.getFamilyLinkData();
  }

  Widget bottomSheet() {
    // must use StateSetter to update data between main screen and popup.
    // if use default setState, the data will not update
    return StatefulBuilder(
        builder: (BuildContext context, StateSetter mystate) {
      return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Center(
            child: Container(
          margin: const EdgeInsets.only(top: 12, bottom: 12),
          width: 40,
          height: 4,
          decoration: BoxDecoration(
              color: Colors.grey[500], borderRadius: BorderRadius.circular(10)),
        ))
      ]);
    });
  }
}
