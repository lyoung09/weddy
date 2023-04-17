import 'package:fixnum/fixnum.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:provider/provider.dart';
import 'package:weddynew/utils/analytics_helper.dart';

import '../../../../apis/biz/app_biz.pb.dart';
import '../../../../resources/Colors.dart';
import '../../../../resources/Images.dart';
import '../../../../resources/Text.dart';
import '../../../../utils/custom_string.dart';
import '../../home.dart';
import 'bloc/detail_bloc.dart';
import 'bloc/detail_event.dart';
import 'bloc/detail_state.dart';

class VendorBottomDetailItemModal extends StatelessWidget {
  const VendorBottomDetailItemModal(
      {super.key,
      required this.context,
      required this.state,
      required this.vendorServiceCode,
      required this.selected});
  final VendorDetailState state;
  final BuildContext context;
  final int vendorServiceCode;
  final List<VendorItem> selected;

  @override
  Widget build(BuildContext context) {
    final state = context.watch<VendorDetailBloc>().state;
    Map<int, bool> checkingItems = Map.from(state.isChecked ?? {});
    return SizedBox(
      key: key,
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height * 0.8,
      child: Column(
        children: [
          Expanded(
              flex: 1,
              child: Container(
                  height: 72,
                  padding: const EdgeInsets.only(left: 15),
                  alignment: Alignment.centerLeft,
                  child: Text("선택 상품 ${selected.length.toString()}개"))),
          Images.getIcon('Divider_products.png'),
          Expanded(
              flex: 7,
              child: Container(
                  padding: const EdgeInsets.only(left: 15, right: 15),
                  alignment: Alignment.center,
                  child: ListView(
                    children: [
                      bottomCard("필수선택상품", 1),
                      ...selected.where((t) => t.groupId == 1).map((e) =>
                          bottomModalListtile(
                              e, context, checkingItems, selected)),
                      bottomCard("옵션선택상품", 2),
                      ...selected.where((t) => t.groupId == 2).map((e) =>
                          bottomModalListtile(
                              e, context, checkingItems, selected)),
                    ],
                  ))),
          Expanded(
              flex: 2,
              child: Center(
                  child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          backgroundColor: ColorItems.primary,
                          fixedSize: const Size(210, 44),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(18))),
                      onPressed: () {
                        // bool a = false;

                        List<int> t =
                            checkingItems.entries.map((e) => e.key).toList();

                        // if (t.length == 1) {
                        //   selected
                        //           .where((e) => e.itemId == t.first)
                        //           .where((e) => e.groupId == 1)
                        //           .isEmpty
                        //       ? a = false
                        //       : a = true;
                        // } else if (t.isEmpty) {
                        //   a = false;
                        // } else {
                        //   for (int i = 0; i < t.length; i++) {
                        //     selected
                        //             .where((e) => e.itemId == t[i])
                        //             .where((e) => e.groupId == 1)
                        //             .isEmpty
                        //         ? a = false
                        //         : a = true;
                        //   }
                        // }

                        List<ScrapItem> scrapItems = [];

                        selected.map((VendorItem e) =>
                            scrapItems.add(ScrapItem(vendorItem: e)));

                        scrapItems.addAll(
                            selected.map((e) => ScrapItem(vendorItem: e)));

                        context.read<VendorDetailBloc>().add(IsScrapvent(
                            vendorProfileId: state
                                .getVendorInfoResponse!.searchVendorProfile.id
                                .toInt(),
                            vendorServiceCode: vendorServiceCode,
                            scrapItems: scrapItems));

                        selected
                                .where((element) =>
                                    t.contains(element.itemId.toInt()))
                                .where((element) => element.groupId == 1)
                                .map((e) => e)
                                .isNotEmpty
                            ? _showScrapDialog(context)
                            : _showDialog(
                                context, '필수 상품을 1개 이상 포함해야만 스크랩 할 수 있습니다');

                        Navigator.pop(context);
                      },
                      child: Text("스크랩하기",
                          style: TextItems.heading3
                              .copyWith(color: Colors.white, fontSize: 18)))))
        ],
      ),
    );
  }

  Widget bottomCard(String text, int index) {
    return Container(
      alignment: Alignment.centerLeft,
      padding: const EdgeInsets.only(left: 12.0, top: 8, bottom: 10),
      child: Container(
        alignment: Alignment.centerLeft,
        decoration: BoxDecoration(
            border: Border.all(
                color: index == 1 ? ColorItems.spaceCadet : ColorItems.primary),
            borderRadius: const BorderRadius.all(Radius.circular(18))),
        width: 92,
        height: 24,
        child: Center(
            child: Text(
          text,
          style: TextItems.title5.copyWith(
              color: index == 1 ? ColorItems.spaceCadet : ColorItems.primary,
              fontSize: 14),
        )),
      ),
    );
  }

  Widget bottomModalListtile(
      VendorItem vendorServicePrice,
      BuildContext context,
      Map<int, bool> checkingItems,
      List<VendorItem> selected) {
    return Column(
      children: [
        Container(
          height: 100,
          padding: const EdgeInsets.all(8),
          child: Row(
            children: [
              const SizedBox(
                width: 24,
              ),
              Expanded(
                  flex: 3,
                  child: ClipRRect(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    child: vendorServicePrice.imageUrl.isEmpty
                        ? SizedBox()
                        : Image.network(
                            vendorServicePrice.imageUrl[0],
                            height: 74,
                            width: 74,
                            fit: BoxFit.fill,
                          ),
                  )),
              Expanded(
                  flex: 4,
                  child: Container(
                      alignment: Alignment.topLeft,
                      padding: EdgeInsets.only(left: 10, top: 5),
                      child: Text(vendorServicePrice.title))),
              Expanded(
                  flex: 3,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      IconButton(
                          onPressed: () {
                            checkingItems.update(
                                vendorServicePrice.itemId.toInt(),
                                (value) => false,
                                ifAbsent: () => false);
                            selected.removeWhere((element) =>
                                element.itemId == vendorServicePrice.itemId);

                            context.read<VendorDetailBloc>().add(IsCheckedEvent(
                                isChecked: checkingItems,
                                vendorList: selected));
                          },
                          icon: Images.getIcon('Icon_cross.png')),
                      const Spacer(),
                      Padding(
                        padding: const EdgeInsets.only(right: 8.0),
                        child: Text(CustomString()
                            .pirceToString(vendorServicePrice.price.toInt())),
                      ),
                    ],
                  )),
            ],
          ),
        ),
        Images.getIcon('Divider_products.png')
      ],
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

  _showScrapDialog(context) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(18.0))),
        content: SizedBox(
          width: 260,
          height: 225,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Container(
                  alignment: Alignment.centerRight,
                  padding: EdgeInsets.only(left: 20, top: 8),
                  child: GestureDetector(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Images.getIcon('Icon_cross_black.png'))),
              Center(
                  child:
                      Images.getIcon('Graph_bunny.png', width: 74, height: 74)),
              const SizedBox(
                height: 10,
              ),
              Text(
                "스크랩 완료",
                style: TextItems.heading3.copyWith(
                    color: ColorItems.spaceCadet,
                    fontSize: 18,
                    fontWeight: FontWeight.w700),
              ),
              const SizedBox(
                height: 4,
              ),
              Center(
                  child: Text(
                '선택상품의 스크랩을 완료하였습니다',
                textAlign: TextAlign.center,
                style: TextItems.title5
                    .copyWith(color: ColorItems.spaceCadet, fontSize: 14),
              )),
              const SizedBox(
                height: 13,
              ),
              TextButton(
                  style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(18))),
                  child: Text(
                    '스크랩 바로가기 >',
                    style: TextItems.title5
                        .copyWith(color: ColorItems.carolinaBlue, fontSize: 12),
                  ),
                  onPressed: () {
                    Navigator.pushNamed(context, HomePage.routeName,
                        arguments: 2);
                  }),
            ],
          ),
        ),
      ),
    );
  }
}
