import 'package:weddynew/model/vendor_service.dart';

class VendorBookmark {
  late int itemId;
  VendorService vendorService;
  bool isEnabled;
  DateTime dateTime;
  late String imageUrl;

  VendorBookmark({
    required this.itemId,
    required this.vendorService,
    required this.dateTime,
    required this.imageUrl,
    required this.isEnabled,
  });
}
