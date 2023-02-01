import 'package:weddy_ceres/model/pricing_model.dart';
import 'package:weddy_ceres/model/vendor_service.dart';

class VendorServiceDetail {
  late int id;

  VendorService serviceProduct;
  List<PricingItem> priceItems;
  List<String> imageList;
  String address;
  double lat;
  double lng;
  String telNumber;
  String url;

  VendorServiceDetail(
      {required this.id,
      required this.serviceProduct,
      required this.priceItems,
      required this.imageList,
      required this.telNumber,
      required this.lat,
      required this.lng,
      required this.address,
      required this.url});
}
