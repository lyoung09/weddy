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
import 'dart:math';

import 'package:flutter/scheduler.dart';
import 'package:scroll_to_index/scroll_to_index.dart';
import 'package:scrollable_positioned_list/scrollable_positioned_list.dart';
import 'package:scrollview_observer/scrollview_observer.dart';
import 'package:weddy_ceres/common/dummy_data.dart';
import 'package:weddy_ceres/common/image_factory.dart';
import 'package:weddy_ceres/common/screen_common_widget.dart';
import 'package:weddy_ceres/common/service_category_enum.dart';

import 'package:weddy_ceres/common/widget_factory.dart';
import 'package:weddy_ceres/common/shimmer_loading.dart';
import 'package:weddy_ceres/model/timeline_item.dart';
import 'package:weddy_ceres/screen/home/widget/timeline_scroll.dart';
import '../../model/timeline_group.dart';
import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:iconsax/iconsax.dart';

class TimelineScreen extends StatefulWidget {
  const TimelineScreen({Key? key}) : super(key: key);

  @override
  TimelineScreenState createState() => TimelineScreenState();
}

class TimelineScreenState extends State<TimelineScreen> {
  final widgetFactory = WidgetFactory();
  final shimmerLoading = ShimmerLoading();
  final imageFactory = ImageFactory();
  final screenCommonWidget = ScreenCommonWidget();

  bool loading = true;
  Timer? _timerDummy;

  List<TimelineItem> nextTaskItems = [];
  List<TimelineGroup> timelineGroupList = [];

  double progressValue = 0.6;
  int progressTextValue = 60;
  int remaingDays = 180;

  final ItemScrollController itemScrollController = ItemScrollController();

  final ItemPositionsListener itemPositionsListener =
      ItemPositionsListener.create();
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
      appBar: widgetFactory.createEmptyAppBar(),
      backgroundColor: Colors.white,
      body: RefreshIndicator(
          onRefresh: refreshData,
          backgroundColor: Colors.white,
          child: (loading == true)
              ? shimmerLoading.buildShimmerContent()
              : Container(
                  color: widgetFactory.styler.tabScreenBackgroundColor,
                  child: Column(
                    children: [
                      buildHeaderWidget(),
                      Expanded(
                        child: TimeLineScrollWidget(
                            timeLineGroupList: timelineGroupList,
                            itemPostionsListener: itemPositionsListener,
                            itemScrollController: itemScrollController),
                      )
                    ],
                  ),
                )),
    );
  }

  Widget buildHeaderWidget() {
    return widgetFactory.createHeaderCard(
      context,
      widget: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          buildNextTasks(),
          const SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
            child: LinearPercentIndicator(
              barRadius: const Radius.circular(10.0),
              lineHeight: 30,
              progressColor: Theme.of(context).colorScheme.secondary,
              backgroundColor: const Color.fromARGB(255, 215, 215, 215),
              percent: progressValue,
              center: AutoSizeText('현재 $progressTextValue% 완료',
                  style: const TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.bold,
                      color: Colors.white)),
            ),
          ),
          buildRemaingDays(),
        ],
      ),
    );
  }

  Widget buildNextTasks() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ListTile(
            leading: Image.asset('assets/images/logo_character.png'),
            title: AutoSizeText('중요한 일정들을 확인하세요',
                style: Theme.of(context).textTheme.headline2)),
        Padding(
            padding: const EdgeInsets.all(4),
            child: GridView.count(
              shrinkWrap: true,
              primary: false,
              physics: const NeverScrollableScrollPhysics(),
              crossAxisSpacing: 10,
              mainAxisSpacing: 10,
              crossAxisCount: 3,
              children: List.generate(nextTaskItems.length, (index) {
                return GestureDetector(
                    onTap: () => {
                          screenCommonWidget.showBottomSheet(context,
                              contents: const Center(
                                  child: Text(
                                      "Add desc text, memo text, status label, date text, calendar button, status button"))),
                        },
                    child: createTimelineItem(nextTaskItems[index]));
              }),
            )),
      ],
    );
  }

  Widget createTimelineItem(TimelineItem item) {
    return Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        color: Colors.white,
        elevation: 0,
        child: Padding(
          padding: const EdgeInsets.all(4),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                  padding: const EdgeInsets.fromLTRB(2, 2, 0, 0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Icon(
                          size: 14,
                          color: item.isMandatory
                              ? Theme.of(context).colorScheme.primary
                              : Colors.white,
                          Iconsax.bookmark5),
                    ],
                  )),
              ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: imageFactory.categoryImageIcon(
                    categoryCode: ServiceCategory.bouquet),
              ),
              const SizedBox(height: 4),
              AutoSizeText(
                item.title,
                style: Theme.of(context).textTheme.subtitle2,
              )
            ],
          ),
        ));
  }

  Widget buildRemaingDays() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Padding(
            padding: const EdgeInsets.fromLTRB(0, 10, 0, 0),
            child: AutoSizeText('결혼식 앞으로 $remaingDays일 남았습니다',
                style: Theme.of(context).textTheme.bodyText2)),
      ],
    );
  }

  Future refreshData() async {
    setState(() {
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

    timelineGroupList = DummyData.getTimelineData();

    // todo testing
    nextTaskItems.clear();
    Random random = Random();
    int index = random.nextInt(timelineGroupList.length);
    nextTaskItems.add(timelineGroupList[index].items[0]);
    nextTaskItems.add(timelineGroupList[index].items[1]);
    nextTaskItems.add(timelineGroupList[index].items[2]);
  }
}
