import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

import '../../../../resources/Colors.dart';
import '../../../../resources/Images.dart';

class TimelineEmptyWidget extends StatelessWidget {
  const TimelineEmptyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.symmetric(vertical: 24, horizontal: 25),
      children: [
        const SizedBox(height: 24),
        createNoTaskWidget(),
        const SizedBox(height: 18),
        createGuidebookWidget(),
        const SizedBox(height: 18),
        createFindWidget(),
        const SizedBox(height: 18),
        createShowroomWidget()
      ],
    );
  }

  Widget createNoTaskWidget() {
    return Container(
        width: double.maxFinite,
        height: 112,
        padding: const EdgeInsets.only(left: 14, right: 16),
        alignment: Alignment.center,
        decoration: BoxDecoration(
            color: ColorItems.white,
            borderRadius: BorderRadius.circular(18),
            boxShadow: const [
              BoxShadow(
                color: ColorItems.shadow,
                blurRadius: 8,
              )
            ]),
        child: Row(mainAxisSize: MainAxisSize.max, children: [
          Images.getIcon('graph_bunny'),
          const SizedBox(width: 12),
          const Expanded(child: AutoSizeText('You have no important task!')),
          Images.getIcon('icon_angle', color: ColorItems.salmon)
        ]));
  }

  Widget createGuidebookWidget() {
    return Container(
        width: double.maxFinite,
        height: 70,
        margin: const EdgeInsets.symmetric(horizontal: 6),
        padding: const EdgeInsets.only(left: 20, right: 16),
        alignment: Alignment.centerRight,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(18),
            boxShadow: const [
              BoxShadow(
                color: ColorItems.shadow,
                blurRadius: 4,
              )
            ],
            gradient: const LinearGradient(
              colors: [ColorItems.white, ColorItems.secondarySpaceCadet],
              begin: Alignment(0.25, 0.0),
              end: Alignment.centerRight,
            )),
        child: Row(mainAxisSize: MainAxisSize.max, children: [
          const Expanded(
              child: AutoSizeText(
                  'Check our Guidebook and start\nplanning your wedding!')),
          Images.getIcon('illust_guidebook')
        ]));
  }

  Widget createFindWidget() {
    return Container(
        width: double.maxFinite,
        height: 70,
        margin: const EdgeInsets.symmetric(horizontal: 6),
        padding: const EdgeInsets.only(left: 16, right: 20),
        alignment: Alignment.centerRight,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(18),
            boxShadow: const [
              BoxShadow(
                color: ColorItems.shadow,
                blurRadius: 4,
              )
            ],
            gradient: const LinearGradient(
              colors: [ColorItems.secondarySpaceCadet, ColorItems.white],
              begin: Alignment.centerLeft,
              end: Alignment(-0.25, 0.0),
            )),
        child: Row(mainAxisSize: MainAxisSize.max, children: [
          Images.getIcon('illust_vendors'),
          const Expanded(
              child: AutoSizeText(
                  'Find the best suppliers to prepare\nyour perfect wedding.'))
        ]));
  }

  Widget createShowroomWidget() {
    return Container(
        width: double.maxFinite,
        height: 70,
        margin: const EdgeInsets.symmetric(horizontal: 6),
        padding: const EdgeInsets.only(left: 20, right: 16),
        alignment: Alignment.centerRight,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(18),
            boxShadow: const [
              BoxShadow(
                color: ColorItems.shadow,
                blurRadius: 4,
              )
            ],
            gradient: const LinearGradient(
              colors: [ColorItems.white, ColorItems.secondarySpaceCadet],
              begin: Alignment(0.25, 0.0),
              end: Alignment.centerRight,
            )),
        child: Row(mainAxisSize: MainAxisSize.max, children: [
          const Expanded(
              child: AutoSizeText(
                  'Get the best ideas and inspiration\nfrom our Showroom.')),
          Images.getIcon('illust_showroom')
        ]));
  }
}
