import 'dart:ffi';

import 'package:weddynew/apis/biz/app_biz.pb.dart';
import 'package:weddynew/common/consts.dart';
import 'package:weddynew/common/service_category_enum.dart';
import 'package:weddynew/model/user_item.dart';
import 'package:weddynew/model/family_link.dart';

import '../model/checklist_detail.dart';
import '../model/division.dart';
import '../model/purchase/contract.dart';
import '../model/timeline_model.dart';
import '../model/vendor_category.dart';
import '../model/vendor_service.dart';

import 'dart:math';
import 'dart:core';

class DummyData {
  static List<TimeLineGroup> getTimelineData() {
    List<TimeLineGroup> groups = [];

    Random random = Random();

    List<TimeLineItem> items1 = [];

    items1.add(TimeLineItem(
      1,
      "결혼식 지역, 날짜 선택",
      "결혼식 지역, 날짜 선택",
      "assets/icons/${icons[random.nextInt(icons.length)]}.png",
      false,
      true,
    ));
    items1.add(TimeLineItem(
      2,
      "상견례 장소, 날짜 선택, 예약",
      "",
      "assets/icons/${icons[random.nextInt(icons.length)]}.png",
      false,
      false,
    ));
    items1.add(TimeLineItem(
      3,
      "결혼식 예산 정하기",
      "",
      "assets/icons/${icons[random.nextInt(icons.length)]}.png",
      false,
      false,
    ));
    items1.add(TimeLineItem(
      4,
      "결혼 체크리스트 작성",
      "",
      "assets/icons/${icons[random.nextInt(icons.length)]}.png",
      true,
      false,
    ));
    items1.add(TimeLineItem(
      5,
      "웨딩홀 알아보기",
      "",
      "assets/icons/${icons[random.nextInt(icons.length)]}.png",
      true,
      true,
    ));

    List<TimeLineItem> items2 = [];
    items2.add(TimeLineItem(
      1,
      "신혼 여행지 정하기",
      "",
      "assets/icons/${icons[random.nextInt(icons.length)]}.png",
      false,
      false,
    ));
    items2.add(TimeLineItem(
      2,
      "여권, 비자, 여권 사진",
      "",
      "assets/icons/${icons[random.nextInt(icons.length)]}.png",
      false,
      false,
    ));
    items2.add(TimeLineItem(
      3,
      "혼수 품목 확인",
      "",
      "assets/icons/${icons[random.nextInt(icons.length)]}.png",
      false,
      false,
    ));
    items2.add(TimeLineItem(
      4,
      "건강 검진",
      "",
      "assets/icons/${icons[random.nextInt(icons.length)]}.png",
      false,
      false,
    ));
    items2.add(TimeLineItem(
      5,
      "다이어트 계획",
      "",
      "assets/icons/${icons[random.nextInt(icons.length)]}.png",
      false,
      false,
    ));

    items2.add(TimeLineItem(
      6,
      "웨딩홀 계약(폐백 확인)",
      "",
      "assets/icons/${icons[random.nextInt(icons.length)]}.png",
      false,
      true,
    ));
    items2.add(TimeLineItem(
      7,
      "웨딩홀 음식 테스팅 확인",
      "",
      "assets/icons/${icons[random.nextInt(icons.length)]}.png",
      false,
      false,
    ));

    List<TimeLineItem> items3 = [];
    items3.add(TimeLineItem(
      1,
      "헤어, 메이크업 확인 및 방문",
      "",
      "assets/icons/${icons[random.nextInt(icons.length)]}.png",
      true,
      true,
    ));
    items3.add(TimeLineItem(
      2,
      "식권 확인",
      "",
      "assets/icons/${icons[random.nextInt(icons.length)]}.png",
      true,
      false,
    ));
    items3.add(TimeLineItem(
      3,
      "부케 확인",
      "",
      "assets/icons/${icons[random.nextInt(icons.length)]}.png",
      true,
      true,
    ));
    items3.add(TimeLineItem(
      4,
      "피로연 장소 확인",
      "",
      "assets/icons/${icons[random.nextInt(icons.length)]}.png",
      false,
      false,
    ));

    TimeLineGroup group1 =
        TimeLineGroup(1, "D - 365", "결혼 준비를 시작하세요", -365, items1);

    TimeLineGroup group2 =
        TimeLineGroup(2, "D - 180", "결혼식 준비중입니다", -180, items2);

    TimeLineGroup group3 =
        TimeLineGroup(3, "D - 60", "결혼식 준비중입니다", -60, items3);
    TimeLineGroup group4 =
        TimeLineGroup(4, "D - 30", "결혼식 준비중입니다", -30, items3);
    TimeLineGroup group5 = TimeLineGroup(5, "D - Day", "결혼식 당일입니다", 0, items3);

    groups.add(group1);
    groups.add(group2);
    groups.add(group3);
    groups.add(group4);
    groups.add(group5);

    return groups;
  }

