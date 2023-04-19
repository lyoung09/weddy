import 'package:weddynew/common/consts.dart';
import 'package:weddynew/common/service_category_enum.dart';

import '../model/division.dart';
import '../model/purchase/contract.dart';
import '../model/timeline_model.dart';
import '../model/vendor_category.dart';

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
}
