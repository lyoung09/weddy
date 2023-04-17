import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import 'package:scroll_to_index/scroll_to_index.dart';
import 'package:tab_indicator_styler/tab_indicator_styler.dart';
import 'package:weddynew/apis/biz/app_biz.pbgrpc.dart';
import 'package:weddynew/screen/home/young_timeline/widget/alarm_recevier.dart';
import 'package:weddynew/screen/home/young_timeline/widget/side_drawer.dart';

import '../../../resources/Colors.dart';
import '../../../resources/Images.dart';
import '../../../resources/Text.dart';

class TimelineAppbar extends SliverAppBar {
  final List<TimelineGroupItem> data;
  final BuildContext context;
  final String username;
  String? ceremonyDate;
  final bool isCollapsed;
  final int remainingDays;
  final double expandedHeight;
  final double collapsedHeight;
  final AutoScrollController scrollController;
  final TabController tabController;
  final void Function(bool isCollapsed) onCollapsed;
  final void Function(int index) onTap;

  TimelineAppbar({
    required this.data,
    required this.context,
    required this.username,
    this.ceremonyDate,
    required this.remainingDays,
    required this.isCollapsed,
    required this.expandedHeight,
    required this.collapsedHeight,
    required this.scrollController,
    required this.onCollapsed,
    required this.onTap,
    required this.tabController,
  }) : super(elevation: 4.0, pinned: true, forceElevated: true);

  @override
  Color? get backgroundColor => Colors.white;

  @override
  Widget? get leading {
    return Container(
      decoration: BoxDecoration(
          color: isCollapsed ? Colors.white30 : Colors.white,
          borderRadius: BorderRadius.only(bottomRight: Radius.circular(25))),
      child: Padding(
        padding: const EdgeInsets.only(left: 5),
        child: IconButton(
          icon: Images.getIcon('icon_user_menu',
              color: isCollapsed ? ColorItems.spaceCadet : ColorItems.salmon),
          onPressed: () {
            Scaffold.of(context).openDrawer();
          },
        ),
      ),
    );
  }

  @override
  List<Widget>? get actions {
    return [
      Container(
        decoration: BoxDecoration(
            color: isCollapsed ? Colors.white30 : Colors.white,
            borderRadius: BorderRadius.only(bottomLeft: Radius.circular(25))),
        child: Padding(
          padding: const EdgeInsets.only(right: 5),
          child: IconButton(
            icon: Images.getIcon('icon_notifications',
                color: isCollapsed ? ColorItems.spaceCadet : ColorItems.salmon),
            onPressed: () => {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const AlarmRecevier()))
            },
          ),
        ),
      ),
    ];
  }

  @override
  Widget? get title {
    var textTheme = Theme.of(context).textTheme;
    return AnimatedOpacity(
      opacity: isCollapsed ? 0 : 1,
      duration: const Duration(milliseconds: 250),
      child: Center(
        child: Text(
          "${username} 웨딩디자인",
          style: textTheme.subtitle1?.copyWith(color: Colors.black),
          //strutStyle: Helper.buildStrutStyle(textTheme.subtitle1),
        ),
      ),
    );
  }

  @override
  PreferredSizeWidget? get bottom {
    return PreferredSize(
      preferredSize: const Size.fromHeight(48),
      child: Container(
        // color: Colors.green,
        child: Row(
          children: [
            const Expanded(
              child: Card(
                elevation: 8,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.only(
                        topRight: Radius.circular(15),
                        bottomRight: Radius.circular(15))),
                child: SizedBox(
                  // width: 8,
                  height: 30,
                  child: Center(child: Text("타임라인")),
                ),
              ),
            ),
            Flexible(
              flex: 3,
              child: TabBar(
                isScrollable: true,
                controller: tabController,
                indicatorPadding: const EdgeInsets.symmetric(horizontal: 16.0),
                indicatorColor: Colors.black,
                labelColor: Colors.blue,
                indicator:
                    MaterialIndicator(color: ColorItems.primary, height: 5),
                unselectedLabelColor: Colors.teal,
                indicatorWeight: 3.0,
                tabs: data.map((e) {
                  return Tab(
                    child: Card(
                      child: Text(e.title),
                    ),
                  );
                }).toList(),
                onTap: onTap,
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget? get flexibleSpace {
    return LayoutBuilder(
      builder: (
        BuildContext context,
        BoxConstraints constraints,
      ) {
        final top = constraints.constrainHeight();
        final collapsedHight = MediaQuery.of(context).viewPadding.top + 42 + 48;
        WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
          onCollapsed(collapsedHight != top);
        });

        return FlexibleSpaceBar(
          centerTitle: true,
          collapseMode: CollapseMode.pin,
          background: Stack(
            fit: StackFit.passthrough,
            children: [
              Stack(
                fit: StackFit.passthrough,
                children: [
                  Positioned(
                      width: MediaQuery.of(context).size.width,
                      top: 0,
                      child: Image.asset('assets/background/Home_picture.png')),
                  Positioned(
                      width: MediaQuery.of(context).size.width,
                      bottom: 60,
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                              decoration: BoxDecoration(
                                color: ColorItems.salmon,
                                borderRadius: BorderRadius.circular(36),
                              ),
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 24),
                              child: AutoSizeText(
                                'D - ${remainingDays.toString()}',
                                style: TextItems.rozhaOneHeading2
                                    .copyWith(color: ColorItems.white),
                              )),
                        ],
                      ))
                ],
              ),
              LayoutBuilder(
                builder: (context, constraints) {
                  double offsetTop =
                      ((constraints.maxHeight - 40) / (236 - 40));
                  return Stack(
                    fit: StackFit.passthrough,
                    children: [
                      Positioned(
                          width: MediaQuery.of(context).size.width,
                          height: 56,
                          top: 80 * offsetTop,
                          child: Align(
                            widthFactor: MediaQuery.of(context).size.width,
                            alignment: Alignment.center,
                            child: Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(bottom: 5.0),
                                  child: Text("$username 님의 웨딩 디자인",
                                      style: TextItems.heading3.copyWith(
                                        color: ColorItems.white,
                                      )),
                                ),
                                Text("Wedding day $ceremonyDate",
                                    style: TextItems.heading5.copyWith(
                                      color: ColorItems.white,
                                    )),
                              ],
                            ),
                          )),
                    ],
                  );
                },
              ),
            ],
          ),
        );
      },
    );
  }
}
