import 'package:auto_size_text/auto_size_text.dart';
import 'package:card_swiper/card_swiper.dart';
import 'package:fixnum/fixnum.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:weddynew/screen/home/dress/detail/dress_detail_widget.dart';

import '../../../../../apis/biz/app_biz.pb.dart';
import '../../../../../resources/Colors.dart';
import '../../../../../resources/Images.dart';
import '../../../../../resources/Text.dart';
import '../../../../../utils/horizontal_swiper.dart';
import '../../weddinghall/weddinghall_detail/bloc/weddinghall_state.dart';
import '../bloc/detail_state.dart';

class VendorDetailWidget {
  Widget vendorDetail(
      context, state, GetVendorInfoResponse getVendorInfoResponse) {
    return SizedBox(
      height: 400,
      width: MediaQuery.of(context).size.width,
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: 400,
        alignment: Alignment.center,
        child: Column(
          children: [
            numberSlider(context, state),
            const SizedBox(
              height: 15,
            ),
            //Icon_Geo

            vendorText(
              'Icon_Geo.png',
              getVendorInfoResponse
                  .searchVendorProfile.companyAddress.cityAddress,
            ),
            const SizedBox(
              height: 10,
            ),
            //Watch_Icon

            SizedBox(
              width: 342,
              child: Row(
                children: [
                  const SizedBox(
                    width: 7.5,
                  ),
                  Images.getIcon('Watch_Icon.png'),
                  const SizedBox(
                    width: 15,
                  ),
                  AutoSizeText(
                      '평일:${changeTime(getVendorInfoResponse.vendorWorkingTime.weekdaysOpenTime)} - ${changeTime(getVendorInfoResponse.vendorWorkingTime.weekdaysCloseTime)}',
                      maxLines: 2,
                      style: TextItems.body2.copyWith(
                          color: ColorItems.spaceCadet,
                          fontSize: 14,
                          fontWeight: FontWeight.w400)),
                  const SizedBox(
                    width: 7.5,
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              padding: const EdgeInsets.only(left: 76.0),
              alignment: Alignment.centerLeft,
              child: AutoSizeText(
                  '주말:${changeTime(getVendorInfoResponse.vendorWorkingTime.weekendOpenTime)} - ${changeTime(getVendorInfoResponse.vendorWorkingTime.weekdendCloseTime)}',
                  style: TextItems.body2.copyWith(
                      color: ColorItems.spaceCadet,
                      fontSize: 14,
                      fontWeight: FontWeight.w400)),
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              padding: const EdgeInsets.only(left: 76.0),
              alignment: Alignment.centerLeft,
              child: AutoSizeText(
                  openingTime(getVendorInfoResponse.vendorWorkingTime),
                  style: TextItems.body6.copyWith(
                      color: ColorItems.imperialRed,
                      fontSize: 6,
                      fontWeight: FontWeight.w200)),
            ),

            const SizedBox(
              height: 10,
            ),
            //Icon_vendors_phone
            GestureDetector(
              onTap: () {
                showModalBottomSheet(
                    context: context,
                    builder: (context) => Container(
                          height: 150,
                          child: Column(
                            children: [
                              getVendorInfoResponse.searchVendorProfile
                                      .basicInfo.telNumber.isEmpty
                                  ? SizedBox(
                                      width: 0,
                                    )
                                  : GestureDetector(
                                      onTap: () async {
                                        final Uri url = Uri(
                                            scheme: 'tel',
                                            path: getVendorInfoResponse
                                                .searchVendorProfile
                                                .basicInfo
                                                .telNumber);

                                        if (await canLaunchUrl(url))
                                          await launchUrl(url);
                                      },
                                      child: SizedBox(
                                        height: 70,
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            const SizedBox(
                                              width: 7.5,
                                            ),
                                            Icon(Icons.phone),
                                            Text(getVendorInfoResponse
                                                .searchVendorProfile
                                                .basicInfo
                                                .telNumber),
                                          ],
                                        ),
                                      ),
                                    ),
                              SizedBox(
                                height: 10,
                              ),
                              getVendorInfoResponse.searchVendorProfile
                                      .basicInfo.phoneNumber.isEmpty
                                  ? SizedBox(
                                      width: 0,
                                    )
                                  : GestureDetector(
                                      onTap: () async {
                                        final Uri url = Uri(
                                            scheme: 'tel',
                                            path: getVendorInfoResponse
                                                .searchVendorProfile
                                                .basicInfo
                                                .phoneNumber);

                                        if (await canLaunchUrl(url))
                                          await launchUrl(url);
                                      },
                                      child: SizedBox(
                                        height: 70,
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Icon(Icons.phone),
                                            Text(getVendorInfoResponse
                                                .searchVendorProfile
                                                .basicInfo
                                                .phoneNumber),
                                          ],
                                        ),
                                      ),
                                    ),
                            ],
                          ),
                        ));
              },
              child: SizedBox(
                width: 342,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(
                      width: 7.5,
                    ),
                    Images.getIcon('Icon_vendors_phone.png'),
                    const SizedBox(
                      width: 15,
                    ),
                    Text('문의하기',
                        style: TextItems.body2.copyWith(
                            color: ColorItems.spaceCadet,
                            fontSize: 14,
                            fontWeight: FontWeight.w400)),
                    const SizedBox(
                      width: 7.5,
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget weddingHallDetail(
      context, state, GetWeddinghallInfoResponse getWeddingHall) {
    return SizedBox(
      height: 400,
      width: MediaQuery.of(context).size.width,
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: 400,
        alignment: Alignment.center,
        child: Column(
          children: [
            weddingHallnumberSlider(context, state),
            const SizedBox(
              height: 15,
            ),
            //Icon_Geo

            vendorText(
              'Icon_Geo.png',
              getWeddingHall.searchVendorProfile.companyAddress.cityAddress,
            ),

            const SizedBox(
              height: 14,
            ),
            SizedBox(
              width: 342,
              child: Row(
                children: [
                  const SizedBox(
                    width: 15,
                  ),
                  Images.getIcon('Watch_Icon.png'),
                  const SizedBox(
                    width: 15,
                  ),
                  Container(
                    padding: const EdgeInsets.only(left: 76.0),
                    alignment: Alignment.centerLeft,
                    child: AutoSizeText(
                        '평일:${changeTime(getWeddingHall.vendorWorkingTime.weekdaysOpenTime)} - ${changeTime(getWeddingHall.vendorWorkingTime.weekdaysCloseTime)}',
                        maxLines: 2,
                        style: TextItems.body2.copyWith(
                            color: ColorItems.spaceCadet,
                            fontSize: 14,
                            fontWeight: FontWeight.w400)),
                  ),
                  const SizedBox(
                    width: 7.5,
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 14,
            ),
            Container(
              padding: const EdgeInsets.only(left: 76.0),
              alignment: Alignment.centerLeft,
              child: AutoSizeText(
                  '주말:${changeTime(getWeddingHall.vendorWorkingTime.weekendOpenTime)} - ${changeTime(getWeddingHall.vendorWorkingTime.weekdendCloseTime)}',
                  style: TextItems.body2.copyWith(
                      color: ColorItems.spaceCadet,
                      fontSize: 14,
                      fontWeight: FontWeight.w400)),
            ),
            const SizedBox(
              height: 8,
            ),
            Container(
              padding: const EdgeInsets.only(left: 76.0),
              alignment: Alignment.centerLeft,
              child: AutoSizeText(openingTime(getWeddingHall.vendorWorkingTime),
                  style: TextItems.body6.copyWith(
                      color: ColorItems.imperialRed,
                      fontSize: 6,
                      fontWeight: FontWeight.w200)),
            ),

            const SizedBox(
              height: 14,
            ),
            //Icon_vendors_phone
            GestureDetector(
              onTap: () {
                showModalBottomSheet(
                    context: context,
                    builder: (context) => Container(
                          height: 150,
                          child: Column(
                            children: [
                              getWeddingHall.searchVendorProfile.basicInfo
                                      .telNumber.isEmpty
                                  ? SizedBox(
                                      width: 0,
                                    )
                                  : GestureDetector(
                                      onTap: () async {
                                        final Uri url = Uri(
                                            scheme: 'tel',
                                            path: getWeddingHall
                                                .searchVendorProfile
                                                .basicInfo
                                                .telNumber);

                                        if (await canLaunchUrl(url))
                                          await launchUrl(url);
                                      },
                                      child: SizedBox(
                                        height: 70,
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            const SizedBox(
                                              width: 7.5,
                                            ),
                                            Icon(Icons.phone),
                                            Text(getWeddingHall
                                                .searchVendorProfile
                                                .basicInfo
                                                .telNumber),
                                          ],
                                        ),
                                      ),
                                    ),
                              SizedBox(
                                height: 10,
                              ),
                              getWeddingHall.searchVendorProfile.basicInfo
                                      .phoneNumber.isEmpty
                                  ? SizedBox(
                                      width: 0,
                                    )
                                  : GestureDetector(
                                      onTap: () async {
                                        final Uri url = Uri(
                                            scheme: 'tel',
                                            path: getWeddingHall
                                                .searchVendorProfile
                                                .basicInfo
                                                .phoneNumber);

                                        if (await canLaunchUrl(url))
                                          await launchUrl(url);
                                      },
                                      child: SizedBox(
                                        height: 70,
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Icon(Icons.phone),
                                            Text(getWeddingHall
                                                .searchVendorProfile
                                                .basicInfo
                                                .phoneNumber),
                                          ],
                                        ),
                                      ),
                                    ),
                            ],
                          ),
                        ));
              },
              child: SizedBox(
                width: 342,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(
                      width: 15,
                    ),
                    Images.getIcon('Icon_vendors_phone.png'),
                    const SizedBox(
                      width: 15,
                    ),
                    Text('문의하기',
                        style: TextItems.body2.copyWith(
                            color: ColorItems.spaceCadet,
                            fontSize: 14,
                            fontWeight: FontWeight.w400)),
                    const SizedBox(
                      width: 7.5,
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  String changeTime(Int64 time) {
    String text = time.toString();

    switch (text.length) {
      case 3:
        if (text[1] == '0' && text[2] == '0') {
          text = text.substring(0, 1);
          text += '시';
        } else {
          text = text.substring(0, 1) + '시' + text.substring(1, 3) + '분';
        }

        break;
      case 4:
        if (text[2] == '0' && text[3] == '0') {
          text = text.substring(0, 2);
          text += '시';
        } else {
          text = text.substring(0, 2) + '시' + text.substring(2, 4) + '분';
        }
        break;
      default:
        return text + '시';
    }

    return text;
  }

  String openingTime(VendorWorkingTime dateModel) {
    Map<String, bool> t = {};
    final closing = {
      '월': dateModel.isMondayOff,
      '화': dateModel.isTuesdayOff,
      '수': dateModel.isWednesdayOff,
      '목': dateModel.isThursdayOff,
      '금': dateModel.isFridayOff,
      '토': dateModel.isSaturdayOff,
      '일': dateModel.isSundayOff
    };
    t.addAll(closing);

    t.removeWhere((key, value) => value == false);
    String text = '';
    if (t.isEmpty) {
      text = '';
    } else {
      text += '매주 ';
      t.forEach((key, value) {
        text += key + ', ';
      });

      text = text.substring(0, text.length - 2);
      text += " 정기휴무";
    }
    return text;
  }
}

Widget vendorText(
  String iconName,
  String text,
) {
  return SizedBox(
    width: 342,
    child: Row(
      children: [
        const SizedBox(
          width: 15,
        ),
        Images.getIcon(iconName),
        const SizedBox(
          width: 15,
        ),
        Text(text,
            style: TextItems.body2.copyWith(
                color: ColorItems.spaceCadet,
                fontSize: 14,
                fontWeight: FontWeight.w400)),
      ],
    ),
  );
}

Widget numberSlider(context, VendorDetailState state) {
  return state.getVendorInfoResponse!.searchVendorProfile.basicInfo.mainImageUrl
          .isEmpty
      ? Container(
          width: 350,
          height: 200,
          alignment: Alignment.center,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('이미지를 준비 중입니다',
                  style: TextItems.heading4.copyWith(
                    fontSize: 14,
                    fontWeight: FontWeight.w700,
                    color: ColorItems.spaceCadet,
                  )),
              const SizedBox(
                height: 20,
              ),
              Images.getIcon(
                'Graph_bunny_Pink.png',
              )
            ],
          ),
        )
      : Expanded(
          child: Swiper(
            itemBuilder: (context, index) {
              return GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, HorizontalSwiper.routeName,
                      arguments: HorizontalSwiper(
                          images: state.getVendorInfoResponse!
                              .searchVendorProfile.basicInfo.mainImageUrl,
                          name: 'shop'));
                },
                child: ClipRRect(
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(32),
                      bottomRight: Radius.circular(32)),
                  child: Image.network(
                    state.getVendorInfoResponse!.searchVendorProfile.basicInfo
                        .mainImageUrl[index],
                    fit: BoxFit.fill,
                  ),
                ),
              );
            },
            autoplay: false,
            itemCount: state.getVendorInfoResponse!.searchVendorProfile
                .basicInfo.mainImageUrl.length,
            pagination: SwiperPagination(
                margin: EdgeInsets.zero,
                builder: SwiperCustomPagination(builder: (context, config) {
                  return ConstrainedBox(
                    constraints: const BoxConstraints.expand(height: 30.0),
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Container(
                            width: 46,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius:
                                    BorderRadius.all(Radius.circular(12))),
                            margin: EdgeInsets.only(right: 24, bottom: 8),
                            child: Center(
                              child: Text(
                                '${config.activeIndex + 1}/${config.itemCount}',
                                style: TextItems.title6.copyWith(
                                    color: ColorItems.spaceCadet, fontSize: 12),
                              ),
                            ),
                          ),
                        ]),
                  );
                })),
            control: const SwiperControlCustom(
                color: Colors.transparent, disableColor: Colors.transparent),
          ),
        );
}

Widget weddingHallnumberSlider(context, WeddingHallDetailState state) {
  return state.weddinghallHallResponse!.searchVendorProfile.basicInfo
          .mainImageUrl.isEmpty
      ? Container(
          width: 350,
          height: 230,
          alignment: Alignment.center,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('이미지를 준비 중입니다',
                  style: TextItems.heading4.copyWith(
                    fontSize: 14,
                    fontWeight: FontWeight.w700,
                    color: ColorItems.spaceCadet,
                  )),
              const SizedBox(
                height: 20,
              ),
              Images.getIcon(
                'Graph_bunny_Pink.png',
              )
            ],
          ),
        )
      : Expanded(
          child: Swiper(
            itemBuilder: (context, index) {
              return GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, HorizontalSwiper.routeName,
                      arguments: HorizontalSwiper(
                          images: state.weddinghallHallResponse!
                              .searchVendorProfile.basicInfo.mainImageUrl,
                          name: 'shop'));
                },
                child: ClipRRect(
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(32),
                      bottomRight: Radius.circular(32)),
                  child: Image.network(
                    state.weddinghallHallResponse!.searchVendorProfile.basicInfo
                        .mainImageUrl[index],
                    fit: BoxFit.fill,
                  ),
                ),
              );
            },
            autoplay: false,
            itemCount: state.weddinghallHallResponse!.searchVendorProfile
                .basicInfo.mainImageUrl.length,
            pagination: SwiperPagination(
                margin: EdgeInsets.zero,
                builder: SwiperCustomPagination(builder: (context, config) {
                  return ConstrainedBox(
                    constraints: const BoxConstraints.expand(height: 30.0),
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Container(
                            width: 46,
                            decoration: const BoxDecoration(
                                color: Colors.white,
                                borderRadius:
                                    BorderRadius.all(Radius.circular(12))),
                            margin: EdgeInsets.only(right: 24, bottom: 8),
                            child: Center(
                              child: Text(
                                '${config.activeIndex + 1}/${config.itemCount}',
                                style: TextItems.title6.copyWith(
                                    color: ColorItems.spaceCadet, fontSize: 12),
                              ),
                            ),
                          ),
                        ]),
                  );
                })),
            control: const SwiperControlCustom(
                color: Colors.transparent, disableColor: Colors.transparent),
          ),
        );
}
