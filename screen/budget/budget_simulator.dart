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
import 'package:weddy_ceres/common/screen_common_widget.dart';
import 'package:weddy_ceres/common/shimmer_loading.dart';
import 'package:weddy_ceres/common/widget_factory.dart';

import 'package:weddy_ceres/model/user_item.dart';
import '../../common/dummy_data.dart';
import '../../common/local_utils.dart';
import 'package:animated_flip_counter/animated_flip_counter.dart';

class BudgetSimulatorScreen extends StatefulWidget {
  const BudgetSimulatorScreen({Key? key}) : super(key: key);

  @override
  BudgetSimulatorScreenState createState() => BudgetSimulatorScreenState();
}

class BudgetSimulatorScreenState extends State<BudgetSimulatorScreen> {
  final widgetFactory = WidgetFactory();
  final shimmerLoading = ShimmerLoading();
  final imageFactory = ImageFactory();
  final screenCommonWidget = ScreenCommonWidget();

  bool loading = true;
  Timer? _timerDummy;
  int myBudgetValue = 30000000;
  int predictSumValue = 0;
  double progressBarValue = 50;

  List<UserServiceItem> items = [];

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
        floatingActionButton: buildFloatingButton(),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
        backgroundColor: Colors.white,
        appBar: widgetFactory.createEmptyAppBar(),
        body: SingleChildScrollView(
            child: Container(
          color: widgetFactory.styler.tabScreenBackgroundColor,
          child: Column(
            children: [
              const SizedBox(height: 10),
              buildHeaderWidget(),
              ListView.builder(
                  scrollDirection: Axis.vertical,
                  shrinkWrap: true,
                  itemCount: items.length,
                  physics: const NeverScrollableScrollPhysics(),
                  itemBuilder: (context, index) {
                    return buildItem(items[index]);
                  }),
            ],
          ),
        )));
  }

  Widget buildFloatingButton() {
    return FloatingActionButton(
        onPressed: () {
          screenCommonWidget.showConfirmDialog(context,
              message: '체크리스트에 추가하시겠습니까?');
        },
        backgroundColor: Colors.white,
        foregroundColor: Colors.white,
        elevation: 5,
        splashColor: Colors.grey,
        child: widgetFactory.styler.floatingButtonAddIcon);
  }

  Widget buildHeaderWidget() {
    return widgetFactory.createHeaderCard(context,
        widget:
            Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
          createMyBudgetWidget(),
          createPredictBudgetWidget(),
          const SizedBox(height: 10),
          createProgressbarWidget(),
          const SizedBox(height: 4),
          createSliderWidget(),
        ]));
  }

  Widget createSliderWidget() {
    return Slider(
      min: 0.0,
      max: 100.0,
      value: progressBarValue,
      onChangeEnd: (value) {
        setState(() {
          items.clear();
          items = DummyData.getCheckListData();
          predictSumValue = 0;
          for (var element in items) {
            if (element.isEnabled) {
              predictSumValue = predictSumValue + element.vendorService.price;
            }
          }
        });
      },
      onChanged: (value) {
        setState(() {
          progressBarValue = value;
        });
      },
    );
  }

  Widget createMyBudgetWidget() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Row(mainAxisAlignment: MainAxisAlignment.center, children: [
          const AutoSizeText('나의 예산'),
          const SizedBox(
            width: 10,
          ),
          AnimatedFlipCounter(
              duration: const Duration(milliseconds: 500),
              value: myBudgetValue / 10000,
              fractionDigits: 0, // decimal precision
              suffix: ' 만원',
              textStyle: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                  color: Colors.lightBlueAccent)),
        ]),
        const Icon(Icons.arrow_drop_up, size: 32, color: Colors.white),
        AutoSizeText(
          '${getBudgetDiffValue()}%',
          style: const TextStyle(color: Colors.white),
        ),
      ],
    );
  }

  Widget createPredictBudgetWidget() {
    return Row(mainAxisAlignment: MainAxisAlignment.center, children: [
      const AutoSizeText('견적 금액'),
      const SizedBox(
        width: 10,
      ),
      AnimatedFlipCounter(
        duration: const Duration(milliseconds: 500),
        value: predictSumValue / 10000,
        fractionDigits: 0, // decimal precision
        suffix: ' 만원',
        textStyle: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 20,
            color: predictSumValue > myBudgetValue
                ? Colors.redAccent
                : Colors.green),
      ),
      Icon(
        predictSumValue > myBudgetValue
            ? Icons.arrow_drop_up
            : Icons.arrow_drop_down,
        size: 32,
        color: predictSumValue > myBudgetValue
            ? Colors.redAccent
            : const Color(0xFF005666),
      ),
      AutoSizeText('${getBudgetDiffValue()}%',
          style: TextStyle(
              color: predictSumValue > myBudgetValue
                  ? Colors.redAccent
                  : const Color(0xFF005666))),
    ]);
  }

  String getBudgetDiffValue() {
    int calcValue = (100 * predictSumValue) ~/ myBudgetValue;
    if (calcValue >= 100) {
      return (calcValue - 100).toString().padLeft(3, ' ');
    }

    return (100 - calcValue).toString().padLeft(3, ' ');
  }

  Widget createProgressbarWidget() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [AutoSizeText('아래 바를 움직여서 확인하세요')]),
        const SizedBox(height: 6),
        AnimatedFlipCounter(
          duration: const Duration(milliseconds: 500),
          value: progressBarValue,
          fractionDigits: 1, // decimal precision
          suffix: '%',
          textStyle: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20,
              color: progressBarValue > 50 ? Colors.redAccent : Colors.green),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: const [
            Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: EdgeInsets.fromLTRB(16, 0, 0, 0),
                  child: AutoSizeText(
                    '최소 가격',
                  ),
                )),
            Align(
                alignment: Alignment.centerRight,
                child: Padding(
                  padding: EdgeInsets.fromLTRB(0, 0, 16, 0),
                  child: AutoSizeText(
                    '최대 가격',
                  ),
                )),
          ],
        ),
      ],
    );
  }

  Widget buildItem(UserServiceItem item) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
      ),
      elevation: 0,
      margin: const EdgeInsets.all(10),
      color: item.isEnabled ? Colors.white : Colors.grey,
      child: Padding(
          padding: const EdgeInsets.all(6),
          child: ListTile(
            title: AutoSizeText(
              item.vendorService.serviceCategory.displayName,
              style: Theme.of(context).textTheme.headline3,
            ),
            subtitle: Padding(
                padding: const EdgeInsets.fromLTRB(0, 6, 0, 0),
                child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: imageFactory.categoryImageIcon(
                          categoryCode: item.vendorService.serviceCategory,
                        ),
                      ),
                      const SizedBox(width: 10),
                      Expanded(
                          child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                            AutoSizeText(item.vendorService.vendorName,
                                style: Theme.of(context).textTheme.bodyText2,
                                maxLines: 1),
                            const SizedBox(height: 10),
                            AutoSizeText(
                                LocalUtils.getPriceText(
                                    item.vendorService.price),
                                style: Theme.of(context).textTheme.caption,
                                maxLines: 1),
                          ]))
                    ])),
            trailing: Switch(
              value: item.isEnabled,
              onChanged: (isEnabled) => {
                setState(() {
                  item.isEnabled = isEnabled;
                  if (isEnabled) {
                    predictSumValue =
                        predictSumValue + item.vendorService.price;
                  } else {
                    predictSumValue =
                        predictSumValue - item.vendorService.price;
                  }
                })
              },
            ),
          )),
    );
  }

  Future refreshData() async {
    setState(() {
      items.clear();
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
    items = DummyData.getCheckListData();
    predictSumValue = 0;
    for (var element in items) {
      if (element.isEnabled) {
        predictSumValue = predictSumValue + element.vendorService.price;
      }
    }
  }
}
