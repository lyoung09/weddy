// ignore_for_file: must_be_immutable
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
import 'dart:async';
import 'dart:math';

import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:weddy_ceres/common/image_factory.dart';
import 'package:weddy_ceres/common/screen_common_widget.dart';
import 'package:weddy_ceres/common/shimmer_loading.dart';
import 'package:weddy_ceres/screen/product/product_details.dart';
import '../../common/dummy_data.dart';
import '../../common/local_utils.dart';
import '../../model/vendor_service.dart';
import '../../common/widget_factory.dart';
import 'package:iconsax/iconsax.dart';

class ProductSearchScreen extends StatefulWidget {
  final String title;

  const ProductSearchScreen({Key? key, required this.title}) : super(key: key);

  @override
  ProductSearchScreenState createState() => ProductSearchScreenState();
}

class ProductSearchScreenState extends State<ProductSearchScreen> {
  final widgetFactory = WidgetFactory();
  final shimmerLoading = ShimmerLoading();
  final imageFactory = ImageFactory();
  final screenCommonWidget = ScreenCommonWidget();

  bool loading = true;
  Timer? _timerDummy;
  bool isPriceDescending = false;

  List<VendorService> serviceProductItems = [];
  final textEditingController = TextEditingController();
  final BottomSheetChoiceWidget tagsPanel = BottomSheetChoiceWidget();

  @override
  void initState() {
    _getData();

    tagsPanel.textEditingController = textEditingController;
    super.initState();
  }

  @override
  void dispose() {
    _timerDummy?.cancel();
    super.dispose();
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: widgetFactory.createDefaultAppBar(context,
            title: '${widget.title} 판매사 검색'),
        backgroundColor: Colors.white,
        body: RefreshIndicator(
            onRefresh: refreshData,
            backgroundColor: Colors.white,
            child: (loading == true)
                ? shimmerLoading.buildShimmerContent()
                : SingleChildScrollView(
                    physics: const AlwaysScrollableScrollPhysics(),
                    child: Column(
                      children: [
                        const SizedBox(height: 10),
                        buildHeaderWidget(),
                        ListView.separated(
                            separatorBuilder:
                                (BuildContext context, int index) =>
                                    widgetFactory.styler.listDivider,
                            scrollDirection: Axis.vertical,
                            shrinkWrap: true,
                            itemCount: serviceProductItems.length,
                            physics: const NeverScrollableScrollPhysics(),
                            itemBuilder: (context, index) {
                              return buildItem(serviceProductItems[index]);
                            }),
                        Padding(
                          padding: const EdgeInsets.only(bottom: 30),
                          child: AutoSizeText(
                              '전체 ${serviceProductItems.length}개 판매사가 검색되었습니다',
                              style: Theme.of(context).textTheme.headline3),
                        ),
                      ],
                    ))));
  }

  Widget buildHeaderWidget() {
    return Padding(
        padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
        child: Column(children: [
          widgetFactory.createDefaultTextField(context,
              suffix: IconButton(
                  icon: Icon(Iconsax.close_circle,
                      color: Theme.of(context).colorScheme.primary, size: 22),
                  onPressed: () {
                    textEditingController.clear();
                  }),
              textEditingController: textEditingController,
              labelText: '검색어를 입력하세요(공백으로 여러 단어 입력)'),
          const SizedBox(height: 8),
          widgetFactory.createDefaultButton(context,
              text: "조회", onPressed: () {}, icon: Iconsax.search_favorite),
          const SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
                child: widgetFactory.createTextButton(
                    text: "추천 검색어",
                    onPressed: () {
                      screenCommonWidget.showBottomSheet(context,
                          contents: tagsPanel);
                    }),
              ),
              Row(
                children: [
                  Icon(Iconsax.sort,
                      size: 22, color: Theme.of(context).colorScheme.primary),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(0, 0, 20, 0),
                    child: widgetFactory.createTextButton(
                        text: "가격으로 정렬",
                        textColor: Theme.of(context).colorScheme.primary,
                        onPressed: () {
                          setState(() {
                            if (isPriceDescending) {
                              serviceProductItems
                                  .sort((a, b) => a.price > b.price ? 1 : 0);
                            } else {
                              serviceProductItems
                                  .sort((a, b) => a.price > b.price ? 0 : 1);
                            }

                            isPriceDescending = !isPriceDescending;
                          });
                        }),
                  ),
                ],
              ),
            ],
          )
        ]));
  }

  Widget buildItem(VendorService vendorService) {
    return Padding(
        padding: const EdgeInsets.all(10),
        child: ListTile(
            title: AutoSizeText(vendorService.vendorName,
                style: Theme.of(context).textTheme.bodyText2, maxLines: 1),
            subtitle: Padding(
                padding: const EdgeInsets.fromLTRB(0, 6, 0, 0),
                child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: imageFactory.categoryImageIcon(
                            categoryCode: vendorService.serviceCategory),
                      ),
                      const SizedBox(width: 10),
                      Expanded(
                          child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                            AutoSizeText(
                              vendorService.comments,
                              overflow: TextOverflow.ellipsis,
                              maxLines: 3,
                              softWrap: false,
                              style: Theme.of(context).textTheme.subtitle1,
                            ),
                            const SizedBox(height: 4),
                            AutoSizeText(
                                LocalUtils.getPriceText(vendorService.price),
                                style: Theme.of(context).textTheme.caption,
                                maxLines: 1),
                          ]))
                    ])),
            trailing: IconButton(
              icon: const Icon(Iconsax.arrow_right_1, color: Colors.lightBlue),
              onPressed: () {
                FocusScope.of(context).unfocus();
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => ProductDetailScreen(
                            vendorService: vendorService,
                            isVisibleFloatingButton: true)));
              },
            )));
  }

  Future refreshData() async {
    textEditingController.clear();

    setState(() {
      serviceProductItems.clear();
      loading = true;
      _getData();
    });
  }

  void _getData() {
    _timerDummy = Timer(const Duration(seconds: 1), () {
      setState(() {
        loading = false;
      });
    });

    Random random = Random();

    serviceProductItems = DummyData.getProductData();
    for (var element in serviceProductItems) {
      element.searchCount = random.nextInt(1000);
      element.rating = random.nextInt(6).toDouble();
    }

    // ascending
    serviceProductItems.sort((a, b) => a.price > b.price ? 1 : 0);
  }
}

