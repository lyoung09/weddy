import 'package:weddy_ceres/common/consts.dart';
import 'package:weddy_ceres/common/service_category_enum.dart';
import 'package:weddy_ceres/model/user_item.dart';
import 'package:weddy_ceres/model/family_link.dart';

import '../model/vendor_service.dart';
import '../model/timeline_group.dart';
import '../model/timeline_item.dart';
import 'dart:math';
import 'dart:core';

class DummyData {
  static List<TimelineGroup> getTimelineData() {
    List<TimelineGroup> groups = [];

    Random random = Random();

    List<TimelineItem> items1 = [];
    items1.add(TimelineItem(
        itemId: 1,
        checked: true,
        title: "결혼식 지역, 날짜 선택",
        desc: "결혼식 지역, 날짜 선택",
        isMandatory: false,
        assetIconName:
            "assets/icons/${icons[random.nextInt(icons.length)]}.png"));
    items1.add(TimelineItem(
        itemId: 2,
        checked: false,
        title: "상견례 장소, 날짜 선택, 예약",
        desc: "",
        isMandatory: false,
        assetIconName:
            "assets/icons/${icons[random.nextInt(icons.length)]}.png"));
    items1.add(TimelineItem(
        itemId: 3,
        checked: false,
        title: "결혼식 예산 정하기",
        isMandatory: false,
        desc: "",
        assetIconName:
            "assets/icons/${icons[random.nextInt(icons.length)]}.png"));
    items1.add(TimelineItem(
        itemId: 4,
        checked: false,
        title: "결혼 체크리스트 작성",
        desc: "",
        isMandatory: true,
        assetIconName:
            "assets/icons/${icons[random.nextInt(icons.length)]}.png"));
    items1.add(TimelineItem(
        itemId: 5,
        checked: true,
        title: "웨딩홀 알아보기",
        isMandatory: true,
        desc: "",
        assetIconName:
            "assets/icons/${icons[random.nextInt(icons.length)]}.png"));

    List<TimelineItem> items2 = [];
    items2.add(TimelineItem(
        itemId: 1,
        checked: false,
        title: "신혼 여행지 정하기",
        isMandatory: false,
        desc: "",
        assetIconName:
            "assets/icons/${icons[random.nextInt(icons.length)]}.png"));
    items2.add(TimelineItem(
        itemId: 2,
        checked: false,
        title: "여권, 비자, 여권 사진",
        isMandatory: false,
        desc: "",
        assetIconName:
            "assets/icons/${icons[random.nextInt(icons.length)]}.png"));
    items2.add(TimelineItem(
        itemId: 3,
        checked: false,
        title: "혼수 품목 확인",
        isMandatory: false,
        desc: "",
        assetIconName:
            "assets/icons/${icons[random.nextInt(icons.length)]}.png"));
    items2.add(TimelineItem(
        itemId: 4,
        checked: false,
        title: "건강 검진",
        isMandatory: false,
        desc: "",
        assetIconName:
            "assets/icons/${icons[random.nextInt(icons.length)]}.png"));
    items2.add(TimelineItem(
        itemId: 5,
        checked: false,
        title: "다이어트 계획",
        isMandatory: false,
        desc: "",
        assetIconName:
            "assets/icons/${icons[random.nextInt(icons.length)]}.png"));

    items2.add(TimelineItem(
        itemId: 6,
        title: "웨딩홀 계약(폐백 확인)",
        checked: false,
        isMandatory: true,
        desc: "",
        assetIconName:
            "assets/icons/${icons[random.nextInt(icons.length)]}.png"));
    items2.add(TimelineItem(
        itemId: 7,
        checked: false,
        title: "웨딩홀 음식 테스팅 확인",
        isMandatory: false,
        desc: "",
        assetIconName:
            "assets/icons/${icons[random.nextInt(icons.length)]}.png"));

    List<TimelineItem> items3 = [];
    items3.add(TimelineItem(
        itemId: 1,
        title: "헤어, 메이크업 확인 및 방문",
        isMandatory: true,
        desc: "",
        checked: true,
        assetIconName:
            "assets/icons/${icons[random.nextInt(icons.length)]}.png"));
    items3.add(TimelineItem(
        itemId: 2,
        checked: false,
        title: "식권 확인",
        isMandatory: true,
        desc: "",
        assetIconName:
            "assets/icons/${icons[random.nextInt(icons.length)]}.png"));
    items3.add(TimelineItem(
        itemId: 3,
        checked: true,
        title: "부케 확인",
        isMandatory: true,
        desc: "",
        assetIconName:
            "assets/icons/${icons[random.nextInt(icons.length)]}.png"));
    items3.add(TimelineItem(
        itemId: 4,
        checked: false,
        title: "피로연 장소 확인",
        isMandatory: false,
        desc: "",
        assetIconName:
            "assets/icons/${icons[random.nextInt(icons.length)]}.png"));

    TimelineGroup group1 = TimelineGroup(
        groupId: 1,
        title: "D-365",
        subTitle: "결혼 준비를 시작하세요",
        remainingDays: -365,
        items: items1);

    TimelineGroup group2 = TimelineGroup(
        groupId: 2,
        title: "D-180",
        subTitle: "결혼식 준비중입니다",
        remainingDays: -180,
        items: items2);

    TimelineGroup group3 = TimelineGroup(
        groupId: 3,
        title: "D-60",
        subTitle: "결혼식 준비중입니다",
        remainingDays: -60,
        items: items3);
    TimelineGroup group4 = TimelineGroup(
        groupId: 4,
        title: "D-30",
        subTitle: "결혼식 준비중입니다",
        remainingDays: -30,
        items: items3);
    TimelineGroup group5 = TimelineGroup(
        groupId: 5,
        title: "D-Day",
        subTitle: "결혼식 당일입니다",
        remainingDays: 0,
        items: items3);

    groups.add(group1);
    groups.add(group2);
    groups.add(group3);
    groups.add(group4);
    groups.add(group5);

    return groups;
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
        id: 17,
        serviceCategory: ServiceCategory.video,
        vendorName: "마이영상",
        price: 3000000,
        isImportant: false,
        isOptional: false,
        comments:
            '없이 자랑처럼 경, 속의 쉬이 가을로 이 릴케 봅니다. 마디씩 한 가을 이름과, 차 다하지 청춘이 책상을 거외다. 무덤 언덕 때 이네들은 멀리 된 있습니다. ',
      ),
      VendorService(
        id: 16,
        serviceCategory: ServiceCategory.makeup,
        vendorName: "(주)마이메이크업",
        price: 500000,
        isImportant: false,
        isOptional: false,
        comments:
            '없이 자랑처럼 경, 속의 쉬이 가을로 이 릴케 봅니다. 마디씩 한 가을 이름과, 차 다하지 청춘이 책상을 거외다. 무덤 언덕 때 이네들은 멀리 된 있습니다. ',
      ),
      VendorService(
        id: 15,
        serviceCategory: ServiceCategory.dress,
        vendorName: "(주)드레스",
        price: 3000000,
        isImportant: true,
        isOptional: false,
        comments:
            '없이 자랑처럼 경, 속의 쉬이 가을로 이 릴케 봅니다. 마디씩 한 가을 이름과, 차 다하지 청춘이 책상을 거외다. 무덤 언덕 때 이네들은 멀리 된 있습니다. ',
      ),
      VendorService(
        id: 14,
        serviceCategory: ServiceCategory.robes,
        vendorName: "(주)함께예복",
        price: 1000000,
        isImportant: false,
        isOptional: false,
        comments:
            '없이 자랑처럼 경, 속의 쉬이 가을로 이 릴케 봅니다. 마디씩 한 가을 이름과, 차 다하지 청춘이 책상을 거외다. 무덤 언덕 때 이네들은 멀리 된 있습니다. ',
      ),
      VendorService(
        id: 13,
        serviceCategory: ServiceCategory.bouquet,
        vendorName: "(주)굿부케",
        price: 300000,
        isImportant: false,
        isOptional: false,
        comments:
            '없이 자랑처럼 경, 속의 쉬이 가을로 이 릴케 봅니다. 마디씩 한 가을 이름과, 차 다하지 청춘이 책상을 거외다. 무덤 언덕 때 이네들은 멀리 된 있습니다. ',
      ),
      VendorService(
        id: 12,
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
        id: 12,
        serviceCategory: ServiceCategory.weddingCard,
        vendorName: "가자청첩장",
        price: 20000,
        isImportant: false,
        isOptional: true,
        comments:
            '없이 자랑처럼 경, 속의 쉬이 가을로 이 릴케 봅니다. 마디씩 한 가을 이름과, 차 다하지 청춘이 책상을 거외다. 무덤 언덕 때 이네들은 멀리 된 있습니다. ',
      ),
      VendorService(
        id: 12,
        serviceCategory: ServiceCategory.music,
        vendorName: "한누리연주",
        price: 20000,
        isImportant: false,
        isOptional: true,
        comments:
            '없이 자랑처럼 경, 속의 쉬이 가을로 이 릴케 봅니다. 마디씩 한 가을 이름과, 차 다하지 청춘이 책상을 거외다. 무덤 언덕 때 이네들은 멀리 된 있습니다. ',
      ),
      VendorService(
        id: 12,
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
}
