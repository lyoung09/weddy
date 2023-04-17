import 'package:flutter/material.dart';
import 'package:weddynew/model/timeline_model.dart';
import 'package:weddynew/repository/safe_api.dart';

import '../apis/biz/app_biz.pbgrpc.dart';
import '../apis/common/app_common.pb.dart';
import '../apis/result.dart';

// class ScheduleService {
//   const ScheduleService(this.appBizServiceClient);

//   final AppBizServiceClient appBizServiceClient;

  // //Future<Result<TimelineItem>>
  // Future<Result<TimeLineResponse>> getWeddingTimeLineService() async {
  //   return safeApiCall(appBizServiceClient.getTimelines(CommonRequest()))
  //       .map((result) {
  //     debugPrint(result.taskProgressRate.toString());
  //     return TimeLineResponse(result.weddingStyleCode, result.taskProgressRate,
  //         result.weddingRemaingDays);
  //   });
  // }

  // Future<Result<List<Memo>>> getMemoList() async {
  //   return safeApiCall(appBizServiceClient.getMemoList(PaginationRequest()))
  //       .map((result) {
  //     debugPrint(result.memoList.toString());
  //     return result.memoList;
  //   });
  // }

  // Future<TimeLineGroup> timelingGroupData() async {
  //   return safeApiCall(appBizServiceClient.getTimelines(CommonRequest())).map((result) => result);
  // }
//}
