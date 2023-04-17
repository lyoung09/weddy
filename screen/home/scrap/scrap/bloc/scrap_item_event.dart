// ignore_for_file: public_member_api_docs, sort_constructors_first
import '../../../../../apis/biz/app_biz.pb.dart';
import '../check_model.dart';

class ScrapItemEvent {}

class InitScrapItemEvent extends ScrapItemEvent {}

class DoVendorEvent extends ScrapItemEvent {
  ScrapVendorInfo canVendorInfo;
  bool isCheck;
  DoVendorEvent({
    required this.canVendorInfo,
    required this.isCheck,
  });
}

class IsCheckItemEvent extends ScrapItemEvent {
  List<VendorItem> isCheck;
  IsCheckItemEvent({
    required this.isCheck,
  });
}

class IsModalItemEvent extends ScrapItemEvent {
  List<ScrapCheckModel> scrapCheckModel;
  IsModalItemEvent({
    required this.scrapCheckModel,
  });
}

class RemoveScrapItemEvent extends ScrapItemEvent {
  int scrapId;
  int scrapItemId;
  int vendorProfileId;
  RemoveScrapItemEvent({
    required this.scrapId,
    required this.scrapItemId,
    required this.vendorProfileId,
  });
}
