// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:weddynew/apis/biz/app_biz.pb.dart';

class ScrapCheckModel {
  ScrapItem scrapVendor;
  int vendorCode;
  String companyname;
  ScrapCheckModel({
    required this.scrapVendor,
    required this.vendorCode,
    required this.companyname,
  });
}
