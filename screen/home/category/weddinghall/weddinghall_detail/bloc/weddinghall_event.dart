import '../../../../../../apis/biz/app_biz.pb.dart';

class WeddinghallDetailEvent {
  int vendorProfileId;
  WeddinghallDetailEvent({
    required this.vendorProfileId,
  });
}

class InitWeddinghallDetailEvent extends WeddinghallDetailEvent {
  InitWeddinghallDetailEvent({required super.vendorProfileId});
}

class TabChangeWeddinghallDetailEvent extends WeddinghallDetailEvent {
  int tabIndex;
  TabChangeWeddinghallDetailEvent(
      {required super.vendorProfileId, required this.tabIndex});
}

class IsLikedWeddingDetailEvent extends WeddinghallDetailEvent {
  final bool isLiked;

  IsLikedWeddingDetailEvent(
      {required super.vendorProfileId, required this.isLiked});
}

class IsScrapedWeddingDetailEvent extends WeddinghallDetailEvent {
  final int totalPrice;
  final VendorItem vendorItem;
  final int amount;

  IsScrapedWeddingDetailEvent({
    required super.vendorProfileId,
    required this.totalPrice,
    required this.vendorItem,
    required this.amount,
  });
}