  static List<VendorCategoryItem> getCategoryData() {
    return [
      VendorCategoryItem(ServiceCategory.weddingHall.code,
          ServiceCategory.weddingHall.displayName, true, false),
      VendorCategoryItem(ServiceCategory.studio.code,
          ServiceCategory.studio.displayName, true, false),
      VendorCategoryItem(ServiceCategory.snap.code,
          ServiceCategory.snap.displayName, false, false),
      VendorCategoryItem(ServiceCategory.video.code,
          ServiceCategory.video.displayName, false, false),
      VendorCategoryItem(ServiceCategory.makeup.code,
          ServiceCategory.makeup.displayName, false, false),
      VendorCategoryItem(ServiceCategory.dress.code,
          ServiceCategory.dress.displayName, true, false),
      VendorCategoryItem(ServiceCategory.robes.code,
          ServiceCategory.robes.displayName, false, false),
      VendorCategoryItem(ServiceCategory.bouquet.code,
          ServiceCategory.bouquet.displayName, false, false),
      VendorCategoryItem(ServiceCategory.weddingCar.code,
          ServiceCategory.weddingCar.displayName, false, false),
      VendorCategoryItem(ServiceCategory.hanbok.code,
          ServiceCategory.hanbok.displayName, false, true),
      VendorCategoryItem(ServiceCategory.weddingCard.code,
          ServiceCategory.weddingCard.displayName, false, true),
      VendorCategoryItem(ServiceCategory.music.code,
          ServiceCategory.music.displayName, false, true),
      VendorCategoryItem(ServiceCategory.businessBuffet.code,
          ServiceCategory.businessBuffet.displayName, false, true)
    ];
  }

