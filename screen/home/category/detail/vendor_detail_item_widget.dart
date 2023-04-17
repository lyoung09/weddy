import 'dart:async';
import 'dart:developer';
import 'dart:ui';

import 'package:card_swiper/card_swiper.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';
import 'package:getwidget/components/carousel/gf_carousel.dart';
import 'package:weddynew/resources/Colors.dart';
import 'package:weddynew/screen/home/category/detail/bloc/detail_event.dart';
import '../../../../apis/biz/app_biz.pb.dart';
import '../../../../resources/Images.dart';
import '../../../../resources/Text.dart';
import '../../../../utils/custom_string.dart';
import '../../../../utils/horizontal_swiper.dart';

import 'bloc/detail_bloc.dart';

class ItemDetail extends StatefulWidget {
  final List<VendorItem> vendors;
  final List<VendorItem> selected;
  final BuildContext context;
  final Map<int, bool> isChecked;
  final int vendorId;
  const ItemDetail(
      {super.key,
      required this.selected,
      required this.context,
      required this.vendorId,
      required this.isChecked,
      required this.vendors});

  @override
  State<ItemDetail> createState() => _ItemDetailState();
}

class _ItemDetailState extends State<ItemDetail> {
  bool? isChecked;
  late Map<int, bool> checkingItems;

  List<VendorItem> requiredItems = [];
  List<VendorItem> optionItems = [];

