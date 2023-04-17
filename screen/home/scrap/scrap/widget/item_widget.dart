import 'package:flutter/material.dart';
import 'package:weddynew/apis/biz/app_biz.pb.dart';
import 'package:weddynew/screen/home/scrap/first/list_view.dart';
import 'package:weddynew/screen/home/scrap/scrap/widget/check_tile.dart';

import '../../../../../resources/Colors.dart';
import '../../../../../resources/Images.dart';
import '../../../../../resources/Text.dart';
import '../../../../../utils/custom_string.dart';
import '../../../util/check_modal.dart';
import '../bloc/scrap_item_bloc.dart';
import '../bloc/scrap_item_event.dart';
import '../check_model.dart';

class ItemDetailWidget extends StatefulWidget {
  final int vendorCode;
  final List<ScrapItem> scrapList;
  final ScrapItemBloc bloc;
  final ScrapVendorInfo scrapVendorInfo;
  final bool isBool;
  final String companyname;
  const ItemDetailWidget({
    super.key,
    required this.scrapList,
    required this.bloc,
    required this.isBool,
    required this.vendorCode,
    required this.scrapVendorInfo,
    required this.companyname,
  });

  @override
  State<ItemDetailWidget> createState() => _ItemDetailWidgetState();
}

class _ItemDetailWidgetState extends State<ItemDetailWidget> {
  bool? select;
  Map<ScrapItem, bool> checkList = {};

  List<VendorItem> canUseButtons = [];
  List<ScrapVendorInfo> doVendorList = [];
  List<ScrapCheckModel> scrapCheckModelList = [];
  @override
  void initState() {
    super.initState();

    select = false;
    customMap();
  }

  customMap() {
    widget.scrapList.forEach((element) {
      if (widget.bloc.state.canUseButtons.contains(element.vendorItem)) {
        checkList[element] = true;
      } else {
        checkList[element] = false;
      }
    });
  }

