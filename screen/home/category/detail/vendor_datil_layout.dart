import 'package:auto_size_text/auto_size_text.dart';
import 'package:bottom_sheet/bottom_sheet.dart';
import 'package:card_swiper/card_swiper.dart';
import 'package:fixnum/fixnum.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:url_launcher/url_launcher.dart';
import 'package:weddynew/apis/biz/app_biz.pb.dart';
import 'package:weddynew/apis/category/category_model.dart';

import 'package:weddynew/resources/Text.dart';
import 'package:badges/badges.dart' as badges;
import 'package:weddynew/screen/home/category/detail/video/video_view.dart';
import 'package:weddynew/screen/home/category/detail/widget/like_button.dart';
import 'package:weddynew/screen/home/category/detail/widget/vendor_detail.dart';
import 'package:weddynew/screen/home/category/like/like_page.dart';
import 'package:weddynew/screen/home/category/list/vendor_list_page.dart';

import '../../../../base/base_stateless_widget.dart';
import '../../../../resources/Colors.dart';
import '../../../../resources/Images.dart';
import '../../../../utils/horizontal_swiper.dart';
import '../list/bloc/vendor_list_bloc.dart';
import 'bloc/detail_bloc.dart';
import 'bloc/detail_event.dart';
import 'bloc/detail_state.dart';
import 'bottom_modal.dart';
import 'vendor_detail_item_widget.dart';

class CategoryDetailLayout extends BaseStatelessWidget {
  final VendorDetailState state;
  final CategoryModel category;
  final int popindex;
  CategoryDetailLayout(
      {Key? key,
      required this.state,
      required this.category,
      required this.popindex})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    Map<int, bool> checkingItems = Map.from(state.isChecked ?? {});
    List<VendorItem> selected = List.of(state.selected);

