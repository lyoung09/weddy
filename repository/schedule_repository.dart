import 'dart:math';

import 'package:flutter/foundation.dart';
import 'package:weddynew/common/dummy_data.dart';
import 'package:weddynew/service/schedul_service.dart';

import '../apis/biz/app_biz.pb.dart';
import '../apis/result.dart';

import '../model/timeline_model.dart';
import '../service/biz_api_service.dart';

class ScheduleRepository {
  const ScheduleRepository(
      //this.service,
      this.bizService);

  //final ScheduleService service;
  final BizApiService bizService;
  Future<WeddingTimeLine> getTimeline() async {
    final dummyData = DummyData.getTimelineData();

    Random random = Random();
    int index = random.nextInt(dummyData.length);

    final List<TimeLineItem> nextTaskItems = [
      dummyData[index].items[0],
      dummyData[index].items[1],
      dummyData[index].items[2]
    ];

    return WeddingTimeLine(nextTaskItems, dummyData, 0.6, 180);
  }

  Future<Result<TimeLineResponse>> getTimelineResponse() async {
    return bizService.getTimelinGroup();
  }

  Future<Result<ModifyTimelineResponse>> saveIsCheckedRequest(
      bool isChecked, TimelineItem item, int groupId) async {
    return bizService.saveIsChecked(isChecked, item, groupId).then((result) {
      if (result is Success) {
        return result;
      } else {
        return result;
      }
    });
  }

  Future<Result<ModifyTimelineResponse>> saveIsEnabledRequest(
      bool isEnabled, TimelineItem item, int groupId) async {
    return bizService.saveIsEnabled(isEnabled, item, groupId).then((result) {
      if (result is Success) {
        return result;
      } else {
        return result;
      }
    });
  }

  Future<Result<ModifyTimelineResponse>> saveMemoRequest(
      String memo, TimelineItem item, int groupId) async {
    return bizService.saveMemo(memo, item, groupId).then((result) {
      if (result is Success) {
        return result;
      } else {
        return result;
      }
    });
  }

  Future<WeddingTimeLine> getGuidebook() async {
    final dummyData = DummyData.getTimelineData();

    Random random = Random();
    int index = random.nextInt(dummyData.length);

    final List<TimeLineItem> nextTaskItems = [
      dummyData[index].items[0],
      dummyData[index].items[1],
      dummyData[index].items[2]
    ];

    return WeddingTimeLine(nextTaskItems, dummyData, 0.6, 180);
  }
}
