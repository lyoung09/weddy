// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:freezed_annotation/freezed_annotation.dart';

import '../apis/biz/app_biz.pb.dart';

class WeddingTimeLine {
  const WeddingTimeLine(this.newxtTaskItems, this.timelineGrouplist,
      this.progressValue, this.remainDays);

  final List<TimeLineItem> newxtTaskItems;
  final List<TimeLineGroup> timelineGrouplist;
  final double progressValue;
  final int remainDays;

  static const empty = WeddingTimeLine([], [], 0.0, 0);
}

class TimeLineGroup {
  final int groupId;
  final String title;
  final String subTitle;
  final List<TimeLineItem> items;
  final int remainingDays;
  const TimeLineGroup(
    this.groupId,
    this.title,
    this.subTitle,
    this.remainingDays,
    this.items,
  );
  static const empty = TimeLineGroup(0, '', '', 0, []);
}

class TimeLineItem {
  int itemId;
  String title;
  String desc;
  String assetIconName;

  bool isMandatory;
  bool checked;
  TimeLineItem(
    this.itemId,
    this.title,
    this.desc,
    this.assetIconName,
    this.isMandatory,
    this.checked,
  );
}

class TimeLineResponse {
  // final int weddingStyleCode;
  final int weddingRemaingDays;
  final int taskProgressRate;
  final List<TimelineGroupItem> timelineGroupItemList;
  const TimeLineResponse(this.taskProgressRate, this.weddingRemaingDays,
      this.timelineGroupItemList);

  static const empty = TimeLineResponse(0, 0, []);
}

class TimelineItemModel {
  final int itemId;
  final String title;
  final String todo;
  final String description;
  final int vendorServiceCode;
  final bool isMandatory;
  final bool isChecked;
  final bool isEnabled;
  final bool isWeddyService;

  TimelineItemModel(
      this.itemId,
      this.title,
      this.todo,
      this.description,
      this.vendorServiceCode,
      this.isMandatory,
      this.isChecked,
      this.isEnabled,
      this.isWeddyService);
}

class TimelineGroupItemModel {
  int groupId;
  String title;
  String subTitle;

  List<TimelineItemModel> timelineItemList;
  TimelineGroupItemModel(
      this.groupId, this.title, this.subTitle, this.timelineItemList);
}

class TimelineResponseModel {
  int weddingStyleCode;
  int weddingRemaingDays;
  int taskProgressRate;

  List<TimelineGroupItem> timelineGroupItemList;

  TimelineResponseModel(this.weddingStyleCode, this.weddingRemaingDays,
      this.taskProgressRate, this.timelineGroupItemList);
}

class SaveTimelineRequestModel {
  int weddingStyleCode;
  List<TimelineGroupItemModel> timelineGroupItemList;
  SaveTimelineRequestModel(this.weddingStyleCode, this.timelineGroupItemList);
}
