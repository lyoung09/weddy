import 'dart:math';

import 'package:flutter/material.dart';
import 'package:weddynew/apis/biz/app_biz.pbgrpc.dart';
import 'package:weddynew/apis/result.dart';
import 'package:weddynew/service/dress_api_service.dart';

import '../common/dummy_data.dart';

class DressRepository {
  DressRepository(this._service);

  final DressApiService _service;

  Future<List<ContentsItem>> getDress() async {
    final result = await _service.getDress();
    List<ContentsItem> items = [];
    result.map((e) => items.addAll(e.contentsItemList));

    items.shuffle();
    return items;
  }

  Future<Result<GetVendorDressImageInfoResponse>> getDressImageDetail(
      ContentsItem item) async {
    final result = await _service.getDressImageDetailService(item);
    return result;
  }

  Future<ContentsItem?> getDetailDress(int imageId) async {
    final List<ContentsItem> items = await getDress();

    ContentsItem item =
        items.firstWhere((element) => element.itemId == imageId);
    return item;
  }
}
