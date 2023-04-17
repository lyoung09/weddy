import 'dart:ffi';

import '../../../../apis/biz/app_biz.pb.dart';
import 'package:fixnum/src/int64.dart';

class DummyDetail {
  List<VendorServiceItemDetails> getVendorServiceItemDetails() {
    List<VendorServicePrice> v = [
      VendorServicePrice(
          itemId: Int64(1),
          title: 'm1',
          comments: 'hello world world',
          fromPrice: Int64(50000)),
      VendorServicePrice(
          itemId: Int64(2),
          title: 'm2',
          comments: 'hello world world',
          fromPrice: Int64(50000)),
      VendorServicePrice(
          itemId: Int64(3),
          title: 'm3',
          comments: 'hello world world',
          fromPrice: Int64(50000)),
      VendorServicePrice(
          itemId: Int64(4),
          title: 'm4',
          comments: 'hello world world',
          fromPrice: Int64(50000)),
      VendorServicePrice(
          itemId: Int64(5),
          title: 'm%',
          comments: 'hello world world',
          fromPrice: Int64(50000)),
      VendorServicePrice(
          itemId: Int64(6),
          title: 'm6',
          comments: 'hello world world',
          fromPrice: Int64(50000)),
    ];
    List<VendorServiceItemDetails> t = [];

    List<VendorServiceItemDetails> tt = [
      VendorServiceItemDetails(
          isUsed: false,
          itemId: Int64(1),
          vendorProfile: VendorProfile(
              telNumber: '02-2222',
              cityAddress: 'seoul',
              introduction: "hello seoul"),
          vendorServicePriceList: v),
      VendorServiceItemDetails(
          isUsed: false,
          itemId: Int64(2),
          vendorProfile: VendorProfile(
              telNumber: '02-2222',
              cityAddress: 'seoul',
              introduction:
                  "hello seoulhello seoulhello seoulhello seoulhello seoulhello seoul"),
          vendorServicePriceList: v),
      VendorServiceItemDetails(
          isUsed: false,
          itemId: Int64(3),
          vendorProfile: VendorProfile(),
          vendorServicePriceList: v),
      VendorServiceItemDetails(
          isUsed: false,
          itemId: Int64(4),
          vendorProfile: VendorProfile(),
          vendorServicePriceList: v),
      VendorServiceItemDetails(
          isUsed: false,
          itemId: Int64(5),
          vendorProfile: VendorProfile(),
          vendorServicePriceList: v),
      VendorServiceItemDetails(
          isUsed: false,
          itemId: Int64(6),
          vendorProfile: VendorProfile(),
          vendorServicePriceList: v),
      VendorServiceItemDetails(
          isUsed: false,
          itemId: Int64(7),
          vendorProfile: VendorProfile(),
          vendorServicePriceList: v),
    ];

    return tt;
  }

  VendorServiceDetailsResponse getVendorServiceDetailsResponse(int index) {
    VendorServiceDetailsResponse vIdetails = VendorServiceDetailsResponse();

    List<VendorServicePrice> v = [
      VendorServicePrice(
          itemId: Int64(1),
          title: 'm1',
          comments: 'hello world world',
          isFree: true,
          fromPrice: Int64(50000)),
      VendorServicePrice(
          itemId: Int64(2),
          title: 'm2',
          comments: 'hello world world',
          fromPrice: Int64(50000)),
      VendorServicePrice(
          itemId: Int64(3),
          title: 'm3',
          comments: 'hello world world',
          fromPrice: Int64(50000)),
      VendorServicePrice(
          itemId: Int64(4),
          title: 'm4',
          comments: 'hello world world',
          fromPrice: Int64(50000)),
      VendorServicePrice(
          itemId: Int64(5),
          title: 'm%',
          comments: 'hello world world',
          fromPrice: Int64(50000)),
      VendorServicePrice(
          itemId: Int64(6),
          title: 'm6',
          comments: 'hello world world',
          fromPrice: Int64(50000)),
    ];
    vIdetails.vendorServiceItemDetails = VendorServiceItemDetails(
        isUsed: false,
        itemId: Int64(1),
        vendorProfile: VendorProfile(
            telNumber: '02-2222',
            cityAddress: 'seoul',
            introduction: "hello seoul"),
        vendorServicePriceList: v);
    return vIdetails;
  }
}
