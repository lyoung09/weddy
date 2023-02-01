import 'dart:math';

import 'package:weddy_ceres/repository/service/dress_api_service.dart';

import '../common/dummy_data.dart';
import '../model/dress_image.dart';
import '../model/vendor_service.dart';

class DressRepository {
  DressRepository(this._service);

  final DressApiService _service;

  Future<List<BrideDressImage>> getDressList(int page, int pageSize) async {
    final List<BrideDressImage> dressItems = [];
    var images = [
      'https://source.unsplash.com/random/?wedding',
      'https://source.unsplash.com/random/?food',
      'https://source.unsplash.com/random/?city',
      'https://source.unsplash.com/random/?flower',
      'https://source.unsplash.com/random/?dress',
      'https://source.unsplash.com/random/?winter',
      'https://source.unsplash.com/random/?fall',
      'https://source.unsplash.com/random/?sea',
      'https://source.unsplash.com/random/?bride',
      'https://source.unsplash.com/random/?building',
      'https://source.unsplash.com/random/?color',
    ];

    dressItems.clear();

    Random random = Random();
    List<VendorService> serviceProductItems = DummyData.getProductData();
    int k = 1;
    for (int i = 0; i < serviceProductItems.length; i++) {
      for (int j = 0; j < 10; j++) {
        k++;
        dressItems.add(BrideDressImage(
          imageId: k,
          vendorService: serviceProductItems[i],
          imageUrl: images[random.nextInt(images.length)],
          numOfLikes: random.nextInt(10000),
        ));
      }
    }

    return dressItems;
  }

  Future<BrideDressImage?> getDressDetail(int imageId) async {
    final dummyDressList = await getDressList(0, 0);

    for (var element in dummyDressList) {
      if (element.imageId == imageId) {
        return element;
      }
    }

    return null;
  }
}