import 'package:weddy_ceres/model/vendor_service.dart';

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
