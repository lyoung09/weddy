import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:weddynew/apis/biz/app_biz.pbgrpc.dart';
import 'package:weddynew/base/bloc/base_bloc_state.dart';
import 'package:weddynew/base/bloc/bloc_state.dart';
import 'package:weddynew/model/user_profile.dart';

import '../../../../model/timeline_model.dart';

part 'timeline_state.freezed.dart';

@freezed
class TimeLineState extends BaseBlocState with _$TimeLineState {
  factory TimeLineState({
    @Default(BlocStatus.none) BlocStatus status,
    @Default(TimeLineResponse.empty) TimeLineResponse timeLineResponse,
    @Default(UserProfile.empty) UserProfile userProfile,
    TimelineItem? timelineItem,
    @Default([]) List<TimelineItem> items,
    @Default('') String enableText,
    // @Default('') String progress,
  }) = _TimeLineState;
}
