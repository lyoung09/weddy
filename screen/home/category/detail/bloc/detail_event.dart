// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../../apis/biz/app_biz.pb.dart';

class VendorDetailEvent {}

class InitVendorDetailEvent extends VendorDetailEvent {
  final int index;
  InitVendorDetailEvent({required this.index});
}

class GetVendorServicePriceEvent extends VendorDetailEvent {
  final int index;
  GetVendorServicePriceEvent({required this.index});
}

class IsCheckedEvent extends VendorDetailEvent {
  Map<int, bool> isChecked;
  List<VendorItem> vendorList;
  IsCheckedEvent({
    required this.isChecked,
    required this.vendorList,
  });
}

class IsLikedEvent extends VendorDetailEvent {
  final int index;
  final bool isLiked;

  IsLikedEvent(this.index, this.isLiked);
}

class IsScrapvent extends VendorDetailEvent {
  final int vendorProfileId;
  final int vendorServiceCode;
  final List<ScrapItem> scrapItems;

  IsScrapvent(
      {required this.vendorProfileId,
      required this.vendorServiceCode,
      required this.scrapItems});
}
