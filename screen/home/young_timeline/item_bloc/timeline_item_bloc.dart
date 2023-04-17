import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weddynew/apis/result.dart';
import 'package:weddynew/base/bloc/bloc_state.dart';

import 'package:weddynew/screen/home/young_timeline/item_bloc/timeline_item_event.dart';
import 'package:weddynew/screen/home/young_timeline/item_bloc/timeline_item_state.dart';

import '../../../../apis/biz/app_biz.pb.dart';
import '../../../../base/bloc/base_bloc.dart';
import '../../../../provider/generic_provider.dart';
import '../../../../repository/schedule_repository.dart';

class TimelineItemBloc extends Bloc<TimelineItemEvent, TimelineItemState> {
  TimelineItemBloc({required this.timelineItem, required this.repository})
      : super(TimelineItemState(timelineItem: timelineItem)) {
    on<GetTimelineItemEvent>(_getTimelineItemEventToState);
    on<IsCheckedEvent>(saveIsChecked);
    on<NotEnabledEvent>(saveIsntEnabled);
    on<MemoEvent>(saveMemo);
  }
  final ScheduleRepository repository;

  final TimelineItem timelineItem;

  final TextEditingController memoController = TextEditingController();

  void _getTimelineItemEventToState(
      GetTimelineItemEvent event, Emitter<TimelineItemState> emitter) {
    if (memoController.text.isEmpty) {
      memoController.text = event.timeline.memo;
    }

    emitter(state.copyWith(
      timelineItem: event.timeline,
      status: BlocStatus.success,
      isChecked: event.isChecked,
      isNotEnabled: event.isNotEnabled,
    ));
  }

  void saveIsChecked(
      IsCheckedEvent event, Emitter<TimelineItemState> emitter) async {
    final result = await repository.saveIsCheckedRequest(
        event.isChecked!, event.timeline, event.groupId);

    result.success((ModifyTimelineResponse data) {
      return emitter(state.copyWith(
          timelineItem: event.timeline, isChecked: data.isChecked));
    });
  }

  void saveIsntEnabled(
      NotEnabledEvent event, Emitter<TimelineItemState> emitter) async {
    final result = await repository.saveIsEnabledRequest(
        event.notUsing!, event.timeline, event.groupId);

    result.success((ModifyTimelineResponse data) {
      emitter(state.copyWith(
          timelineItem: event.timeline,
          isNotEnabled: data.isNotEnabled,
          isChecked: false));
    });
  }

  void saveMemo(MemoEvent event, Emitter<TimelineItemState> emitter) async {
    final result = await repository.saveMemoRequest(
        event.memo!, event.timeline, event.groupId);
    result.success((data) {
      memoController.text = data.memo;
      return emitter(
          state.copyWith(timelineItem: event.timeline, memo: data.memo));
    });
  }
}