  @override
  void initState() {
    super.initState();

    requiredItems =
        widget.vendors.where((element) => element.groupId == 1).toList();

    optionItems =
        widget.vendors.where((element) => element.groupId == 2).toList();

    checkingItems = widget.isChecked;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          alignment: Alignment.centerLeft,
          padding: const EdgeInsets.only(left: 12.0, top: 8, bottom: 10),
          child: Container(
            alignment: Alignment.centerLeft,
            padding:
                const EdgeInsets.only(left: 6, right: 6, top: 4, bottom: 4),
            decoration: BoxDecoration(
                border: Border.all(color: ColorItems.spaceCadet),
                borderRadius: const BorderRadius.all(Radius.circular(18))),
            width: 120,
            height: 30,
            child: Center(
                child: Text(
              "필수선택상품",
              style: TextItems.title4
                  .copyWith(color: ColorItems.spaceCadet, fontSize: 16),
            )),
          ),
        ),
        list(requiredItems),
        Container(
          alignment: Alignment.centerLeft,
          padding: const EdgeInsets.only(left: 12.0, top: 8, bottom: 10),
          child: Container(
            alignment: Alignment.centerLeft,
            padding:
                const EdgeInsets.only(left: 6, right: 6, top: 4, bottom: 4),
            decoration: BoxDecoration(
                border: Border.all(color: ColorItems.primary),
                borderRadius: const BorderRadius.all(Radius.circular(18))),
            width: 120,
            height: 30,
            child: Center(
                child: Text(
              "옵션선택상품",
              style: TextItems.title4
                  .copyWith(color: ColorItems.primary, fontSize: 16),
            )),
          ),
        ),
        list(optionItems)
      ],
    );
  }

  Widget list(List<VendorItem> list) {
    return ListView(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        children: list
            .map((e) => Container(
                height: 393,
                width: 342,
                padding: const EdgeInsets.only(top: 20, bottom: 20),
                decoration: const BoxDecoration(
                  border: Border(
                      bottom:
                          BorderSide(width: 2.0, color: ColorItems.cultured)),
                ),
                child: Column(
                  children: [
                    getImages(e, e.imageUrl),
                    const SizedBox(
                      height: 18,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 20.0, right: 8),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                              e.title.length > 17
                                  ? e.title.substring(0, 16) + '...'
                                  : e.title,
                              style: TextItems.body2.copyWith(
                                  color: ColorItems.spaceCadet, fontSize: 14)),
                          widget.context
                                  .read<VendorDetailBloc>()
                                  .state
                                  .isScrap
                                  .map((ele) => ele.vendorItem.itemId)
                                  .contains(e.itemId)
                              ? ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                    fixedSize: const Size(90, 30),
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(24)),
                                    backgroundColor: ColorItems.spaceCadet,
                                  ),
                                  onPressed: () {},
                                  child: Container(
                                    width: 60,
                                    height: 26,
                                    margin: const EdgeInsets.only(right: 10),
                                    decoration: const BoxDecoration(
                                        color: ColorItems.spaceCadet,
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(18))),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Text('스크랩',
                                            style: TextItems.title7.copyWith(
                                                color: ColorItems.white,
                                                fontSize: 12)),
                                        const SizedBox(
                                          width: 3,
                                        ),
                                        Images.getIcon('Check.png')
                                      ],
                                    ),
                                  ),
                                )
                              : widget.isChecked[e.itemId.toInt()] == true
                                  ? GestureDetector(
                                      onTap: () {
                                        widget.isChecked.update(
                                            e.itemId.toInt(), (value) => false,
                                            ifAbsent: () => false);

                                        widget.selected.removeWhere((element) =>
                                            element.itemId == e.itemId);

                                        widget.context
                                            .read<VendorDetailBloc>()
                                            .add(IsCheckedEvent(
                                              isChecked: widget.isChecked,
                                              vendorList: widget.selected,
                                            ));
                                      },
                                      child: Container(
                                        width: 50,
                                        height: 26,
                                        decoration: const BoxDecoration(
                                            color: ColorItems.spaceCadet,
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(18))),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Text('선택',
                                                style: TextItems.title7
                                                    .copyWith(
                                                        color: ColorItems.white,
                                                        fontSize: 12)),
                                            const SizedBox(
                                              width: 3,
                                            ),
                                            Images.getIcon('Check.png')
                                          ],
                                        ),
                                      ),
                                    )
                                  : GestureDetector(
                                      onTap: () {
                                        widget.isChecked.update(
                                            e.itemId.toInt(), (value) => true,
                                            ifAbsent: () => true);
                                        widget.selected.add(e);
                                        widget.context
                                            .read<VendorDetailBloc>()
                                            .add(IsCheckedEvent(
                                                isChecked: widget.isChecked,
                                                vendorList: widget.selected));
                                      },
                                      child: Container(
                                        width: 44,
                                        height: 26,
                                        decoration: const BoxDecoration(
                                            color: ColorItems.primary,
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(18))),
                                        child: Center(
                                          child: Text('선택',
                                              style: TextItems.title7.copyWith(
                                                  color: ColorItems.white,
                                                  fontSize: 12)),
                                        ),
                                      ),
                                    )
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 12,
                    ),
                    Container(
                        alignment: Alignment.centerLeft,
                        padding: const EdgeInsets.only(left: 20.0),
                        child: Text(
                            CustomString().pirceToString(e.price.toInt()),
                            style: TextItems.heading4.copyWith(
                                color: ColorItems.spaceCadet, fontSize: 14))),
                    const SizedBox(
                      height: 12,
                    ),
                    Container(
                        padding: const EdgeInsets.only(left: 20.0),
                        alignment: Alignment.centerLeft,
                        child: Text(
                            e.description.length > 23
                                ? e.description.substring(0, 22) + '...'
                                : e.description,
                            style: TextItems.body2.copyWith(
                                color: ColorItems.secondarySpanishGray,
                                fontSize: 14)))
                  ],
                )))
            .toList());
  }

  Widget getImages(VendorItem e, List<String> imageList) {
    return imageList.isEmpty
        ? noImage()
        : GFCarousel(
            activeDotBorder: imageList.length == 1
                ? Border.all(width: 0)
                : Border.all(width: 30),
            passiveDotBorder: imageList.length == 1
                ? Border.all(width: 0)
                : Border.all(width: 30),
            passiveIndicator:
                imageList.length == 1 ? Colors.transparent : ColorItems.grayX11,
            activeIndicator:
                imageList.length == 1 ? Colors.transparent : ColorItems.primary,
            hasPagination: imageList.length == 1 ? false : true,
            viewportFraction: 1.0,
            items: imageList.map(
              (url) {
                return GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, HorizontalSwiper.routeName,
                        arguments:
                            HorizontalSwiper(images: imageList, name: 'item'));
                  },
                  child: Align(
                    alignment: Alignment.center,
                    child: Container(
                      width: 350,
                      height: 230,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(18.0),
                          border: Border.all(
                              color: widget.isChecked[e.itemId.toInt()] == true
                                  ? ColorItems.primary
                                  : Colors.transparent,
                              width: 3),
                          image: DecorationImage(
                              image: NetworkImage(
                                url,
                              ),
                              fit: BoxFit.cover)),
                    ),
                  ),
                );
              },
            ).toList(),
            onPageChanged: (index) {
              setState(() {
                index;
              });
            },
          );
  }

  Widget noImage() {
    return Container(
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
    );
  }
}