    return Scaffold(
      appBar: PreferredSize(
          preferredSize: const Size.fromHeight(52),
          child: AppBar(
            leading: IconButton(
              icon: Images.getIcon('icon_arrow', color: ColorItems.salmon),
              onPressed: () {
                if (popindex == 0) {
                  Navigator.popAndPushNamed(context, VendorListPage.routeName,
                      arguments: category);
                }
                if (popindex == 1) {
                  Navigator.pop(context);
                }
              },
            ),
            title: AutoSizeText(
              state.getVendorInfoResponse!.searchVendorProfile.basicInfo
                          .companyName.length >=
                      13
                  ? state.getVendorInfoResponse!.searchVendorProfile.basicInfo
                      .companyName
                      .substring(0, 13)
                  : state.getVendorInfoResponse!.searchVendorProfile.basicInfo
                      .companyName,
              style: Theme.of(context).textTheme.headlineSmall,
            ),
            elevation: 0,
            actions: [LikeButtonWidget(isLiked: state.isLiked)],
          )),
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(children: [
          VendorDetailWidget()
              .vendorDetail(context, state, state.getVendorInfoResponse!),
          const Divider(
            color: ColorItems.blueWeb,
            thickness: 1.2,
          ),
          const SizedBox(
            height: 18,
          ),
          VideoWidget(videoList: state.videoList),
          state.videoList.isEmpty
              ? const SizedBox()
              : Padding(
                  padding: const EdgeInsets.only(bottom: 20.0),
                  child: Row(
                    children: [
                      const SizedBox(
                        width: 20,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 10),
                        child: Images.getIcon('Ellipse_Vector.png',
                            width: 12, height: 12),
                      ),
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.only(left: 15.0, right: 15),
                          child: Text(
                              '본 영상 자료는 판매자가 직접 제공한 자료입니다.제작, 제공 및 관리 등에 대한 책임은 판매자에게 있습니다. ',
                              textScaleFactor: 1.1,
                              maxLines: 2,
                              style: TextItems.body2.copyWith(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400,
                                  color: ColorItems.spaceCadet)),
                        ),
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                    ],
                  ),
                ),
          Padding(
            padding: const EdgeInsets.only(left: 15.0, right: 15),
            child: ItemDetail(
                vendorId:
                    state.getVendorInfoResponse!.searchVendorProfile.id.toInt(),
                context: context,
                vendors: state.getVendorInfoResponse!.vendorItemList,
                selected: selected,
                isChecked: checkingItems),
          ),
          const SizedBox(
            height: 55,
          )
        ]),
      ),
      floatingActionButton: category.vendorServiceCode == 1100
          ? const SizedBox()
          : SizedBox(
              width: 268,
              height: 54,
              child: FittedBox(
                child: FloatingActionButton.extended(
                  onPressed: () {
                    //bool? a;

                    List<int> t =
                        checkingItems.entries.map((e) => e.key).toList();

                    // selected
                    //         .where((element) => t.contains(element.itemId.toInt()))
                    //         .where((element) => element.groupId == 1)
                    //         .map((e) => e)
                    //         .isEmpty
                    //     ? a = false
                    //     : a = true;

                    selected
                            .where((element) =>
                                t.contains(element.itemId.toInt()) &&
                                element.groupId == 1)
                            .map((e) => e)
                            .isNotEmpty
                        ? _showSheet(context, selected, state, checkingItems)
                        : _showDialog(context, '필수 상품을 1개 이상 선택해주세요');
                  },
                  label: Text(
                    '상품 선택 완료하기',
                    style: TextItems.heading3.copyWith(color: Colors.white),
                  ),
                  icon: SizedBox(
                    width: 55,
                    height: 55,
                    child: checkingItems.isEmpty ||
                            checkingItems.containsValue(true) == false
                        ? Center(
                            child: Images.getIcon('Icon_scrap.png'),
                          )
                        : _shoppingScrapBadge(checkingItems),
                  ),
                  backgroundColor: ColorItems.primary,
                  extendedPadding: const EdgeInsets.only(
                      left: 40, right: 40, top: 20, bottom: 20),
                ),
              ),
            ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }

  Widget _shoppingScrapBadge(Map<int, bool> checkingItems) {
    return badges.Badge(
      position: badges.BadgePosition.topEnd(top: 5, end: 8),
      badgeAnimation: const badges.BadgeAnimation.fade(),
      showBadge: checkingItems.isNotEmpty,
      badgeStyle: const badges.BadgeStyle(
        badgeColor: ColorItems.maximumRed,
      ),
      badgeContent: checkingItems == null || checkingItems.isEmpty
          ? const SizedBox(
              width: 0,
            )
          : Text(
              checkingItems.values
                  .where((element) => element == true)
                  .length
                  .toString(),
              style: TextItems.heading5
                  .copyWith(color: Colors.white, fontSize: 10),
            ),
      child: Center(child: Images.getIcon('Icon_scrap.png')),
    );
  }

  Widget vendorDetail(
      context, state, GetVendorInfoResponse getVendorInfoResponse) {
    return SizedBox(
      height: 364.7,
      width: MediaQuery.of(context).size.width,
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: 346.74,
        alignment: Alignment.center,
        child: Column(
          children: [
            numberSlider(context, state),
            const SizedBox(
              height: 10,
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
                  Images.getIcon('Watch_Icon.png'),
                  const SizedBox(
                    width: 15,
                  ),
                  AutoSizeText(
                      '평일:${changeTime(getVendorInfoResponse.vendorWorkingTime.weekdaysOpenTime)} - ${changeTime(getVendorInfoResponse.vendorWorkingTime.weekdaysCloseTime)} ${openingTime(getVendorInfoResponse.vendorWorkingTime)}',
                      maxLines: 2,
                      style: TextItems.body2.copyWith(
                          color: ColorItems.spaceCadet,
                          fontSize: 14,
                          fontWeight: FontWeight.w400)),
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              padding: const EdgeInsets.only(left: 68.0),
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
                      fontWeight: FontWeight.w400)),
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
                    Images.getIcon('Icon_vendors_phone.png'),
                    const SizedBox(
                      width: 15,
                    ),
                    Text('문의하기',
                        style: TextItems.body2.copyWith(
                            color: ColorItems.spaceCadet,
                            fontSize: 14,
                            fontWeight: FontWeight.w400)),
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

  void _showSheet(BuildContext context, List<VendorItem> selected,
      VendorDetailState state, checkingItems) {
    context
        .read<VendorDetailBloc>()
        .add(IsCheckedEvent(isChecked: checkingItems, vendorList: selected));
    showModalBottomSheet<void>(
        context: context,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(30), topRight: Radius.circular(30)),
        ),
        builder: (_) {
          return BlocProvider.value(
            value: BlocProvider.of<VendorDetailBloc>(context),
            child: VendorBottomDetailItemModal(
                context: context,
                key: UniqueKey(),
                state: state,
                selected: selected,
                vendorServiceCode: category.vendorServiceCode.toInt()),
          );
        });
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
            control: const SwiperControl(
                color: Colors.transparent, disableColor: Colors.transparent),
          ),
        );
}

_showDialog(context, text) {
  showDialog(
    context: context,
    builder: (context) => AlertDialog(
      shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(18.0))),
      content: SizedBox(
        width: 260,
        height: 130,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            const SizedBox(
              height: 12,
            ),
            Container(
              width: 232,
              height: 54,
              padding: const EdgeInsets.only(left: 12, right: 12),
              child: Center(
                child: Text(
                  text,
                  textAlign: TextAlign.center,
                  style: TextItems.title7
                      .copyWith(color: ColorItems.spaceCadet, fontSize: 14),
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            ElevatedButton(
                style: ElevatedButton.styleFrom(
                    backgroundColor: ColorItems.spaceCadet,
                    fixedSize: const Size(72, 28),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(18))),
                child: Text(
                  '확인',
                  style: TextItems.title5
                      .copyWith(color: ColorItems.white, fontSize: 14),
                ),
                onPressed: () {
                  Navigator.of(context).pop();
                }),
          ],
        ),
      ),
    ),
  );
}
