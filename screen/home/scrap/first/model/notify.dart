import 'package:weddynew/apis/biz/app_biz.pb.dart';

class NotifiyModel {
  ScrapItem scrapItem;
  int id;
  int vendorCode;
  BasicInfo basicInfo;
  int vendorProfileId;
  bool? value;
  NotifiyModel({
    required this.scrapItem,
    required this.id,
    required this.vendorProfileId,
    required this.basicInfo,
    required this.vendorCode,
    this.value,
  });
}
