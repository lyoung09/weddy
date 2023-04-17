import 'dart:math';

import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:provider/provider.dart';
import 'package:rect_getter/rect_getter.dart';
import 'package:scroll_to_index/scroll_to_index.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:weddynew/apis/biz/app_biz.pbgrpc.dart';
import 'package:weddynew/di/di_module.dart';
import 'package:weddynew/model/timeline_model.dart';

import 'package:weddynew/screen/home/young_timeline/timeline_appbar.dart';
import 'package:weddynew/screen/home/young_timeline/timeline_category.dart';

import '../../../model/user_profile.dart';
import '../../../resources/Colors.dart';
import '../../../resources/Images.dart';
import '../../../resources/Text.dart';
import 'package:intl/date_symbol_data_local.dart';

class TimelineScreenYoung extends StatefulWidget {
  final TimeLineResponse timeState;
  final UserProfile userProfile;
  const TimelineScreenYoung(
      {super.key, required this.timeState, required this.userProfile});

  @override
  State<TimelineScreenYoung> createState() => _TimelineScreenYoungState();
}

class _TimelineScreenYoungState extends State<TimelineScreenYoung>
    with SingleTickerProviderStateMixin {
  bool isCollapsed = false;
  late AutoScrollController scrollController;
  late TabController tabController;

  final double expandedHeight = 300.0;
  final double collapsedHeight = 42;

  final listViewKey = RectGetter.createGlobalKey();
  Map<int, dynamic> itemKeys = {};

  // prevent animate when press on tab bar
  bool pauseRectGetterIndex = false;

  List<TimelineGroupItem> timelines = [];
  @override
  void initState() {
    timelines = widget.timeState.timelineGroupItemList;

    tabController = TabController(length: timelines.length, vsync: this);
    scrollController = AutoScrollController();

    super.initState();

    initializeDateFormatting();
  }

  checkUsername() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    setState(() => prefs.setString('name', widget.userProfile.name ?? ''));
  }

  @override
  void dispose() {
    scrollController.dispose();
    tabController.dispose();
    super.dispose();
  }

  List<int> getVisibleItemsIndex() {
    Rect? rect = RectGetter.getRectFromKey(listViewKey);
    List<int> items = [];
    if (rect == null) return items;
    itemKeys.forEach((index, key) {
      Rect? itemRect = RectGetter.getRectFromKey(key);
      if (itemRect == null) return;
      if (itemRect.top > rect.bottom) return;
      if (itemRect.bottom < rect.top) return;
      items.add(index);
    });
    return items;
  }

  void onCollapsed(bool value) {
    if (this.isCollapsed == value) return;
    setState(() => this.isCollapsed = value);
  }

  bool onScrollNotification(ScrollNotification notification) {
    if (pauseRectGetterIndex) return false;
    // int lastTabIndex = tabController.length - 1;
    // List<int> visibleItems = getVisibleItemsIndex();

    // bool reachLastTabIndex =
    //     visibleItems.length <= 2 && visibleItems.last == lastTabIndex;
    // if (reachLastTabIndex) {
    //   tabController.animateTo(lastTabIndex);
    // } else {
    //   int sumIndex = visibleItems.reduce((value, element) {
    //     return value + element;
    //   });

    //   int middleIndex = sumIndex ~/ visibleItems.length;

    //   if (tabController.index != middleIndex) {
    //     tabController.animateTo(middleIndex);
    //   }
    // }

    return false;
  }

  void animateAndScrollTo(int index) {
    pauseRectGetterIndex = true;
    tabController.animateTo(index);
    scrollController
        .scrollToIndex(index, preferPosition: AutoScrollPosition.begin)
        .then((value) => pauseRectGetterIndex = false);
  }

  @override
  Widget build(BuildContext context) {
    return RectGetter(
      key: listViewKey,
      child: NotificationListener<ScrollNotification>(
        onNotification: onScrollNotification,
        child: buildSliverScrollView(),
      ),
    );
  }

  Widget buildSliverScrollView() {
    return CustomScrollView(
      physics: const ClampingScrollPhysics(),
      controller: scrollController,
      slivers: [
        buildAppBar(),
        buildBody(),
      ],
    );
  }

  String dateFormat() {
    return DateFormat("yyyy.MM.dd(E)", 'ko')
        .format(widget.userProfile.ceremonyDate!);
  }

  SliverAppBar buildAppBar() {
    return TimelineAppbar(
      data: timelines,
      context: context,
      username: widget.userProfile.name ?? "",
      ceremonyDate: dateFormat(),
      remainingDays: widget.timeState.weddingRemaingDays,
      scrollController: scrollController,
      expandedHeight: expandedHeight,
      collapsedHeight: collapsedHeight,
      isCollapsed: isCollapsed,
      onCollapsed: onCollapsed,
      tabController: tabController,
      onTap: (index) => animateAndScrollTo(index),
    );
  }

  SliverList buildBody() {
    return SliverList(
      delegate: SliverChildListDelegate(
        List.generate(timelines.length, (index) {
          itemKeys[index] = RectGetter.createGlobalKey();

          return buildTimelineItem(index);
        }),
      ),
    );
  }

  Widget buildTimelineItem(int index) {
    TimelineGroupItem tl = timelines[index];
    return RectGetter(
      key: itemKeys[index],
      child: AutoScrollTag(
        key: ValueKey(index),
        index: index,
        controller: scrollController,
        child: TimelineSection(timelineGroupitem: tl),
      ),
    );
  }
}
