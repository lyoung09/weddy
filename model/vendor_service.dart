import 'package:weddynew/common/service_category_enum.dart';

class VendorService {
  late int id;
  ServiceCategory serviceCategory;
  int price;
  double rating = 0;
  int searchCount = 0;
  bool isOptional;
  bool isImportant;
  String vendorName;
  String comments;

  VendorService(
      {required this.id,
      required this.vendorName,
      required this.price,
      required this.serviceCategory,
      required this.isImportant,
      required this.isOptional,
      required this.comments});
}
