import 'package:fixnum/fixnum.dart';

import 'category_model.dart';

class CategoryList {
  static List<CategoryModel> getCategoryList() {
    List<CategoryModel> categoryListData = [];

    categoryListData.add(CategoryModel(
        isMandatory: true,
        vendorServiceCode: 1100,
        vendorServiceText: '웨딩홀',
        vendorIconImageUrl: 'assets/category/Icon_vendors_wedding_hall.png',
        image: 'assets/vendorImage/VendorBanner_weddingHall.jpeg'));

    categoryListData.add(CategoryModel(
        vendorServiceCode: 1200,
        vendorServiceText: '스튜디오',
        vendorIconImageUrl: 'assets/category/Icon_vendors_photo_studio.png',
        isMandatory: true,
        image: 'assets/vendorImage/VendorBanner_studio.jpeg'));
    categoryListData.add(CategoryModel(
        vendorServiceCode: 1300,
        vendorServiceText: '드레스',
        image: 'assets/vendorImage/VendorBanner_weddingDress.jpeg',
        vendorIconImageUrl: 'assets/category/Icon_vendors_wedding_dress.png',
        isMandatory: true));
    categoryListData.add(CategoryModel(
        vendorServiceCode: 1400,
        vendorServiceText: '턱시도',
        vendorIconImageUrl: 'assets/category/Icon_vendors_tuxedo.png',
        image: 'assets/vendorImage/VendorBanner_tuxedo.jpeg',
        isMandatory: true));
    categoryListData.add(CategoryModel(
        vendorServiceCode: 1500,
        vendorServiceText: '헤어/메이크업',
        vendorIconImageUrl: 'assets/category/Icon_vendors_hair_makeup.png',
        image: 'assets/vendorImage/VendorBanner_hair_makeup.jpeg',
        isMandatory: true));
    categoryListData.add(CategoryModel(
        vendorServiceCode: 1600,
        vendorServiceText: '부케',
        vendorIconImageUrl: 'assets/category/Icon_vendors_bouquet.png',
        image: 'assets/vendorImage/VendorBanner_bouquet.jpeg',
        isMandatory: true));
    categoryListData.add(CategoryModel(
        vendorServiceCode: 1700,
        vendorServiceText: '한복',
        vendorIconImageUrl: 'assets/category/Icon_vendors_hanbok.png',
        image: 'assets/vendorImage/VendorBanner_hanbok.jpeg',
        isMandatory: true));
    categoryListData.add(CategoryModel(
        vendorServiceCode: 1800,
        vendorServiceText: '본식스냅',
        vendorIconImageUrl: 'assets/category/Icon_vendors_snap_picture.png',
        image: 'assets/vendorImage/VendorBanner_snapPicture.jpeg',
        isMandatory: true));
    categoryListData.add(CategoryModel(
        vendorServiceCode: 1900,
        vendorServiceText: '본식영상',
        vendorIconImageUrl: 'assets/category/Icon_vendors_video_recording.png',
        image: 'assets/vendorImage/VendorBanner_video_recording.png',
        isMandatory: true));
    categoryListData.add(CategoryModel(
        vendorServiceCode: 2000,
        vendorServiceText: '예물',
        image: 'assets/vendorImage/VendorBanner_wedding_ring.jpeg',
        vendorIconImageUrl: 'assets/category/Icon_vendors_wedding_ring.png',
        isMandatory: true));
    categoryListData.add(CategoryModel(
        vendorServiceCode: 2100,
        vendorServiceText: '신혼여행',
        vendorIconImageUrl: 'assets/category/Icon_vendors_honeymoon.png',
        image: 'assets/vendorImage/VendorBanner_honeymoon.jpg',
        isMandatory: true));
    categoryListData.add(CategoryModel(
        vendorServiceCode: 2200,
        vendorServiceText: '사회/주례',
        vendorIconImageUrl: 'assets/category/Icon_vendors_host_officiator.png',
        image: 'assets/vendorImage/VendorBanner_host_officiator.jpeg',
        isMandatory: true));
    categoryListData.add(CategoryModel(
        vendorServiceCode: 2300,
        vendorServiceText: '연주/축가',
        vendorIconImageUrl: 'assets/category/Icon_vendors_performance_song.png',
        isMandatory: false));
    categoryListData.add(CategoryModel(
        vendorServiceCode: 2400,
        vendorServiceText: '결혼식 행진곡',
        vendorIconImageUrl: 'assets/category/Icon_vendors_wedding_march.png',
        isMandatory: false));
    categoryListData.add(CategoryModel(
        vendorServiceCode: 2500,
        vendorServiceText: '뮤지컬 웨딩',
        vendorIconImageUrl: 'assets/category/Icon_vendors_musical_wedding.png',
        isMandatory: false));
    categoryListData.add(CategoryModel(
        vendorServiceCode: 2600,
        vendorServiceText: '데이트 스냅',
        vendorIconImageUrl: 'assets/category/Icon_vendors_outdoor_picture.png',
        isMandatory: false));
    categoryListData.add(CategoryModel(
        vendorServiceCode: 2700,
        vendorServiceText: '스킨케어',
        vendorIconImageUrl: 'assets/category/Icon_vendors_skincare.png',
        isMandatory: false));
    categoryListData.add(CategoryModel(
        vendorServiceCode: 2800,
        vendorServiceText: '출장뷔폐',
        vendorIconImageUrl: 'assets/category/Icon_vendors_buffet.png',
        isMandatory: false));
    categoryListData.add(CategoryModel(
        vendorServiceCode: 2900,
        vendorServiceText: '웨딩 디렉터',
        vendorIconImageUrl: 'assets/category/Icon_vendors_wedding_director.png',
        isMandatory: false));
    categoryListData.add(CategoryModel(
        vendorServiceCode: 3000,
        vendorServiceText: '여권/가족사진',
        vendorIconImageUrl:
            'assets/category/Icon_vendors_passport_familyPicture.png',
        isMandatory: false));
    return categoryListData;
  }
}
