// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:weddynew/apis/biz/app_biz.pb.dart';

class TimeLineEvent {}

class OneTimelineEvent extends TimeLineEvent {
  TimelineItem timelineItem;
  OneTimelineEvent({
    required this.timelineItem,
  });
}

class GetTimeLineEvent extends TimeLineEvent {}

class LogoutEvent extends TimeLineEvent {}
