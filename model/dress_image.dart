import 'package:weddynew/model/vendor_service.dart';

class BrideDressImage {
  int imageId;
  String imageUrl;
  int numOfLikes;
  VendorService vendorService;

  BrideDressImage(
      {required this.imageId,
      required this.imageUrl,
      required this.numOfLikes,
      required this.vendorService});
}

class DressImageModel {
  final int itemId;
  final String vendorProfileId;
  final String url;

  DressImageModel(
    this.itemId,
    this.vendorProfileId,
    this.url,
  );
}