  static List<VendorService> getProductData() {
    List<VendorService> productData = [
      VendorService(
        id: 21,
        vendorName: "(주)마이웨딩홀",
        serviceCategory: ServiceCategory.weddingHall,
        price: 1230000,
        isImportant: true,
        isOptional: false,
        comments:
            '없이 자랑처럼 경, 속의 쉬이 가을로 이 릴케 봅니다. 마디씩 한 가을 이름과, 차 다하지 청춘이 책상을 거외다. 무덤 언덕 때 이네들은 멀리 된 있습니다. ',
      ),
      VendorService(
        id: 20,
        serviceCategory: ServiceCategory.studio,
        vendorName: "(주)스튜디오",
        price: 350000,
        isImportant: true,
        isOptional: false,
        comments:
            '없이 자랑처럼 경, 속의 쉬이 가을로 이 릴케 봅니다. 마디씩 한 가을 이름과, 차 다하지 청춘이 책상을 거외다. 무덤 언덕 때 이네들은 멀리 된 있습니다. ',
      ),
      VendorService(
        id: 19,
        serviceCategory: ServiceCategory.snap,
        vendorName: "(주)스냅",
        price: 520000,
        isImportant: false,
        isOptional: false,
        comments:
            '없이 자랑처럼 경, 속의 쉬이 가을로 이 릴케 봅니다. 마디씩 한 가을 이름과, 차 다하지 청춘이 책상을 거외다. 무덤 언덕 때 이네들은 멀리 된 있습니다. ',
      ),
      VendorService(
        id: 18,
        serviceCategory: ServiceCategory.video,
        vendorName: "마이영상",
        price: 3000000,
        isImportant: false,
        isOptional: false,
        comments:
            '없이 자랑처럼 경, 속의 쉬이 가을로 이 릴케 봅니다. 마디씩 한 가을 이름과, 차 다하지 청춘이 책상을 거외다. 무덤 언덕 때 이네들은 멀리 된 있습니다. ',
      ),
      VendorService(
        id: 17,
        serviceCategory: ServiceCategory.makeup,
        vendorName: "(주)마이메이크업",
        price: 500000,
        isImportant: false,
        isOptional: false,
        comments:
            '없이 자랑처럼 경, 속의 쉬이 가을로 이 릴케 봅니다. 마디씩 한 가을 이름과, 차 다하지 청춘이 책상을 거외다. 무덤 언덕 때 이네들은 멀리 된 있습니다. ',
      ),
      VendorService(
        id: 16,
        serviceCategory: ServiceCategory.dress,
        vendorName: "(주)드레스",
        price: 3000000,
        isImportant: true,
        isOptional: false,
        comments:
            '없이 자랑처럼 경, 속의 쉬이 가을로 이 릴케 봅니다. 마디씩 한 가을 이름과, 차 다하지 청춘이 책상을 거외다. 무덤 언덕 때 이네들은 멀리 된 있습니다. ',
      ),
      VendorService(
        id: 15,
        serviceCategory: ServiceCategory.robes,
        vendorName: "(주)함께예복",
        price: 1000000,
        isImportant: false,
        isOptional: false,
        comments:
            '없이 자랑처럼 경, 속의 쉬이 가을로 이 릴케 봅니다. 마디씩 한 가을 이름과, 차 다하지 청춘이 책상을 거외다. 무덤 언덕 때 이네들은 멀리 된 있습니다. ',
      ),
      VendorService(
        id: 14,
        serviceCategory: ServiceCategory.bouquet,
        vendorName: "(주)굿부케",
        price: 300000,
        isImportant: false,
        isOptional: false,
        comments:
            '없이 자랑처럼 경, 속의 쉬이 가을로 이 릴케 봅니다. 마디씩 한 가을 이름과, 차 다하지 청춘이 책상을 거외다. 무덤 언덕 때 이네들은 멀리 된 있습니다. ',
      ),
      VendorService(
        id: 13,
        serviceCategory: ServiceCategory.weddingCar,
        vendorName: "모두의카",
        price: 20000,
        isImportant: false,
        isOptional: false,
        comments:
            '없이 자랑처럼 경, 속의 쉬이 가을로 이 릴케 봅니다. 마디씩 한 가을 이름과, 차 다하지 청춘이 책상을 거외다. 무덤 언덕 때 이네들은 멀리 된 있습니다. ',
      ),
      VendorService(
        id: 12,
        serviceCategory: ServiceCategory.hanbok,
        vendorName: "(주)대한민국한복",
        price: 20000,
        isImportant: false,
        isOptional: true,
        comments:
            '없이 자랑처럼 경, 속의 쉬이 가을로 이 릴케 봅니다. 마디씩 한 가을 이름과, 차 다하지 청춘이 책상을 거외다. 무덤 언덕 때 이네들은 멀리 된 있습니다. ',
      ),
      VendorService(
        id: 11,
        serviceCategory: ServiceCategory.weddingCard,
        vendorName: "가자청첩장",
        price: 20000,
        isImportant: false,
        isOptional: true,
        comments:
            '없이 자랑처럼 경, 속의 쉬이 가을로 이 릴케 봅니다. 마디씩 한 가을 이름과, 차 다하지 청춘이 책상을 거외다. 무덤 언덕 때 이네들은 멀리 된 있습니다. ',
      ),
      VendorService(
        id: 10,
        serviceCategory: ServiceCategory.music,
        vendorName: "한누리연주",
        price: 20000,
        isImportant: false,
        isOptional: true,
        comments:
            '없이 자랑처럼 경, 속의 쉬이 가을로 이 릴케 봅니다. 마디씩 한 가을 이름과, 차 다하지 청춘이 책상을 거외다. 무덤 언덕 때 이네들은 멀리 된 있습니다. ',
      ),
      VendorService(
        id: 9,
        serviceCategory: ServiceCategory.businessBuffet,
        vendorName: "원더풀출장뷔페",
        isImportant: false,
        price: 20000,
        isOptional: true,
        comments:
            '없이 자랑처럼 경, 속의 쉬이 가을로 이 릴케 봅니다. 마디씩 한 가을 이름과, 차 다하지 청춘이 책상을 거외다. 무덤 언덕 때 이네들은 멀리 된 있습니다. ',
      ),
    ];

    return productData;
  }

