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

import 'package:animated_flip_counter/animated_flip_counter.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:weddynew/common/image_factory.dart';
import 'package:weddynew/common/shimmer_loading.dart';
import 'package:weddynew/screen/family/family_link.dart';

import 'package:weddynew/screen/product/product_details.dart';
import '../../common/dummy_data.dart';
import '../../common/local_utils.dart';
import '../../model/user_item.dart';
import '../../common/widget_factory.dart';

class CheckListScreen extends StatefulWidget {
  const CheckListScreen({Key? key}) : super(key: key);

  @override
  CheckListScreenState createState() => CheckListScreenState();
}

class CheckListScreenState extends State<CheckListScreen> {
  final widgetFactory = WidgetFactory();
  final shimmerLoading = ShimmerLoading();

  final imageFactory = ImageFactory();

  bool loading = true;
  Timer? _timerDummy;
  String radioGroupValue = '나의 체크리스트';

  int myBudgetValue = 30000000;
  int sumBudgetValue = 0;

  List<UserServiceItem> checkListData = [];

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
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: widgetFactory.createEmptyAppBar(context),
        backgroundColor: Colors.white,
        body: RefreshIndicator(
            onRefresh: refreshData,
            backgroundColor: Colors.white,
            child: (loading == true)
                ? shimmerLoading.buildShimmerContent()
                : SingleChildScrollView(
                    physics: const AlwaysScrollableScrollPhysics(),
                    child: Container(
                      color: widgetFactory.styler.tabScreenBackgroundColor,
                      child: Column(
                        children: [
                          const SizedBox(height: 10),
                          buildHeaderWidget(),
                          ListView.builder(
                              scrollDirection: Axis.vertical,
                              shrinkWrap: true,
                              itemCount: checkListData.length,
                              physics: const NeverScrollableScrollPhysics(),
                              itemBuilder: (context, index) {
                                return buildItem(checkListData[index]);
                              }),
                        ],
                      ),
                    ))));
  }

  Widget buildHeaderWidget() {
    return widgetFactory.createHeaderCard(context,
        widget:
            Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
          Container(
            padding: const EdgeInsets.all(6),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Tooltip(
                  message: '나의 체크리스트',
                  child: IconButton(
                    iconSize: 48,
                    onPressed: () {},
                    icon: Image.asset(
                        'assets/images/cats/cute-cat-handdrawn-02.png'),
                  ),
                ),
                const SizedBox(width: 10),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    createMyBudgetWidget(),
                    const SizedBox(
                      height: 10,
                    ),
                    createPredictBudgetWidget(),
                  ],
                ),
                const SizedBox(width: 10),
                Tooltip(
                    message: '신부 체크리스트',
                    child: IconButton(
                      iconSize: 48,
                      onPressed: () {},
                      icon: Image.asset(
                          'assets/images/cats/cute-cat-handdrawn-04.png'),
                    )),
              ],
            ),
          ),
          widgetFactory.createDefaultButton(context,
              icon: Iconsax.link, text: '체크리스트 공유', onPressed: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => const FamilyLinkScreen()));
          }),
          const SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
            child: AutoSizeText('판매사 변경은 판매사 상품 검색을 이용하세요',
                softWrap: true,
                textAlign: TextAlign.center,
                overflow: TextOverflow.ellipsis,
                maxLines: 2,
                style: Theme.of(context).textTheme.bodyText2),
          )
        ]));
  }

  Widget createMyBudgetWidget() {
    return Row(mainAxisAlignment: MainAxisAlignment.center, children: [
      const AutoSizeText('나의 예산'),
      const SizedBox(
        width: 10,
      ),
      AnimatedFlipCounter(
        duration: const Duration(milliseconds: 500),
        value: myBudgetValue / 10000,
        fractionDigits: 0, // decimal precision
        suffix: ' 만원',
        textStyle: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 20,
            color: myBudgetValue >= 3000
                ? const Color(0xFF005666)
                : Colors.redAccent),
      )
    ]);
  }

  Widget createPredictBudgetWidget() {
    return Row(mainAxisAlignment: MainAxisAlignment.center, children: [
      const AutoSizeText('예상 견적'),
      const SizedBox(
        width: 10,
      ),
      AnimatedFlipCounter(
        duration: const Duration(milliseconds: 500),
        value: sumBudgetValue / 10000,
        fractionDigits: 0, // decimal precision
        suffix: ' 만원',
        textStyle: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 20,
            color: sumBudgetValue >= myBudgetValue
                ? Colors.redAccent
                : const Color(0xFF005666)),
      ),
    ]);
  }

  Widget buildItem(UserServiceItem item) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
      ),
      elevation: 0,
      margin: const EdgeInsets.all(10),
      color: item.isEnabled ? Colors.white : Colors.grey,
      child: Column(children: [
        Padding(
            padding: const EdgeInsets.all(10),
            child: ListTile(
              title: Row(
                children: [
                  AutoSizeText(
                    item.vendorService.serviceCategory.displayName,
                    style: Theme.of(context).textTheme.headline3,
                  ),
                ],
              ),
              subtitle: Padding(
                  padding: const EdgeInsets.fromLTRB(0, 6, 0, 0),
                  child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        GestureDetector(
                          onTap: () {
                            navigateToProductDetailScreen(item);
                          },
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: imageFactory.categoryImageIcon(
                                categoryCode:
                                    item.vendorService.serviceCategory),
                          ),
                        ),
                        const SizedBox(width: 10),
                        Expanded(
                            child: GestureDetector(
                          onTap: () => {
                            navigateToProductDetailScreen(item),
                          },
                          child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                AutoSizeText(item.vendorService.vendorName,
                                    style:
                                        Theme.of(context).textTheme.bodyText2,
                                    maxLines: 1),
                                const SizedBox(height: 6),
                                AutoSizeText(
                                    LocalUtils.getPriceText(
                                        item.vendorService.price),
                                    style: Theme.of(context).textTheme.caption,
                                    maxLines: 1),
                                const SizedBox(height: 6),
                                widgetFactory.createStatusLabel(
                                    title: '상태표시(방문예약요청, 방문예약완료, 기타)',
                                    textColor: Colors.lightBlue,
                                    backgroundColor: Colors.white),
                              ]),
                        ))
                      ])),
              trailing: Switch(
                value: item.isEnabled,
                onChanged: (isEnabled) => {
                  setState(() {
                    item.isEnabled = isEnabled;
                    if (isEnabled) {
                      sumBudgetValue =
                          sumBudgetValue + item.vendorService.price;
                    } else {
                      sumBudgetValue =
                          sumBudgetValue - item.vendorService.price;
                    }
                  })
                },
              ),
            )),
      ]),
    );
  }

  void navigateToProductDetailScreen(UserServiceItem item) {
    Navigator.push(
        context,
        MaterialPageRoute(
            builder: (context) => ProductDetailScreen(
                  vendorService: item.vendorService,
                  isVisibleFloatingButton: false,
                )));
  }

  Future refreshData() async {
    setState(() {
      checkListData.clear();
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
    checkListData = DummyData.getCheckListData();
    sumBudgetValue = 0;
    for (UserServiceItem element in checkListData) {
      if (element.isEnabled) {
        sumBudgetValue = sumBudgetValue + element.vendorService.price;
      }
    }
  }
}
