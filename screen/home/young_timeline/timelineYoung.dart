import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weddynew/base/bloc/bloc_state.dart';
import 'package:weddynew/screen/home/young_timeline/timelineScreenYoung.dart';
import 'package:weddynew/screen/home/young_timeline/widget/side_drawer.dart';

import '../../../apis/biz/app_biz.pb.dart';
import '../../../base/base_bloc_page.dart';
import '../../../common/shimmer_loading.dart';
import '../../../resources/Images.dart';
import 'bloc/timeline_bloc.dart';
import 'bloc/timeline_event.dart';
import 'bloc/timeline_state.dart';

class TimelineYoung extends BaseBlocPage<TimeLineBloc, TimeLineState> {
  TimelineYoung({super.key});

  @override
  Widget buildPage(BuildContext context, Widget blocBody) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      drawer: SlideDrawer(),
      // floatingActionButton: FloatingActionButton(
      //     onPressed: () => {},
      //     //Navigator.pushNamed(context, GuidebookPage.routeName),
      //     child: Images.getIcon('graph_guidebook', width: 60, height: 60)),
      body: SafeArea(child: blocBody),
    );
  }

  @override
  Widget buildWidget(BuildContext context, TimeLineState state) {
    return state.status.isSuccess
        ? TimelineScreenYoung(
            timeState: state.timeLineResponse, userProfile: state.userProfile)
        : ShimmerLoading().buildShimmerContent();
  }

  @override
  initEvent() => GetTimeLineEvent();
}
