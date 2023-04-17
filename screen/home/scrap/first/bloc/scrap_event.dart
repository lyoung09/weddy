// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:equatable/equatable.dart';
import 'package:weddynew/apis/biz/app_biz.pbgrpc.dart';

import 'package:weddynew/screen/home/scrap/first/model/notify.dart';

class ScrapEventY extends Equatable {
  @override
  List<Object?> get props => throw UnimplementedError();
}

class InitScrapEventY extends ScrapEventY {}

class TabScrapEventY extends ScrapEventY {
  int tabIndex;
  TabScrapEventY({
    required this.tabIndex,
  });
}

class VendorCategoryTabEventY extends ScrapEventY {
  int tabIndex;
  VendorCategoryTabEventY({
    required this.tabIndex,
  });
}

class RemoveScrapEventY extends ScrapEventY {
  int scrapId;
  int scrapItemId;
  int vendorProfileId;
  List<NotifiyModel> notifiyModelList;

  RemoveScrapEventY({
    required this.scrapId,
    required this.scrapItemId,
    required this.vendorProfileId,
    required this.notifiyModelList,
  });
}

class CheckScrapEventY extends ScrapEventY {
  List<NotifiyModel> notifiyModelList;
  CheckScrapEventY({
    required this.notifiyModelList,
  });
}

class AddConsultingEvent extends ScrapEventY {
  final String contactName;
  final String contactTelNumber;
  final String contactEmail;
  final int contactCode;
  final List<Consulting> consultingList;
  final List<NotifiyModel> notifiyModelList;

  AddConsultingEvent(
      {required this.contactName,
      required this.contactTelNumber,
      required this.contactEmail,
      required this.contactCode,
      required this.consultingList,
      required this.notifiyModelList});
}
