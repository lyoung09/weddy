// import 'dart:math';

// import 'package:weddynew/common/dummy_data.dart';
// import 'package:weddynew/model/timeline_models.dart';

// class ScheduleRepository {
//   Future<WeddingTimeline> getTimeline() async {
//     final dummyData = DummyData.getTimelineData();

//     Random random = Random();
//     int index = random.nextInt(dummyData.length);

//     final List<TimelineItem> nextTaskItems = [
//       dummyData[index].items[0],
//       dummyData[index].items[1],
//       dummyData[index].items[2]
//     ];

//     return WeddingTimeline(nextTaskItems, dummyData, 0.6, 180);
//   }

//   Future<WeddingTimeline> getGuidebook() async {
//     final dummyData = DummyData.getTimelineData();

//     Random random = Random();
//     int index = random.nextInt(dummyData.length);

//     final List<TimelineItem> nextTaskItems = [
//       dummyData[index].items[0],
//       dummyData[index].items[1],
//       dummyData[index].items[2]
//     ];

//     return WeddingTimeline(nextTaskItems, dummyData, 0.6, 180);
//   }
// }