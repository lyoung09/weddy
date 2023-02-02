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
import 'package:flutter/material.dart';
import 'package:weddynew/common/widget_factory.dart';
import 'package:weddynew/model/notice.dart';
import 'package:weddynew/common/shimmer_loading.dart';

class NoticeScreen extends StatefulWidget {
  const NoticeScreen({Key? key}) : super(key: key);

  @override
  NoticeScreenState createState() => NoticeScreenState();
}

class NoticeScreenState extends State<NoticeScreen> {
  final widgetFactory = WidgetFactory();

  final shimmerLoading = ShimmerLoading();

  bool loading = true;
  Timer? _timerDummy;

  List<Notice> items = [];

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
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: widgetFactory.createDefaultAppBar(context, title: '공지사항'),
        backgroundColor: Colors.white,
        body: RefreshIndicator(
            onRefresh: refreshData,
            backgroundColor: Colors.white,
            child: (loading == true)
                ? shimmerLoading.buildShimmerContent()
                : (items.isNotEmpty
                    ? ListView.separated(
                        separatorBuilder: (BuildContext context, int index) =>
                            widgetFactory.styler.listDivider,
                        itemCount: items.length,
                        scrollDirection: Axis.vertical,
                        shrinkWrap: true,
                        itemBuilder: (context, index) {
                          return buildItem(items[index]);
                        })
                    : Center(child: Image.asset('assets/images/empty.png')))));
  }

  Widget buildItem(Notice item) {
    return Container();
  }

  Future refreshData() async {
    setState(() {
      items.clear();
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
  }
}
