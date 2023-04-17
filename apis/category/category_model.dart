// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:ffi';

import 'package:flutter/material.dart';

class CategoryModel {
  int vendorServiceCode;
  String vendorServiceText;
  String vendorIconImageUrl;
  bool isMandatory;
  String? image;
  CategoryModel({
    required this.vendorServiceCode,
    required this.vendorServiceText,
    required this.vendorIconImageUrl,
    required this.isMandatory,
    this.image,
  });
}
