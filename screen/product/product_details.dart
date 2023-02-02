/*
 *
 * Weddy CONFIDENTIAL
 * _____________________________________________________________________
 *
 * [2021] - [2030] Weddy
 *  All Rights Reserved.
 *
 * NOTICE:  All information contained herein is, and remains
 * the property of Weddy and its suppliers,
 * if any.  The intellectual and technical concepts contained
 * herein are proprietary to Weddy and its suppliers and
 * may be covered by Korea and Foreign Patents,
 * patents in process, and are protected by trade secret or copyright law.
 * Dissemination of this information or reproduction of this material
 * is strictly forbidden unless prior written permission is obtained
 * from Weddy.
 */
import 'package:flutter/material.dart';
import 'package:weddynew/common/screen_common_widget.dart';

import 'package:weddynew/common/widget_factory.dart';
import 'package:weddynew/model/vendor_service.dart';
import 'package:weddynew/model/pricing_model.dart';
import 'package:weddynew/model/vendor_service_detail.dart';
import 'package:weddynew/screen/product/staggered_image_grid.dart';
import 'package:weddynew/screen/product/youtube_player.dart';
import '../../common/local_utils.dart';
import 'package:iconsax/iconsax.dart';
import 'package:auto_size_text/auto_size_text.dart';

class ProductDetailScreen extends StatefulWidget {
  const ProductDetailScreen(
      {super.key,
      required this.vendorService,
      required this.isVisibleFloatingButton});

  final VendorService vendorService;
  final bool isVisibleFloatingButton;

  @override
  ProductDetailScreenState createState() => ProductDetailScreenState();
}

class ProductDetailScreenState extends State<ProductDetailScreen> {
  final widgetFactory = WidgetFactory();
  final screenCommonWidget = ScreenCommonWidget();

  late VendorServiceDetail serviceProductDetail;

  final iconColor = Colors.blueGrey;
  final textColor = const Color(0xFF36454F);

