import 'package:weddy_ceres/model/vendor_service_detail.dart';
import 'package:weddy_ceres/repository/safe_api.dart';
import 'package:weddy_ceres/repository/service/vendor_api_service.dart';

import '../apis/result.dart';
import '../common/dummy_data.dart';

import '../model/pricing_model.dart';

class ProductRepository {
  ProductRepository(this.api);

  final VendorApiService api;

  Future<Result<VendorServiceDetail>> getVendorServiceDetail(int serviceId) {
    return safeApiCall(Future(() {
      final dummyList = DummyData.getProductData();
      for (var element in dummyList) {
        if (serviceId != 13 && element.id == serviceId) {
          List<String> imageList = [
            'https://source.unsplash.com/random?wedding',
            'https://source.unsplash.com/random?dress',
            'https://source.unsplash.com/random?bride',
            'https://source.unsplash.com/random?groom',
            'https://source.unsplash.com/random?winter',
            'https://source.unsplash.com/random?spring',
            'https://source.unsplash.com/random?bird',
            'https://source.unsplash.com/random?river',
            'https://source.unsplash.com/random?sea',
            'https://source.unsplash.com/random?building',
            'https://source.unsplash.com/random?food',
            'https://source.unsplash.com/random?friend',
            'https://source.unsplash.com/random?tree',
            'https://source.unsplash.com/random?friend',
            'https://source.unsplash.com/random?idea',
            'https://source.unsplash.com/random?apple',
            'https://source.unsplash.com/random?text',
            'https://source.unsplash.com/random?gold',
          ];

          List<PricingItem> priceList = [];
          for (var i = 0; i < 3; i++) {
            priceList.add(PricingItem(
                itemId: i,
                title: '상품$i 가격',
                minPrice: (i + 100) * 10000,
                maxPrice: (i + 100) * 10000,
                comments: '테스트 코맨트',
                isRangeValue: false));
          }

          return VendorServiceDetail(
              id: element.id,
              serviceProduct: element,
              imageList: imageList,
              telNumber: '0212341234',
              priceItems: priceList,
              lat: 37.48915574,
              lng: 126.98229996,
              url: 'https://google.com',
              address: '서울 강남구 논현동 111');
        }
      }

      throw UnsupportedError("");
    }));
  }
}