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

import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:weddy_ceres/common/image_factory.dart';
import 'package:weddy_ceres/screen/bookmark/vendor_bookmark.dart';
import 'package:weddy_ceres/screen/product/product_search.dart';

import '../../common/dummy_data.dart';
import '../../model/vendor_service.dart';
import '../../common/widget_factory.dart';
import '../../common/service_category_enum.dart';
import 'package:iconsax/iconsax.dart';

class CategoryMenuScreen extends StatefulWidget {
  const CategoryMenuScreen({Key? key}) : super(key: key);

  @override
  CategoryMenuScreenState createState() => CategoryMenuScreenState();
}

class CategoryMenuScreenState extends State<CategoryMenuScreen> {
  final widgetFactory = WidgetFactory();
  final imageFactory = ImageFactory();

  bool loading = true;
  Timer? _timerDummy;

  List<VendorService> primaryProductItems = [];
  List<VendorService> secondaryProductItems = [];

  @override
  void initState() {
    _getData();
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
        appBar: widgetFactory.createEmptyAppBar(),
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
            child: Container(
          color: widgetFactory.styler.tabScreenBackgroundColor,
          child: Column(
            children: [
              const SizedBox(height: 10),
              buildHeaderWidget(),
              const SizedBox(height: 10),
              createGridTitle("필수 항목"),
              buildGridView(items: primaryProductItems),
              const SizedBox(height: 10),
              createGridTitle("선택 항목"),
              buildGridView(items: secondaryProductItems),
            ],
          ),
        )));
  }

  Widget createGridTitle(title) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(16, 0, 0, 0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Text(title, style: Theme.of(context).textTheme.bodyText1),
        ],
      ),
    );
  }

  Widget buildHeaderWidget() {
    return widgetFactory.createHeaderCard(context,
        widget:
            Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
          AutoSizeText(
            '상품 카테고리를 선택하세요',
            style: Theme.of(context).textTheme.headline2,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              IconButton(
                iconSize: 48,
                onPressed: () {},
                icon:
                    Image.asset('assets/images/cats/cute-cat-handdrawn-05.png'),
              ),
              IconButton(
                iconSize: 48,
                onPressed: () {},
                icon:
                    Image.asset('assets/images/cats/cute-cat-handdrawn-06.png'),
              ),
              IconButton(
                iconSize: 48,
                onPressed: () {},
                icon:
                    Image.asset('assets/images/cats/cute-cat-handdrawn-07.png'),
              ),
              IconButton(
                iconSize: 48,
                onPressed: () {},
                icon:
                    Image.asset('assets/images/cats/cute-cat-handdrawn-08.png'),
              ),
            ],
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              widgetFactory.createDefaultButton(context,
                  iconColor: Colors.white,
                  icon: Iconsax.note_favorite,
                  text: '나의 판매사 관심 목록', onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const VendorBookmarkScreen()));
              }),
            ],
          ),
        ]));
  }

  Widget buildGridView({required List<VendorService> items}) {
    return Padding(
      padding: const EdgeInsets.all(4.0),
      child: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
          elevation: 0,
          child: GridView.count(
              shrinkWrap: true,
              primary: false,
              physics: const NeverScrollableScrollPhysics(),
              crossAxisSpacing: 5,
              mainAxisSpacing: 5,
              crossAxisCount: 3,
              children: List.generate(items.length, (index) {
                return buildItem(items[index]);
              }))),
    );
  }

  Widget buildItem(VendorService productData) {
    return GestureDetector(
        onTap: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => ProductSearchScreen(
                      title: productData.serviceCategory.displayName)));
        },
        child: Card(
            elevation: 0,
            child: Padding(
              padding: const EdgeInsets.all(4),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                      padding: const EdgeInsets.fromLTRB(2, 0, 2, 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Icon(
                              size: 14,
                              color: productData.isImportant
                                  ? Theme.of(context).colorScheme.primary
                                  : Colors.white,
                              Iconsax.information5),
                        ],
                      )),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: imageFactory.categoryImageIcon(
                        categoryCode: ServiceCategory.none),
                  ),
                  const SizedBox(height: 6),
                  AutoSizeText(
                    productData.serviceCategory.displayName,
                    style: Theme.of(context).textTheme.caption,
                  )
                ],
              ),
            )));
  }

  Future refreshData() async {
    setState(() {
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

    primaryProductItems.clear();
    secondaryProductItems.clear();

    List<VendorService> items = DummyData.getProductData();
    for (int i = 0; i < items.length; i++) {
      VendorService item = items[i];
      if (item.isOptional) {
        secondaryProductItems.add(item);
      } else {
        primaryProductItems.add(item);
      }
    }
  }
}
