import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:scrollable_positioned_list/scrollable_positioned_list.dart';
import 'package:weddynew/base/base_bloc_page.dart';
import 'package:weddynew/base/bloc/bloc_state.dart';
import 'package:weddynew/common/widget_factory.dart';
import 'package:weddynew/provider/generic_provider.dart';
import 'package:weddynew/screen/home/timeline/timeline_layout.dart';
import 'package:weddynew/screen/home/timeline/widget/timeline_list.dart';
import 'package:weddynew/screen/home/timeline/widget/timeline_scroll.dart';

import '../../../apis/biz/app_biz.pb.dart';
import '../../../common/shimmer_loading.dart';
import '../../../model/timeline_model.dart';
import '../../../resources/Colors.dart';
import '../../../resources/Images.dart';
import '../../../resources/Text.dart';

import 'dart:math';
import 'dart:math' as math;

import '../young_timeline/bloc/timeline_bloc.dart';
import '../young_timeline/bloc/timeline_event.dart';
import '../young_timeline/bloc/timeline_state.dart';

class TimeLinePage extends BaseBlocPage<TimeLineBloc, TimeLineState> {
  TimeLinePage({Key? key}) : super(key: key);

  final GenericProvider<int> tabProvider = GenericProvider(initValue: 0);
  final ItemScrollController itemScrollController = ItemScrollController();

  final ItemPositionsListener itemPositionsListener =
      ItemPositionsListener.create();

  ScrollController sc = ScrollController();
  @override
  Widget buildPage(BuildContext context, Widget blocBody) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
          onPressed: () => {},
          //Navigator.pushNamed(context, GuidebookPage.routeName),
          child: Images.getIcon('graph_guidebook', width: 60, height: 60)),
      body: SafeArea(child: blocBody),
    );
  }

  @override
  Widget buildWidget(BuildContext context, TimeLineState state) {
    return state.status.isSuccess
        ? timelineLayout(
            context,
            RefreshIndicator(
                child: Text('a'),
                onRefresh: () async {
                  addEvent(context, GetTimeLineEvent());
                }),
            state)
        : ShimmerLoading().buildShimmerContent();
  }

  Widget timelineLayout(
      BuildContext context, Widget body, TimeLineState timeState) {
    return NestedScrollView(
        headerSliverBuilder: (context, innerBoxIsScrolled) {
          return <Widget>[
            const SliverAppBar(
              toolbarHeight: 42,
              expandedHeight: 252,
              floating: false,
              pinned: true,
              elevation: 0,
              flexibleSpace: CustomAppbar(),
            ),
            SliverPersistentHeader(
              delegate: _SliverAppBarDelegate(createTabBar(context, timeState)),
              pinned: true,
            ),
          ];
        },
        body: GenericProvider.createWidget<int>(provider: tabProvider, (state) {
          if (state.value == 0) {
            // return TimelineListWidget(
            //   weddingTimeLine: timeState.timeline,
            // );
            return Text('a');
          } else {
            return Text("bd");
          }
        })
        // TimeLineScrollWidget(
        //     weddingTimeLine: state.timeline,
        //     itemPostionsListener: itemPositionsListener,
        //     itemScrollController: itemScrollController),
        );
  }

  @override
  initEvent() => GetTimeLineEvent();

  PreferredSize createTabBar(BuildContext context, TimeLineState timeState) {
    // timeState.timeline.timelineGrouplist;

    return PreferredSize(
      preferredSize: Size(MediaQuery.of(context).size.width, 46),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 14),
        child: ListView(
            scrollDirection: Axis.vertical,
            shrinkWrap: true,
            children: [Text('1')]),
      ),
    );
  }

  Widget createTab(String text, String icon, int index) {
    return GestureDetector(
      onTap: () {
        tabProvider.setValue(index);
      },
      child: GenericProvider.createWidget<int>(provider: tabProvider, (state) {
        Color color = state.value == index
            ? ColorItems.secondarySpaceCadet
            : ColorItems.secondarySpanishGray;
        return Container(
            alignment: Alignment.center,
            width: 130,
            height: 40,
            margin: const EdgeInsets.symmetric(horizontal: 12),
            decoration: state.value == index
                ? BoxDecoration(
                    color: ColorItems.white,
                    borderRadius: const BorderRadius.all(Radius.circular(20)),
                    border: Border.all(color: ColorItems.salmon, width: 1),
                    boxShadow: const [
                        BoxShadow(
                          color: ColorItems.shadow,
                          blurRadius: 5,
                        )
                      ])
                : null,
            child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              Images.getIcon(icon, width: 24, height: 24, color: color),
              SizedBox(
                width: 76,
                child: Center(
                    child: AutoSizeText(text,
                        style: TextItems.heading3.copyWith(color: color),
                        softWrap: false,
                        overflow: TextOverflow.fade)),
              )
            ]));
      }),
    );
  }
}

