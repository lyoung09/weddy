import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:weddynew/resources/Text.dart';

import '../../../../apis/biz/app_biz.pb.dart';
import '../../../../resources/Colors.dart';
import '../../../../resources/Images.dart';
import '../../../../utils/custom_string.dart';
import '../../util/check_modal.dart';
import 'bloc/inquire_bloc.dart';
import 'bloc/inquire_event.dart';
import 'bloc/inquire_state.dart';

class InquireExpansionTile extends StatefulWidget {
  final UserConsultingInfo info;
  final InquireState state;
  final String vendorlist;
  const InquireExpansionTile({
    super.key,
    required this.info,
    required this.state,
    required this.vendorlist,
  });

  @override
  State<InquireExpansionTile> createState() => _InquireExpansionTileState();
}

class _InquireExpansionTileState extends State<InquireExpansionTile> {
  late int statusCode;

  @override
  void initState() {
    statusCode = widget.info.statusCode.toInt();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return ExpansionTile(
      title: Container(
        width: MediaQuery.of(context).size.width,
        height: 100,
        child: Column(
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const SizedBox(
                  width: 12,
                ),
                statusCodeToKorean(statusCode),
                const SizedBox(
                  width: 10,
                ),
                Card(
                  elevation: 3,
                  color: ColorItems.platinum,
                  shape: RoundedRectangleBorder(
                    side:
                        const BorderSide(color: ColorItems.platinum, width: 1),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(
                        top: 4.0, bottom: 4, left: 7, right: 7),
                    child: Text(
                      contactCodeToKorean(widget.info.contactCode.toInt()),
                      style: TextItems.title6.copyWith(
                          color: ColorItems.spaceCadet,
                          fontSize: 12,
                          fontWeight: FontWeight.w500),
                    ),
                  ),
                ),
                const SizedBox(
                  width: 12,
                ),
                Text(dateToText(widget.info.consultingDate),
                    style: TextItems.title6.copyWith(
                        color: ColorItems.spaceCadet,
                        fontSize: 12,
                        fontWeight: FontWeight.w500))
              ],
            ),
            const SizedBox(
              height: 18,
            ),
            Container(
              alignment: Alignment.centerLeft,
              padding: const EdgeInsets.only(left: 12),
              child: Row(
                children: [
                  Text(
                      widget.vendorlist.length > 7
                          ? widget.vendorlist.substring(0, 6) + '...'
                          : widget.vendorlist,
                      style: TextItems.title5.copyWith(
                          color: ColorItems.spaceCadet,
                          fontSize: 14,
                          fontWeight: FontWeight.w500)),
                  Text(widget.info.consultingList.length.toString() + '개의 상품외 ',
                      style: TextItems.title5.copyWith(
                          color: ColorItems.spaceCadet,
                          fontSize: 14,
                          fontWeight: FontWeight.w500)),
                ],
              ),
            ),
          ],
        ),
      ),
      children: [
        ListView(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          children: widget.info.consultingList
              .map((Consulting e) => consultingItemList(e, widget.state))
              .toList(),
        ),
        Container(
          alignment: Alignment.centerRight,
          padding: const EdgeInsets.only(right: 32, top: 16, bottom: 16),
          child: elevatedCustom(statusCode),
        ),
      ],
    );
  }

  Widget consultingItemList(Consulting consulting, InquireState state) {
    return Padding(
      padding: const EdgeInsets.only(left: 12.0),
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(
                left: MediaQuery.of(context).size.width * .1, bottom: 10),
            child: Row(
              children: [
                Text(
                    state.categoryList
                        .firstWhere((element) =>
                            element.vendorServiceCode ==
                            consulting.vendorServiceCode.toInt())
                        .vendorServiceText,
                    style: TextItems.body4.copyWith(
                        color: ColorItems.spaceCadet,
                        fontSize: 12,
                        fontWeight: FontWeight.w400)),
                Text('-' + consulting.vendorName,
                    style: TextItems.body4.copyWith(
                        color: ColorItems.spaceCadet,
                        fontSize: 12,
                        fontWeight: FontWeight.w400))
              ],
            ),
          ),
          Container(
              width: MediaQuery.of(context).size.width * 0.8,
              alignment: Alignment.center,
              padding: const EdgeInsets.only(top: 7, right: 24, bottom: 7),
              decoration: const BoxDecoration(
                  color: ColorItems.platinum,
                  borderRadius: BorderRadius.all(Radius.circular(18))),
              child: ListView(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                children: consulting.consultingItemList
                    .map((e) => vendorItem(
                          e,
                          consulting.vendorServiceCode.toInt(),
                        ))
                    .toList(),
              )),
        ],
      ),
    );
  }

  Widget vendorItem(ConsultingItem item, int vendorCode) {
    return Row(
      children: [
        const SizedBox(
          width: 16,
        ),
        vendorCode == 1300
            ? item.imageUrl.isEmpty
                ? Container(
                    width: 70,
                    height: 70,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                        border: Border.all(width: 1, color: Colors.black)),
                  )
                : Center(
                    child: ClipRRect(
                        borderRadius: BorderRadius.circular(8.0),
                        child: Image.network(
                          item.imageUrl[0],
                          width: 70,
                          height: 70,
                          fit: BoxFit.cover,
                        )),
                  )
            : item.imageUrl.isEmpty
                ? Container(
                    width: 56,
                    height: 56,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                        border: Border.all(width: 1, color: Colors.black)),
                  )
                : Center(
                    child: ClipRRect(
                        borderRadius: BorderRadius.circular(8.0),
                        child: Image.network(
                          item.imageUrl[0],
                          width: 56,
                          height: 56,
                          fit: BoxFit.cover,
                        )),
                  ),
        const SizedBox(
          width: 10,
        ),
        vendorCode == 1300
            ? Expanded(
                child: Column(
                  children: [
                    Align(
                      alignment: Alignment.centerLeft,
                      child: SizedBox(
                        height: 34,
                        child: Text(item.title,
                            maxLines: 3,
                            style: TextItems.body4.copyWith(
                                color: ColorItems.spaceCadet,
                                fontSize: 12,
                                fontWeight: FontWeight.w400)),
                      ),
                    ),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Row(
                        children: [
                          Text('식사',
                              maxLines: 3,
                              style: TextItems.body4.copyWith(
                                  color: ColorItems.spaceCadet,
                                  fontSize: 12,
                                  fontWeight: FontWeight.w400)),
                          const SizedBox(
                            width: 15,
                          ),
                          Text(
                              CustomString().pirceToString(
                                  item.totalPrice.toInt() - item.price.toInt()),
                              style: TextItems.title7.copyWith(
                                  color: ColorItems.spaceCadet,
                                  fontSize: 12,
                                  fontWeight: FontWeight.w700)),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Row(
                        children: [
                          Text('대관료',
                              maxLines: 3,
                              style: TextItems.body4.copyWith(
                                  color: ColorItems.spaceCadet,
                                  fontSize: 12,
                                  fontWeight: FontWeight.w400)),
                          const SizedBox(
                            width: 15,
                          ),
                          Text(CustomString().pirceToString(item.price.toInt()),
                              style: TextItems.title7.copyWith(
                                  color: ColorItems.spaceCadet,
                                  fontSize: 12,
                                  fontWeight: FontWeight.w700)),
                        ],
                      ),
                    ),
                  ],
                ),
              )
            : Expanded(
                child: Column(
                  children: [
                    Align(
                      alignment: Alignment.centerLeft,
                      child: SizedBox(
                        height: 34,
                        child: Text(item.title,
                            maxLines: 3,
                            style: TextItems.body4.copyWith(
                                color: ColorItems.spaceCadet,
                                fontSize: 12,
                                fontWeight: FontWeight.w400)),
                      ),
                    ),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                          CustomString().pirceToString(item.totalPrice.toInt()),
                          style: TextItems.title7.copyWith(
                              color: ColorItems.spaceCadet,
                              fontSize: 12,
                              fontWeight: FontWeight.w700)),
                    ),
                  ],
                ),
              )
      ],
    );
  }

  Widget statusCodeToKorean(int status) {
    Widget getImage = SizedBox();
    switch (status) {
      case 1:
        getImage =
            Images.getIcon('LabelScrap_waiting.png', width: 72, height: 28);
        break;
      case 2:
        getImage =
            Images.getIcon('LabelScrap_confirm.png', width: 72, height: 28);

        break;
      case 3:
        break;
      case 7:
        getImage =
            Images.getIcon('LabelScrap_cancel.png', width: 72, height: 28);

        break;
      default:
        break;
    }
    return getImage;
  }

  String contactCodeToKorean(int contact) {
    String text = '';
    switch (contact) {
      case 1:
        text = '전화 문의';
        break;
      case 2:
        text = '메일 문의';
        break;
      case 3:
        text = '카카오톡 문의';
        break;
      default:
        text = '';
        break;
    }
    return text;
  }

  String buttontext(int status, String? date) {
    String text = '';
    final DateTime now = DateTime.now();
    final DateFormat format = DateFormat('yyyyMMdd');
    final String formatted = format.format(now);
    if (date == null) {}
    switch (status) {
      case 1:
        text = '상담 신청 취소';
        break;
      case 2:
        text = '상담 완료일 ${dateToText(date ?? '')}';
        break;
      case 3:
        break;
      case 7:
        text = '상담 취소일 ${dateToText(date ?? formatted)}';
        break;
      default:
        break;
    }
    return text;
  }

  Widget elevatedCustom(int status) {
    Widget customButton = const SizedBox();
    switch (status) {
      case 1:
        customButton = ElevatedButton(
            style: ElevatedButton.styleFrom(
                backgroundColor: Colors.white,
                fixedSize: const Size(120, 30),
                shape: RoundedRectangleBorder(
                    side: const BorderSide(
                        color: ColorItems.spaceCadet, width: 1),
                    borderRadius: BorderRadius.circular(18))),
            onPressed: () {
              showDialog(
                  context: context,
                  builder: (context) => ModalCustom()
                      .twoAnswer('해당 상담 요청을 취소하시겠습니까?', '아니요', '네', context,
                          firstFuction: () => {Navigator.pop(context)},
                          secondFunction: () {
                            {
                              cancel();
                              setState(() => statusCode = 7);
                            }
                          }));
            },
            child: Text(buttontext(status, null),
                style: TextItems.title6.copyWith(
                    color: ColorItems.spaceCadet,
                    fontSize: 12,
                    fontWeight: FontWeight.w500)));
        break;
      case 2:
        customButton = ElevatedButton(
            style: ElevatedButton.styleFrom(
                backgroundColor: Colors.white,
                fixedSize: const Size(162, 30),
                shape: RoundedRectangleBorder(
                    side: const BorderSide(
                        color: ColorItems.greenPigment, width: 1),
                    borderRadius: BorderRadius.circular(18))),
            onPressed: () {},
            child: Text(buttontext(status, widget.info.codeUpdateDate),
                style: TextItems.title6.copyWith(
                    color: ColorItems.greenPigment,
                    fontSize: 12,
                    fontWeight: FontWeight.w500)));
        break;
      case 3:

      case 7:
        customButton = ElevatedButton(
            style: ElevatedButton.styleFrom(
                backgroundColor: Colors.white,
                fixedSize: const Size(162, 30),
                shape: RoundedRectangleBorder(
                    side: const BorderSide(color: ColorItems.primary, width: 1),
                    borderRadius: BorderRadius.circular(18))),
            onPressed: () {},
            child: Text(buttontext(status, widget.info.codeUpdateDate),
                style: TextItems.title6.copyWith(
                    color: ColorItems.primary,
                    fontSize: 12,
                    fontWeight: FontWeight.w500)));
        break;
      default:
    }
    return customButton;
  }

  cancel() {
    // context
    //     .read<InquireBloc>()
//        .add(CancelInquiryItemEvent(id: widget.info.consultingId.toInt()));
    Navigator.pop(context);
  }

  String dateToText(String date) {
    var x = date.substring(0, 4) +
        "." +
        date.substring(4, 6) +
        '.' +
        date.substring(6, 8);
    return x;
  }
}