class BottomSheetChoiceWidget extends StatefulWidget {
  late TextEditingController textEditingController;

  BottomSheetChoiceWidget({Key? key}) : super(key: key);

  @override
  BottomSheetChoiceWidgetState createState() => BottomSheetChoiceWidgetState();
}

class BottomSheetChoiceWidgetState extends State<BottomSheetChoiceWidget> {
  // Tags
  final List<String> tagsItems = [];
  int selectedIndex = -1;

  @override
  void initState() {
    // fetched from server
    tagsItems.clear();
    tagsItems.add('아름다운');
    tagsItems.add('강남');
    tagsItems.add('서울');
    tagsItems.add('우리동네');
    tagsItems.add('가을');
    tagsItems.add('아이보리');

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(4),
      child: Wrap(
        spacing: 5,
        children: List.generate(tagsItems.length, (index) {
          return ChoiceChip(
              label: AutoSizeText(tagsItems[index],
                  style: const TextStyle(fontSize: 12, color: Colors.white)),
              elevation: 5,
              pressElevation: 5,
              selectedColor: Theme.of(context).colorScheme.primary,
              backgroundColor: Theme.of(context).colorScheme.secondary,
              selected: selectedIndex == index,
              onSelected: (bool selected) {
                if (selected) {
                  if (!widget.textEditingController.text
                      .contains(tagsItems[index])) {
                    widget.textEditingController.text =
                        '${widget.textEditingController.text} ${tagsItems[index]}';
                  }

                  setState(() {
                    selectedIndex = (selected ? index : null)!;
                    selectedIndex = index;
                  });
                }
              });
        }),
      ),
    );
  }
}
