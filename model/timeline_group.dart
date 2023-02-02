import 'package:weddynew/model/timeline_item.dart';

class TimelineGroup {
  late int groupId;
  late String title;
  late String subTitle;
  late List<TimelineItem> items;
  late int remainingDays;

  TimelineGroup(
      {required this.groupId,
      required this.title,
      required this.subTitle,
      required this.remainingDays,
      required this.items});

  @override
  String toString() {
    return groupId.toString();
  }
}