  static List<UserServiceItem> getCheckListData() {
    Random random = Random();

    List<UserServiceItem> data = [
      UserServiceItem(
        itemId: 21,
        vendorService: VendorService(
            serviceCategory: ServiceCategory.weddingHall,
            vendorName: "(주)강남 웨딩홀",
            price: (random.nextInt(10) + 1) * 5000000,
            comments:
                '없이 자랑처럼 경, 속의 쉬이 가을로 이 릴케 봅니다. 마디씩 한 가을 이름과, 차 다하지 청춘이 책상을 거외다. 무덤 언덕 때 이네들은 멀리 된 있습니다. ',
            id: 1,
            isImportant: true,
            isOptional: false),
        isEnabled: true,
      ),
      UserServiceItem(
        itemId: 20,
        vendorService: VendorService(
            serviceCategory: ServiceCategory.studio,
            vendorName: "행복한 스튜디오",
            price: (random.nextInt(10) + 1) * 1000000,
            comments:
                '없이 자랑처럼 경, 속의 쉬이 가을로 이 릴케 봅니다. 마디씩 한 가을 이름과, 차 다하지 청춘이 책상을 거외다. 무덤 언덕 때 이네들은 멀리 된 있습니다. ',
            id: 1,
            isImportant: true,
            isOptional: false),
        isEnabled: true,
      ),
      UserServiceItem(
        itemId: 19,
        vendorService: VendorService(
            serviceCategory: ServiceCategory.snap,
            vendorName: "우리 스냅사진",
            price: (random.nextInt(10) + 1) * 1000000,
            comments:
                '없이 자랑처럼 경, 속의 쉬이 가을로 이 릴케 봅니다. 마디씩 한 가을 이름과, 차 다하지 청춘이 책상을 거외다. 무덤 언덕 때 이네들은 멀리 된 있습니다. ',
            id: 1,
            isImportant: true,
            isOptional: false),
        isEnabled: true,
      ),
      UserServiceItem(
        itemId: 17,
        vendorService: VendorService(
            serviceCategory: ServiceCategory.video,
            vendorName: "강남 영상",
            price: (random.nextInt(10) + 1) * 1000000,
            comments:
                '없이 자랑처럼 경, 속의 쉬이 가을로 이 릴케 봅니다. 마디씩 한 가을 이름과, 차 다하지 청춘이 책상을 거외다. 무덤 언덕 때 이네들은 멀리 된 있습니다. ',
            id: 1,
            isImportant: true,
            isOptional: false),
        isEnabled: true,
      ),
      UserServiceItem(
        itemId: 16,
        vendorService: VendorService(
            serviceCategory: ServiceCategory.makeup,
            vendorName: "가을 헤어/메이크업",
            price: (random.nextInt(10) + 1) * 100000,
            comments:
                '없이 자랑처럼 경, 속의 쉬이 가을로 이 릴케 봅니다. 마디씩 한 가을 이름과, 차 다하지 청춘이 책상을 거외다. 무덤 언덕 때 이네들은 멀리 된 있습니다. ',
            id: 1,
            isImportant: true,
            isOptional: false),
        isEnabled: true,
      ),
      UserServiceItem(
        itemId: 15,
        vendorService: VendorService(
            serviceCategory: ServiceCategory.dress,
            vendorName: "학동 드레스",
            price: (random.nextInt(10) + 1) * 100000,
            comments:
                '없이 자랑처럼 경, 속의 쉬이 가을로 이 릴케 봅니다. 마디씩 한 가을 이름과, 차 다하지 청춘이 책상을 거외다. 무덤 언덕 때 이네들은 멀리 된 있습니다. ',
            id: 1,
            isImportant: true,
            isOptional: false),
        isEnabled: true,
      ),
      UserServiceItem(
        itemId: 14,
        vendorService: VendorService(
            serviceCategory: ServiceCategory.robes,
            vendorName: "(주)강남예복",
            price: (random.nextInt(10) + 1) * 100000,
            comments:
                '없이 자랑처럼 경, 속의 쉬이 가을로 이 릴케 봅니다. 마디씩 한 가을 이름과, 차 다하지 청춘이 책상을 거외다. 무덤 언덕 때 이네들은 멀리 된 있습니다. ',
            id: 1,
            isImportant: false,
            isOptional: false),
        isEnabled: true,
      ),
      UserServiceItem(
        itemId: 13,
        vendorService: VendorService(
            serviceCategory: ServiceCategory.bouquet,
            vendorName: "뷰티풀 부케",
            price: (random.nextInt(10) + 1) * 100000,
            comments:
                '없이 자랑처럼 경, 속의 쉬이 가을로 이 릴케 봅니다. 마디씩 한 가을 이름과, 차 다하지 청춘이 책상을 거외다. 무덤 언덕 때 이네들은 멀리 된 있습니다. ',
            id: 1,
            isImportant: false,
            isOptional: false),
        isEnabled: true,
      ),
      UserServiceItem(
        itemId: 12,
        vendorService: VendorService(
            serviceCategory: ServiceCategory.weddingCar,
            vendorName: "굿 웨딩카",
            price: (random.nextInt(10) + 1) * 100000,
            comments:
                '없이 자랑처럼 경, 속의 쉬이 가을로 이 릴케 봅니다. 마디씩 한 가을 이름과, 차 다하지 청춘이 책상을 거외다. 무덤 언덕 때 이네들은 멀리 된 있습니다. ',
            id: 1,
            isImportant: false,
            isOptional: false),
        isEnabled: true,
      ),
    ];

    return data;
  }

