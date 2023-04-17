// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import '../../../../apis/biz/app_biz.pb.dart';

class TimelineItemEvent {
  TimelineItem timeline;

  TimelineItemEvent({required this.timeline});
}

class GetTimelineItemEvent extends TimelineItemEvent {
  bool isChecked;
  bool isNotEnabled;
  String text;

  GetTimelineItemEvent({
    required this.isChecked,
    //required this.timeline,
    required this.isNotEnabled,
    required this.text,
    required super.timeline,
  });
}

class IsCheckedEvent extends TimelineItemEvent {
  bool? isChecked;
  int groupId;

  int index;

  IsCheckedEvent(
      {this.isChecked,
      required super.timeline,
      required this.groupId,
      required this.index});
}

class NotEnabledEvent extends TimelineItemEvent {
  bool? notUsing;

  int index;
  int groupId;
  String? text;
  bool? isChecked;

  NotEnabledEvent(
      {this.notUsing,
      required this.groupId,
      required super.timeline,
      this.text,
      this.isChecked,
      required this.index});
}

class MemoEvent extends TimelineItemEvent {
  String? memo;
  int groupId;

  int index;

  MemoEvent(
      {this.memo,
      required this.groupId,
      required super.timeline,
      required this.index});
}
