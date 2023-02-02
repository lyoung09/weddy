import 'package:weddynew/model/vendor_service.dart';

class UserServiceItem {
  late int itemId;
  VendorService vendorService;
  bool isEnabled;

  UserServiceItem({
    required this.itemId,
    required this.vendorService,
    required this.isEnabled,
  });
}
