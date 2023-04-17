import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weddynew/apis/result.dart';
import 'package:weddynew/base/bloc/base_bloc.dart';
import 'package:weddynew/base/bloc/bloc_state.dart';
import 'package:weddynew/model/timeline_model.dart';
import 'package:weddynew/repository/schedule_repository.dart';
import 'package:weddynew/screen/home/young_timeline/bloc/timeline_event.dart';
import 'package:weddynew/screen/home/young_timeline/bloc/timeline_state.dart';

import '../../../../apis/biz/app_biz.pb.dart';
import '../../../../model/user_profile.dart';
import '../../../../repository/auth_repository.dart';

class TimeLineBloc extends BaseBloc<TimeLineEvent, TimeLineState> {
  TimeLineBloc({
    required this.repository,
    required this.userRepository,
  }) : super(TimeLineState()) {
    on<GetTimeLineEvent>(_getTimelineEventToStae);

    //on<OneTimelineEvent>(_oneTimelineItem);
  }
  final ScheduleRepository repository;
  final AuthRepository userRepository;

  void _getTimelineEventToStae(
      GetTimeLineEvent event, Emitter<TimeLineState> emit) async {
    final userResult = await userRepository.getUserProfile();

    userResult.success((data) {
      emit(state.copyWith(status: BlocStatus.loading, userProfile: data));
    });
    await Future.delayed(const Duration(microseconds: 300));

    final result = await repository.getTimelineResponse();
    result.success(
      (data) {
        emit(
            state.copyWith(timeLineResponse: data, status: BlocStatus.success));
      },
    );
    // emit(state.copyWith(
    //     status: BlocStatus.success, timeline: await repository.getTimeline()));
  }

  // void _saveIsChecked(IsCheckedEvent event, Emitter<TimeLineState> emit) async {
  //   debugPrint(event.isChecked.toString() +
  //       event.timelineItem.itemId.toString() +
  //       event.groupId.toString());
  //   final result = await repository.saveIsCheckedRequest(
  //       event.isChecked, event.timelineItem, event.groupId);

  //   result.success((data) {
  //     emit(state.copyWith(timelineItem: event.timelineItem));
  //   });
  // }

  // void _saveIsEnabled(IsEnabledEvent event, Emitter<TimeLineState> emit) async {
  //   final result = await repository.saveIsEnabledRequest(
  //       event.isEnabled, event.timelineItem, event.groupId);

  //   result.success((data) {
  //     emit(state.copyWith(
  //         timelineItem: event.timelineItem, enableText: event.enableText));
  //   });
  // }

  // void _saveMemo(MemoEvent event, Emitter<TimeLineState> emit) async {
  //   final result = await repository.saveMemoRequest(
  //       event.memo, event.timelineItem, event.groupId);

  //   result.success((data) {
  //     emit(state.copyWith(timelineItem: event.timelineItem));
  //   });
  // }
}