  static List<FamilyLink> getFamilyLinkData() {
    List<FamilyLink> items = [];

    items.add(FamilyLink(
        id: 1,
        name: "홍길동",
        phoneNumber: "12343213",
        linkType: 1,
        familyName: "신랑"));
    items.add(FamilyLink(
        id: 1,
        name: "홍길동1",
        phoneNumber: "12343213",
        linkType: 1,
        familyName: "아빠"));
    items.add(FamilyLink(
        id: 1,
        name: "홍길동2",
        phoneNumber: "12343213",
        linkType: 1,
        familyName: "엄마"));
    items.add(FamilyLink(
        id: 1,
        name: "홍길동5",
        phoneNumber: "12343213",
        linkType: 1,
        familyName: "하객"));
    return items;
  }

  static List<Division> getDivisions() {
    return [
      Division(code: 99, displayName: "전국"),
      Division(code: 1, displayName: "서울"),
      Division(code: 2, displayName: "경기도"),
      Division(code: 3, displayName: "경상도"),
      Division(code: 4, displayName: "전라도"),
      Division(code: 5, displayName: "충청도"),
      Division(code: 6, displayName: "강원도"),
      Division(code: 7, displayName: "제주도"),
      Division(code: 10, displayName: "대구광역시"),
      Division(code: 11, displayName: "인천광역시"),
      Division(code: 12, displayName: "광주광역시"),
      Division(code: 13, displayName: "울산광역시"),
      Division(code: 14, displayName: "대전광역시"),
      Division(code: 15, displayName: "부산광역시"),
    ];
  }

  static List<String> getWeddingStyles() {
    return ["일반 웨딩", "스몰 웨딩", "전통", "기타"];
  }

  static ChecklistDetail getChecklistDetail() {
    final List<ContractHistoryItem> contractHistory = [];

    return ChecklistDetail(0, '강남 웨딩홀', '서울시 강남구');
  }
}