class CustomAppbar extends StatelessWidget {
  const CustomAppbar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, c) {
        final settings = context
            .dependOnInheritedWidgetOfExactType<FlexibleSpaceBarSettings>();
        final deltaExtent = settings!.maxExtent - settings.minExtent;
        final t =
            (1.0 - (settings.currentExtent - settings.minExtent) / deltaExtent)
                .clamp(0.0, 1.0);
        final fadeStart = math.max(0.0, 1.0 - kToolbarHeight / deltaExtent);
        const fadeEnd = 1.0;
        final opacity = 1.0 - Interval(fadeStart, fadeEnd).transform(t);

        return Stack(
          children: [
            Center(
              child: Opacity(opacity: 1 - opacity, child: collapsedTitleBar()),
            ),
            Opacity(
              opacity: opacity,
              child: Stack(
                fit: StackFit.passthrough,
                children: [createAppBarBackground(context), expandedTitleBar()],
              ),
            ),
          ],
        );
      },
    );
  }

  Widget expandedTitleBar() {
    return LayoutBuilder(
      builder: (context, constraints) {
        double offsetTop = ((constraints.maxHeight - 40) / (236 - 40));
        return Stack(
          fit: StackFit.passthrough,
          children: [
            Positioned(
                height: 56,
                left: 12,
                child: IconButton(
                  icon: Images.getIcon('icon_user_menu',
                      color: ColorItems.spaceCadet),
                  onPressed: () => {},
                )),
            Positioned(
                height: 56,
                right: 12,
                child: IconButton(
                  icon: Images.getIcon('icon_notifications',
                      color: ColorItems.spaceCadet),
                  onPressed: () => {},
                )),
            Positioned(
                width: MediaQuery.of(context).size.width,
                height: 56,
                top: 122 * offsetTop,
                child: Align(
                  widthFactor: MediaQuery.of(context).size.width,
                  alignment: Alignment.center,
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(bottom: 5.0),
                        child: Text("wedd님의 웨딩 디자인",
                            style: TextItems.heading3.copyWith(
                              color: ColorItems.white,
                            )),
                      ),
                      Text("Wedding day 2022.10.19",
                          style: TextItems.heading5.copyWith(
                            color: ColorItems.white,
                          )),
                    ],
                  ),
                )),
          ],
        );
      },
    );
  }

  Widget collapsedTitleBar() {
    return LayoutBuilder(
      builder: (context, constraints) {
        double offsetTop = ((constraints.maxHeight - 40) / (236 - 40));
        return Stack(
          fit: StackFit.passthrough,
          children: [
            Positioned(
                height: 56,
                left: 12,
                child: IconButton(
                  icon: Images.getIcon('icon_user_menu',
                      color: ColorItems.salmon),
                  onPressed: () => {},
                )),
            Positioned(
                height: 56,
                right: 12,
                child: IconButton(
                  icon: Images.getIcon('icon_notifications',
                      color: ColorItems.salmon),
                  onPressed: () => {},
                )),
            Positioned(
                width: MediaQuery.of(context).size.width,
                height: 56,
                top: 122 * offsetTop,
                child: Align(
                  widthFactor: MediaQuery.of(context).size.width,
                  alignment: Alignment.center,
                  child: Text("wedd님의 웨딩 디자인",
                      style: TextItems.heading3
                          .copyWith(color: ColorItems.secondarySpaceCadet)),
                )),
          ],
        );
      },
    );
  }

  Widget createAppBarBackground(BuildContext context) {
    return Stack(
      fit: StackFit.passthrough,
      children: [
        Positioned(
            width: MediaQuery.of(context).size.width,
            top: 20,
            child: Images.getImage('image_main_app_bar_background')),
        Positioned(
            width: MediaQuery.of(context).size.width,
            bottom: 0,
            child: Column(
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                    decoration: BoxDecoration(
                      color: ColorItems.salmon,
                      borderRadius: BorderRadius.circular(36),
                    ),
                    padding: const EdgeInsets.symmetric(horizontal: 24),
                    child: AutoSizeText(
                      'D - 280',
                      style: TextItems.rozhaOneHeading2
                          .copyWith(color: ColorItems.white),
                    )),
              ],
            ))
      ],
    );
  }
}

class _SliverAppBarDelegate extends SliverPersistentHeaderDelegate {
  _SliverAppBarDelegate(this._tabBar);

  final PreferredSize _tabBar;

  @override
  double get minExtent => _tabBar.preferredSize.height;
  @override
  double get maxExtent => _tabBar.preferredSize.height;

  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    return Container(
        decoration: const BoxDecoration(color: ColorItems.white, boxShadow: [
          BoxShadow(
            color: ColorItems.shadow,
            offset: Offset(0, 1),
            blurRadius: 5,
          )
        ]),
        child: _tabBar);
  }

  @override
  bool shouldRebuild(_SliverAppBarDelegate oldDelegate) {
    return false;
  }
}
