import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:getwidget/components/loader/gf_loader.dart';
import 'package:getwidget/types/gf_loader_type.dart';
import 'package:provider/provider.dart';
import 'package:weddynew/base/bloc/bloc_state.dart';
import 'package:weddynew/di/di_module.dart';
import 'package:weddynew/resources/Colors.dart';

import 'package:weddynew/screen/home/young_timeline/widget/timeline_card.dart';

import '../../../apis/biz/app_biz.pb.dart';
import '../../../common/shimmer_loading.dart';
import '../../../model/timeline_model.dart';
import 'item_bloc/timeline_item_bloc.dart';
import 'item_bloc/timeline_item_event.dart';
import 'item_bloc/timeline_item_state.dart';

class TimelineSection extends StatelessWidget {
  const TimelineSection({
    Key? key,
    required this.timelineGroupitem,
  }) : super(key: key);

  final TimelineGroupItem timelineGroupitem;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      margin: const EdgeInsets.only(bottom: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _buildSectionTileHeader(context),
          _buildTimlineList(context),
        ],
      ),
    );
  }

  Widget _buildTimlineList(BuildContext context) {
    return Column(
      children: List.generate(
        timelineGroupitem.timelineItemList.length,
        (index) {
          final timeline = timelineGroupitem.timelineItemList[index];

          bool isLastIndex =
              index == timelineGroupitem.timelineItemList.length - 1;
          return _buildTimelineTile(
            timeline: timeline,
            context: context,
            groupId: timelineGroupitem.groupId,
            isLastIndex: isLastIndex,
          );
        },
      ),
    );
  }

  Widget _buildSectionTileHeader(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(height: 16),
        _sectionTitle(context),
        const SizedBox(height: 8.0),
        timelineGroupitem.title.isNotEmpty
            ? _sectionSubtitle(context)
            : const SizedBox(),
        const SizedBox(height: 16),
      ],
    );
  }

  Widget _sectionTitle(BuildContext context) {
    return Row(
      children: [
        Text(
          timelineGroupitem.title,
          style: _textTheme(context)
              .titleLarge!
              .copyWith(color: ColorItems.spaceCadet),
        )
      ],
    );
  }

  Widget _sectionSubtitle(BuildContext context) {
    return Text(
      timelineGroupitem.subTitle.toString(),
      style: _textTheme(context).subtitle2,
    );
  }

  Widget _buildTimelineTile(
      {required BuildContext context,
      required bool isLastIndex,
      required TimelineItem timeline,
      required int groupId}) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
                child: Provider<TimelineItemBloc>(
              create: (_) => TimelineItemBloc(
                  repository: getIt.get(), timelineItem: timeline),
              child: BlocBuilder<TimelineItemBloc, TimelineItemState>(
                  builder: (context, state) {
                context.read<TimelineItemBloc>().add(GetTimelineItemEvent(
                    timeline: state.timelineItem!,
                    isChecked: state.timelineItem!.isChecked,
                    isNotEnabled: state.timelineItem!.isNotEnabled,
                    text: state.timelineItem!.isNotEnabled.toString()));

                return state.status.isSuccess
                    ? TimelineCardWidget(
                        state: state,
                        item: state.timelineItem!,
                        groupId: groupId,
                      )
                    : const GFLoader(type: GFLoaderType.ios);
              }),
            )),
          ],
        ),
        !isLastIndex ? const Divider(height: 16.0) : const SizedBox(height: 8.0)
      ],
    );
  }

  TextTheme _textTheme(context) => Theme.of(context).textTheme;
}