  @override
  void initState() {
    _getData(widget.vendorService);

    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: widgetFactory.createDefaultAppBar(context, title: '판매사 세부정보'),
        floatingActionButton: buildFloatingButton(),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
        backgroundColor: Colors.white,
        body: ListView(children: [
          buildProductDetail(),
          buildPricingList(),
          buildVendorLocationMap(),
        ]));
  }

  Widget buildFloatingButton() {
    return widget.isVisibleFloatingButton
        ? FloatingActionButton(
            onPressed: () {
              screenCommonWidget.showConfirmDialog(context,
                  message: '체크리스트에 추가하시겠습니까?');
            },
            backgroundColor: Colors.white,
            foregroundColor: Colors.white,
            elevation: 5,
            splashColor: Colors.grey,
            child: widgetFactory.styler.floatingButtonAddIcon)
        : Container();
  }

  Widget buildProductDetail() {
    return Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        elevation: 2,
        margin: const EdgeInsets.all(10),
        color: Colors.white,
        child: Container(
          padding: const EdgeInsets.fromLTRB(16, 6, 16, 0),
          color: Colors.white,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Row(
                children: [
                  Container(
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(6)),
                      child: widgetFactory.createChip(
                          title: serviceProductDetail
                              .serviceProduct.serviceCategory.displayName,
                          textColor: Colors.white,
                          backgroundColor:
                              Theme.of(context).colorScheme.outline)),
                  const SizedBox(width: 6),
                  Expanded(
                      child: AutoSizeText(
                          serviceProductDetail.serviceProduct.vendorName,
                          overflow: TextOverflow.ellipsis,
                          maxLines: 1,
                          softWrap: false,
                          style: Theme.of(context).textTheme.headline4)),
                  const SizedBox(
                    width: 6,
                  ),
                  widgetFactory.createTextButton(
                      text: '북마크 추가',
                      textColor: Theme.of(context).colorScheme.secondary,
                      onPressed: () {
                        screenCommonWidget.showConfirmDialog(context,
                            message: '북마크에 추가하시겠습니까?');
                      }),
                ],
              ),
              createValueLabel(
                  title: '전화번호', value: serviceProductDetail.telNumber),
              createValueLabel(
                  title: '주소', value: serviceProductDetail.address),
              createValueLabel(
                  title: '조회수',
                  value: LocalUtils.getNumberText(
                      '', serviceProductDetail.serviceProduct.searchCount)),
              createValueLabel(
                  title: '소개',
                  value: serviceProductDetail.serviceProduct.comments),
              createValueLabel(title: '홈페이지', value: serviceProductDetail.url),
              const SizedBox(height: 6),
              createContentsButtons(),
              const SizedBox(
                height: 6,
              ),
              widgetFactory.createDefaultButton(context,
                  icon: Iconsax.reserve, text: '방문예약 하기', onPressed: () {}),
              const SizedBox(height: 8),
            ],
          ),
        ));
  }

  Widget createContentsButtons() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        widgetFactory.createDefaultButton(context,
            icon: Iconsax.video, text: '유투브 영상', onPressed: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => const YoutubePlayer()));
        }),
        const SizedBox(width: 10),
        widgetFactory.createDefaultButton(context,
            icon: Iconsax.image, text: '홍보 이미지', onPressed: () {
          if (serviceProductDetail.imageList.isEmpty) {
            screenCommonWidget.showSnackBar(context, '등록된 이미지가 없습니다');
            return;
          }

          Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => StaggeredImageGrid(
                      imageList: serviceProductDetail.imageList,
                    )),
          );
        }),
      ],
    );
  }

  Widget createValueLabel({required title, required value}) {
    return Padding(
        padding: const EdgeInsets.fromLTRB(0, 6, 0, 6),
        child: widgetFactory.createIconLabelWithValue(
          context,
          title: title,
          value: Expanded(
              child: AutoSizeText(
            value,
            maxLines: 5,
            textAlign: TextAlign.justify,
            style: Theme.of(context).textTheme.bodyText2,
          )),
          icon: Icons.circle,
          iconColor: iconColor,
        ));
  }

  Widget buildPricingList() {
    List<PricingItem> list = serviceProductDetail.priceItems;

    return Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        elevation: 2,
        margin: const EdgeInsets.all(10),
        color: Colors.white,
        child: Container(
            padding: const EdgeInsets.fromLTRB(15, 5, 15, 0),
            color: Colors.white,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                widgetFactory.createIconLabelWithValue(
                  context,
                  title: '서비스 가격',
                  value: const SizedBox(),
                  icon: Iconsax.money,
                  iconColor: iconColor,
                ),
                const SizedBox(height: 6),
                ListView.separated(
                    separatorBuilder: (BuildContext context, int index) =>
                        const Divider(
                          height: 1,
                          indent: 10,
                          endIndent: 10,
                          color: Colors.grey,
                        ),
                    scrollDirection: Axis.vertical,
                    shrinkWrap: true,
                    itemCount: list.length,
                    physics: const NeverScrollableScrollPhysics(),
                    itemBuilder: (context, index) {
                      return buildPricingItem(list[index]);
                    }),
              ],
            )));
  }

  Widget buildVendorLocationMap() {
    return Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        elevation: 2,
        margin: const EdgeInsets.all(10),
        color: Colors.white,
        child: Container(
            padding: const EdgeInsets.fromLTRB(15, 5, 15, 0),
            color: Colors.white,
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              widgetFactory.createIconLabelWithValue(
                context,
                title: '판매사 위치',
                value: const SizedBox(),
                icon: Iconsax.location,
                iconColor: iconColor,
              ),
              const SizedBox(height: 6),
            ])));
  }

  Widget buildPricingItem(PricingItem item) {
    return ListTile(
        title: AutoSizeText(
          item.title,
          style: Theme.of(context).textTheme.bodyText2,
        ),
        subtitle: AutoSizeText(
          item.comments,
          style: Theme.of(context).textTheme.subtitle1,
        ),
        trailing: AutoSizeText(LocalUtils.getPriceText(item.minPrice),
            style: Theme.of(context).textTheme.caption));
  }

  void _getData(VendorService serviceProduct) {
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
          itemId: 1,
          title: '상품$i 가격',
          minPrice: (i + 100) * 10000,
          maxPrice: (i + 100) * 10000,
          comments: '테스트 코맨트',
          isRangeValue: false));
    }

    // todo detail fetched from server
    serviceProductDetail = VendorServiceDetail(
        id: 1,
        serviceProduct: serviceProduct,
        imageList: imageList,
        telNumber: '0212341234',
        priceItems: priceList,
        lat: 37.48915574,
        lng: 126.98229996,
        url: 'https://google.com',
        address: '서울 강남구 논현동 111');
  }
}
