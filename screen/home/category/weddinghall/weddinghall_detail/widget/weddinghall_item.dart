import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weddynew/apis/biz/app_biz.pb.dart';
import 'package:weddynew/apis/weddinghall/weddinghall_data.dart';

import '../../../../../../apis/weddinghall/weddinghall_model.dart';
import '../../../../../../resources/Colors.dart';
import '../../../../../../resources/Images.dart';
import '../../../../../../resources/Text.dart';
import '../../../detail/video/video_view.dart';
import '../bloc/weddinghall_state.dart';

class ItemWidget extends StatefulWidget {
  final BuildContext bloccontext;
  final WeddingHallDetailState blocstate;
  final int id;
  const ItemWidget(
      {super.key,
      required this.bloccontext,
      required this.blocstate,
      required this.id});

  @override
  State<ItemWidget> createState() => _ItemWidgetState();
}

class _ItemWidgetState extends State<ItemWidget> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10.0),
      child: ListView(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 25.0),
            child: Text(
              '주요 서비스',
              style: TextItems.title8.copyWith(
                  fontSize: 16,
                  fontWeight: FontWeight.w700,
                  color: ColorItems.spaceCadet),
            ),
          ),
          const SizedBox(
            height: 18,
          ),
          hallDetail(widget.blocstate.weddingHallItem),
          const SizedBox(
            height: 12,
          ),
          Images.getIcon('Divider.png'),
          const SizedBox(
            height: 12,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 25.0),
            child: Text('부가 서비스',
                style: TextItems.title8.copyWith(
                    fontSize: 16,
                    fontWeight: FontWeight.w700,
                    color: ColorItems.spaceCadet)),
          ),
          hallMinor(widget.blocstate.weddingHallItemExtra),
          const SizedBox(
            height: 24,
          ),
          Images.getIcon('Divider.png'),
          const SizedBox(
            height: 24,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 25.0),
            child: Text('소개 영상',
                style: TextItems.title8.copyWith(
                    fontSize: 16,
                    fontWeight: FontWeight.w700,
                    color: ColorItems.spaceCadet)),
          ),
          const SizedBox(
            height: 42,
          ),
          VideoWidget(videoList: widget.blocstate.videoList),
          const SizedBox(
            height: 18,
          ),
        ],
      ),
    );
  }

  Widget hallDetail(List<WeddinghallItem> item) {
    return ListView(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      children: item.map((e) => rowDetail(e)).toList(),
    );
  }

  Widget hallMinor(List<WeddinghallAdditionItem> extraItem) {
    return ListView(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      children: [
        const SizedBox(
          height: 28,
        ),
        ListView(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          children: extraItem.map((e) => rowMinor(e)).toList(),
        ),
        // const SizedBox(
        //   height: 15,
        // ),
        Row(
          children: [
            const SizedBox(
              width: 24,
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 30),
              child:
                  Images.getIcon('Ellipse_Vector.png', width: 12, height: 12),
            ),
            const SizedBox(
              width: 10,
            ),
            Expanded(
              child: Text(
                  '본 상품 정보는 판매사에서 직접 제공한 정보이며, 실제 결제 금액은 예약/계약 시점의 판매조건, 옵션 상품 추가 등에 따라 변동될 수 있습니다.',
                  textScaleFactor: 1.1,
                  maxLines: 3,
                  style: TextItems.body2.copyWith(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      color: ColorItems.spaceCadet)),
            ),
            const SizedBox(
              width: 32,
            ),
          ],
        ),
      ],
    );
  }

  Widget rowDetail(WeddinghallItem hallItem) {
    List<WeddinghallModel> major = WeddinghallList.getWeddinghall();

    return Container(
      height: 80,
      padding: const EdgeInsets.only(bottom: 10.0),
      child: Row(
        children: [
          const SizedBox(
            width: 15,
          ),
          Image.asset(major
              .firstWhere((element) =>
                  element.weddinghallItemcode ==
                  hallItem.weddinghallItemCode.toInt())
              .image),
          const SizedBox(
            width: 15,
          ),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  hallItem.price.toInt() == 0
                      ? "무료"
                      : '${hallItem.price.toString()}원',
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: TextItems.heading4.copyWith(
                      fontSize: 14,
                      fontWeight: FontWeight.w700,
                      color: ColorItems.spaceCadet),
                ),
                const SizedBox(
                  height: 8,
                ),
                Text(hallItem.comments,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: TextItems.body2.copyWith(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        color: ColorItems.spaceCadet)),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget rowMinor(WeddinghallAdditionItem hallExtraItem) {
    List<WeddinghallMinorModel> minor = WeddinghallList.getWeddinghallExtar();
    return Padding(
      padding: const EdgeInsets.only(bottom: 15.0),
      child: SizedBox(
        height: 45,
        child: Row(
          children: [
            const SizedBox(
              width: 35,
            ),
            Image.asset(
              minor
                  .firstWhere((element) =>
                      element.weddinghallAdditionItemCode ==
                      hallExtraItem.weddinghallAdditionItemCode.toInt())
                  .image,
              // width: 25,
              // height: 18,
            ),
            const SizedBox(
              width: 30,
            ),
            Text(
              hallExtraItem.itemTitle,
              style: TextItems.heading4.copyWith(
                  fontSize: 14,
                  fontWeight: FontWeight.w700,
                  color: ColorItems.spaceCadet),
            ),
            const SizedBox(
              width: 25,
            ),
            isUsedWidget(hallExtraItem.isUsed)
          ],
        ),
      ),
    );
  }

  Widget isUsedWidget(bool? check) {
    return check == true
        ? Container(
            width: 62,
            height: 20,
            decoration: BoxDecoration(
              border: Border.all(color: ColorItems.carolinaBlue),
              borderRadius: const BorderRadius.all(Radius.circular(18)),
            ),
            alignment: Alignment.center,
            child: Text('지원 가능',
                style: TextItems.body4.copyWith(
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
                    color: ColorItems.carolinaBlue)),
          )
        : Container(
            width: 62,
            height: 20,
            decoration: BoxDecoration(
              border: Border.all(color: ColorItems.maximumRed),
              borderRadius: const BorderRadius.all(Radius.circular(18)),
            ),
            alignment: Alignment.center,
            child: Text('지원 불가',
                style: TextItems.body4.copyWith(
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
                    color: ColorItems.maximumRed)),
          );
  }
}
