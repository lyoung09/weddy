import 'package:flutter/material.dart';
import 'package:weddynew/screen/home/timeline/timeline_page.dart';

import '../young_timeline/bloc/timeline_state.dart';

class TimelineLayout extends StatefulWidget {
  final TimeLineState state;
  final Widget widget;
  final BuildContext context;
  const TimelineLayout(
      {super.key,
      required this.context,
      required this.widget,
      required this.state});

  @override
  State<TimelineLayout> createState() => _TimelineLayoutState();
}

class _TimelineLayoutState extends State<TimelineLayout> {
  final key = GlobalKey();
  int nearKey = 20;
  @override
  void initState() {
    super.initState();

    WidgetsBinding.instance.addPostFrameCallback((_) => initScroll());
  }

  initScroll() async {
    final context = key.currentContext!;

    await Scrollable.ensureVisible(context);
  }

  @override
  Widget build(BuildContext context) {
    return NestedScrollView(
        key: UniqueKey(),
        headerSliverBuilder: (context, innerBoxIsScrolled) {
          return <Widget>[
            const SliverAppBar(
              toolbarHeight: 56,
              expandedHeight: 252,
              floating: false,
              pinned: true,
              elevation: 0,
              flexibleSpace: CustomAppbar(),
            ),
          ];
        },
        // body: TimeLineScrollWidget(

        //     weddingTimeLine: state.timeline,
        //     itemPostionsListener: itemPositionsListener,
        //     itemScrollController: itemScrollController),
        body: ListView.builder(
          itemBuilder: (context, count) =>
              Text(key: nearKey == count ? key : null, count.toString()),
          itemCount: 100,
        ));
    ;
  }
}
