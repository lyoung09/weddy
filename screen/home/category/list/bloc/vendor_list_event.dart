import 'package:weddynew/apis/biz/app_biz.pb.dart';

class VendorListEvent {
  final int vendorServiceCode;
  VendorListEvent({
    required this.vendorServiceCode,
  });
}

class InitVendorListEvent extends VendorListEvent {
  InitVendorListEvent({required super.vendorServiceCode});
}

class SearchVendorListEvent extends VendorListEvent {
  final String searchText;
  SearchVendorListEvent(
      {required super.vendorServiceCode, required this.searchText});
}

class ToggleEvent extends VendorListEvent {
  final int toggle;
  ToggleEvent({required super.vendorServiceCode, required this.toggle});
}

class FilterNumEvent extends VendorListEvent {
  final int filternum;
  FilterNumEvent({required super.vendorServiceCode, required this.filternum});
}

class IsLikedListEvent extends VendorListEvent {
  final bool isLiked;
  final int index;
  final int totalCount;
  IsLikedListEvent(
      {required super.vendorServiceCode,
      required this.isLiked,
      required this.totalCount,
      required this.index});
}
