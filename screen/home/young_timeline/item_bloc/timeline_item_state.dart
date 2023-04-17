import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../apis/biz/app_biz.pb.dart';
import '../../../../base/bloc/bloc_state.dart';

part 'timeline_item_state.freezed.dart';

@freezed
class TimelineItemState with _$TimelineItemState {
  factory TimelineItemState({
    @Default(BlocStatus.none) BlocStatus status,
    TimelineItem? timelineItem,
    @Default('') String text,
    @Default(false) bool isNotEnabled,
    @Default(false) bool isChecked,
    @Default('') String memo,
    // @Default('') String progress,
  }) = _TimelineItemState;
}