  update() {
    if (checkList.values.where((element) => element == true).isNotEmpty) {
      // doVendorList.add(widget.scrapVendorInfo);
      widget.bloc.add(
          DoVendorEvent(canVendorInfo: widget.scrapVendorInfo, isCheck: true));
    } else {
      widget.bloc.add(
          DoVendorEvent(canVendorInfo: widget.scrapVendorInfo, isCheck: false));
    }

    //widget.bloc.add(DoVendorEvent(canVendorInfo: doVendorList));

    if (canUseButtons.isNotEmpty) {
      canUseButtons.where((element) => element.groupId == 1).isEmpty
          ? widget.bloc.canButton(false)
          : widget.bloc.canButton(true);
    } else {
      widget.bloc.canButton(false);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.only(left: 15, right: 15),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          allCheck(),
          Padding(
            padding: const EdgeInsets.only(left: 8.0),
            child: cardView('필수'),
          ),
          ListView(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            children: widget.scrapList
                .where((element) => element.vendorItem.groupId == 1)
                .map((e) => eachItem(e))
                .toList(),
          ),
          widget.scrapList
                  .where((element) => element.vendorItem.groupId == 2)
                  .isEmpty
              ? const SizedBox()
              : Padding(
                  padding: const EdgeInsets.only(left: 8.0),
                  child: cardView('옵션'),
                ),
          ListView(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            children: widget.scrapList
                .where((element) => element.vendorItem.groupId == 2)
                .map((e) => eachItem(e))
                .toList(),
          ),
        ]));
  }

  Widget allCheck() {
    return Row(
      children: [
        widget.isBool == true
            ? Theme(
                data: ThemeData.dark().copyWith(
                  unselectedWidgetColor: ColorItems.secondarySpanishGray,
                ),
                child: Checkbox(
                  activeColor: ColorItems.primary,
                  value: select,
                  onChanged: (bool? value) {
                    setState(() {
                      select = value!;
                    });
                    if (select!) {
                      widget.scrapList.forEach((element) {
                        checkList[element] = true;
                        canUseButtons.add(element.vendorItem);

                        scrapCheckModelList.add(ScrapCheckModel(
                            companyname: widget.companyname,
                            scrapVendor: element,
                            vendorCode: widget.vendorCode));
                      });
                    } else {
                      widget.scrapList.forEach((element) {
                        checkList[element] = false;
                        canUseButtons.remove(element.vendorItem);
                      });
                    }
                    widget.bloc.add(
                        IsModalItemEvent(scrapCheckModel: scrapCheckModelList));

                    widget.bloc.add(IsCheckItemEvent(isCheck: canUseButtons));

                    update();
                  },
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(6)),
                ),
              )
            : Theme(
                data: ThemeData.dark().copyWith(
                  unselectedWidgetColor: ColorItems.secondarySpanishGray,
                ),
                child: Checkbox(
                  value: false,
                  onChanged: (bool? value) {},
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(6)),
                ),
              ),
        Text('전체 선택',
            style: TextItems.title5.copyWith(
                fontWeight: FontWeight.w500,
                fontSize: 14,
                color: ColorItems.spaceCadet)),
      ],
    );
  }

  Widget eachItem(ScrapItem scrapCheckModel) {
    return Container(
        padding: const EdgeInsets.only(top: 4, bottom: 4),
        width: MediaQuery.of(context).size.width * 0.8,
        child: Row(
          children: [
            widget.isBool == true
                ? Theme(
                    data: ThemeData.dark().copyWith(
                      unselectedWidgetColor: ColorItems.secondarySpanishGray,
                    ),
                    child: Checkbox(
                      activeColor: ColorItems.primary,
                      value: checkList[scrapCheckModel],
                      onChanged: (bool? value) {
                        setState(() {
                          checkList[scrapCheckModel] = value!;
                        });

                        if (value!) {
                          canUseButtons.add(scrapCheckModel.vendorItem);
                          scrapCheckModelList.add(ScrapCheckModel(
                              companyname: widget.companyname,
                              scrapVendor: scrapCheckModel,
                              vendorCode: widget.vendorCode));
                        } else {
                          canUseButtons.remove(scrapCheckModel.vendorItem);
                          scrapCheckModelList.remove(ScrapCheckModel(
                              companyname: widget.companyname,
                              scrapVendor: scrapCheckModel,
                              vendorCode: widget.vendorCode));
                        }

                        widget.bloc.add(IsModalItemEvent(
                            scrapCheckModel: scrapCheckModelList));
                        if (checkList.values
                            .every((element) => element == true)) {
                          // canUseButtons.add(scrapCheckModel.vendorItem);
                          select = true;
                        } else {
                          //canUseButtons.remove(scrapCheckModel.vendorItem);
                          select = false;
                        }

                        widget.bloc
                            .add(IsCheckItemEvent(isCheck: canUseButtons));

                        update();
                      },
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(6)),
                    ),
                  )
                : Theme(
                    data: ThemeData.dark().copyWith(
                      unselectedWidgetColor: ColorItems.secondarySpanishGray,
                    ),
                    child: Checkbox(
                      value: false,
                      onChanged: (bool? value) {},
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(6)),
                    ),
                  ),
            scrapCheckModel.vendorItem.imageUrl.isEmpty
                ? Images.getIcon(
                    'Graph_bunny_Pink.png',
                    width: 70,
                    height: 56,
                  )
                : Image.network(
                    scrapCheckModel.vendorItem.imageUrl[0],
                    width: 70,
                    height: 56,
                    fit: BoxFit.cover,
                    errorBuilder: (context, error, stackTrace) =>
                        Images.getIcon(
                      'Graph_bunny_Pink.png',
                      width: 70,
                      height: 56,
                    ),
                  ),
            const SizedBox(
              width: 12,
            ),
            widget.vendorCode == 1100
                ? Expanded(
                    flex: 6,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(scrapCheckModel.vendorItem.title,
                            overflow: TextOverflow.ellipsis,
                            style: TextItems.body4.copyWith(
                                fontWeight: FontWeight.w400, fontSize: 14)),
                        Row(
                          children: [
                            Text('식사',
                                overflow: TextOverflow.ellipsis,
                                style: TextItems.body4.copyWith(
                                    fontWeight: FontWeight.w400, fontSize: 14)),
                            Text(
                                CustomString()
                                    .pirceToString(
                                        scrapCheckModel.totalPrice.toInt() -
                                            scrapCheckModel.vendorItem.price
                                                .toInt())
                                    .toString(),
                                overflow: TextOverflow.ellipsis,
                                style: TextItems.body4.copyWith(
                                    fontWeight: FontWeight.w400, fontSize: 14)),
                          ],
                        ),
                        Row(
                          children: [
                            Text('대관료',
                                style: TextItems.title7.copyWith(
                                    fontWeight: FontWeight.w400, fontSize: 12)),
                            Text(
                                CustomString()
                                    .pirceToString(scrapCheckModel
                                        .vendorItem.price
                                        .toInt())
                                    .toString(),
                                style: TextItems.title7.copyWith(
                                    fontWeight: FontWeight.w400, fontSize: 12)),
                          ],
                        ),
                      ],
                    ),
                  )
                : Expanded(
                    flex: 6,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(scrapCheckModel.vendorItem.title,
                            overflow: TextOverflow.ellipsis,
                            style: TextItems.body4.copyWith(
                                fontWeight: FontWeight.w400, fontSize: 14)),
                        Text(
                            CustomString().pirceToString(
                                scrapCheckModel.vendorItem.price.toInt()),
                            style: TextItems.title7.copyWith(
                                fontWeight: FontWeight.w400, fontSize: 12)),
                      ],
                    ),
                  ),
            Expanded(
              flex: 1,
              child: Align(
                alignment: Alignment.topRight,
                child: GestureDetector(
                    onTap: () {
                      // List<NotifiyModel> li = scrapVendorInfoList
                      //     .where(
                      //         (element) => element.id == notifyModel.id.toInt())
                      //     .toList();
                      bool required = true;

                      if (scrapCheckModel.vendorItem.groupId == 1) {
                        switch (widget.scrapList
                            .where((element) => element.vendorItem.groupId == 1)
                            .length) {
                          case 1:
                            widget.scrapList
                                    .where((element) =>
                                        element.vendorItem.groupId == 2)
                                    .isEmpty
                                ? required = true
                                : required = false;
                            break;
                          default:
                            required = true;
                            break;
                        }
                      }

                      if (required == true) {
                        showDialog(
                            context: context,
                            builder: (context) => ModalCustom().twoAnswer(
                                '선택하신 상품을 삭제하시겠습니까?', '취소', '삭제', context,
                                firstFuction: () => {Navigator.pop(context)},
                                secondFunction: () =>
                                    {deleteScrap(scrapCheckModel)}));
                      } else {
                        showDialog(
                            context: context,
                            builder: (context) => ModalCustom().oneAnswer(
                                '옵션상품 존재 시 필수상품을 삭제할 수 없습니다. 옵션상품을 먼저 삭제해주세요.',
                                '확인',
                                context,
                                answerFunction: () =>
                                    {Navigator.pop(context)}));
                      }
                    },
                    child: Images.getIcon('Icon_cross.png')),
              ),
            )
          ],
        ));
  }

  Widget cardView(String text) {
    return Container(
      width: 42,
      height: 28,
      decoration: BoxDecoration(
          border: Border.all(width: 1, color: ColorItems.spaceCadet),
          borderRadius: BorderRadius.circular(18)),
      alignment: Alignment.center,
      child: Text(text,
          style: TextItems.body4.copyWith(
              fontSize: 12,
              fontWeight: FontWeight.w400,
              color: ColorItems.spaceCadet)),
    );
  }

  void deleteScrap(ScrapItem scrapItem) {
    Navigator.pop(context);

    widget.bloc.add(RemoveScrapItemEvent(
        scrapId: widget.scrapVendorInfo.scrapId.toInt(),
        scrapItemId: scrapItem.id.toInt(),
        vendorProfileId: scrapItem.vendorItem.itemId.toInt()));

    widget.scrapList.removeWhere((element) => element.id == scrapItem.id);
  }
}
