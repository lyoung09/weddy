import 'package:auto_size_text/auto_size_text.dart';
import 'package:email_validator/email_validator.dart';
import 'package:fixnum/fixnum.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:weddynew/apis/biz/app_biz.pbgrpc.dart';
import 'package:weddynew/apis/category/category_data.dart';
import 'package:weddynew/screen/home/scrap/scrap/bloc/scrap_item_bloc.dart';
import 'package:weddynew/screen/home/scrap/scrap/bloc/scrap_item_state.dart';
import 'package:weddynew/utils/custom_string.dart';

import '../../../../../apis/category/category_model.dart';
import '../../../../../resources/Colors.dart';
import '../../../../../resources/Images.dart';
import '../../../../../resources/Text.dart';
import '../../../util/check_modal.dart';
import '../../bloc/scrap_bloc.dart';
import '../../bloc/scrap_statey.dart';
import '../check_model.dart';

class ScrapModalFirst extends StatefulWidget {
  int totalPrice;
  List<ScrapCheckModel> scrapCheckModel;
  ScrapModalFirst(
      {super.key, required this.totalPrice, required this.scrapCheckModel});

  @override
  State<ScrapModalFirst> createState() => _ScrapModalFirstState();
}

class _ScrapModalFirstState extends State<ScrapModalFirst> {
  @override
  void initState() {
    super.initState();
  }

  final category = CategoryList.getCategoryList();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ScrapItemBloc, ScrapItemState>(
        builder: (context, state) {
      List<CategoryModel> cm = [];

      widget.scrapCheckModel.forEach((ele) {
        cm.add(category.firstWhere(
            (element) => element.vendorServiceCode == ele.vendorCode));
      });

      return Container(
        height: MediaQuery.of(context).size.height * 0.95,
        width: MediaQuery.of(context).size.width,
        alignment: Alignment.center,
        child: Column(
          children: [
            Container(
              height: MediaQuery.of(context).size.height * 0.1,
              child: Row(
                children: [
                  const Spacer(),
                  Padding(
                      padding: const EdgeInsets.only(left: 25),
                      child: Text('견적확인',
                          style: TextItems.heading3.copyWith(
                              fontSize: 18, color: ColorItems.spaceCadet))),
                  const Spacer(),
                  GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Padding(
                      padding: const EdgeInsets.only(right: 20.0),
                      child: Images.getIcon('Icon_cross.png',
                          width: 22, height: 22),
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.65,
              width: MediaQuery.of(context).size.width,
              child: ListView(
                shrinkWrap: true,
                physics: const AlwaysScrollableScrollPhysics(),
                children: cm
                    .toSet()
                    .map((ele) => Column(
                          children: [
                            Container(
                              padding:
                                  const EdgeInsets.only(left: 32, right: 32),
                              alignment: Alignment.centerLeft,
                              child: Text(
                                  ele.vendorServiceText +
                                      '-' +
                                      widget.scrapCheckModel
                                          .firstWhere((element) =>
                                              element.vendorCode ==
                                              ele.vendorServiceCode)
                                          .companyname,
                                  style: TextItems.body4.copyWith(
                                      fontWeight: FontWeight.w400,
                                      color: ColorItems.spaceCadet,
                                      fontSize: 12)),
                            ),
                            Container(
                              decoration: const BoxDecoration(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(14)),
                                  color: ColorItems.platinum),
                              padding: const EdgeInsets.only(
                                  left: 14, top: 14, bottom: 14),
                              margin: const EdgeInsets.only(
                                  left: 32, right: 32, top: 8),
                              child: ListView(
                                shrinkWrap: true,
                                physics: const NeverScrollableScrollPhysics(),
                                children: widget.scrapCheckModel
                                    .where((element) =>
                                        element.vendorCode ==
                                        ele.vendorServiceCode)
                                    .toSet()
                                    .map(
                                      (ScrapCheckModel e) =>
                                          itemWidget(e, state, ele),
                                    )
                                    .toList(),
                              ),
                            ),
                            const SizedBox(
                              height: 8,
                            )
                          ],
                        ))
                    .toList(),
              ),
            ),
            Images.getIcon('Divider.png'),
            Container(
              height: MediaQuery.of(context).size.height * 0.15,
              width: MediaQuery.of(context).size.width * 0.85,
              alignment: Alignment.bottomCenter,
              child: Column(
                children: [
                  const SizedBox(
                    height: 14,
                  ),
                  Text(
                    "실제 결제 금액은 예약/계약 시점의 판매조건,옵션 상품 추가 선택 등에 따라 변동될 수  있습니다.",
                    style: TextItems.title6.copyWith(
                        color: ColorItems.secondarySpanishGray,
                        fontSize: 12,
                        fontWeight: FontWeight.w500),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: Text(
                          '총 견적 금액 : ${CustomString().pirceToString(widget.totalPrice)}',
                          style: TextItems.title8.copyWith(
                              fontSize: 15,
                              fontWeight: FontWeight.w600,
                              color: ColorItems.spaceCadet),
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              backgroundColor: ColorItems.primary,
                              fixedSize: const Size(114, 44),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(24))),
                          onPressed: () {
                            _showNextPopup(consultingItemList);
                          },
                          child: Text(
                            '문의하기',
                            style: TextItems.heading3.copyWith(
                                fontSize: 18,
                                fontWeight: FontWeight.w700,
                                color: ColorItems.white),
                          )),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      );
    });
    //}),
  }

  List<ConsultingItem> consultingItemList = [];
  Widget itemWidget(ScrapCheckModel scrapCheckModel, ScrapItemState state,
      CategoryModel ele) {
    List<Consulting> consultList = [];

    consultingItemList.add(ConsultingItem(
        itemId: scrapCheckModel.scrapVendor.id,
        price: scrapCheckModel.scrapVendor.vendorItem.price,
        amount: scrapCheckModel.scrapVendor.amount,
        totalPrice: scrapCheckModel.scrapVendor.totalPrice,
        priceId: scrapCheckModel.scrapVendor.vendorItem.itemId));

    return ListView(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      //padding: EdgeInsets.all(8),
      children: [
        Row(children: [
          scrapCheckModel.scrapVendor.vendorItem.imageUrl.isEmpty
              ? Images.getIcon(
                  'Graph_bunny_Pink.png',
                  width: 56,
                  height: 56,
                )
              : Image.network(
                  scrapCheckModel.scrapVendor.vendorItem.imageUrl[0],
                  width: 56,
                  height: 56,
                  fit: BoxFit.cover,
                ),
          const SizedBox(
            width: 14,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(scrapCheckModel.scrapVendor.vendorItem.title,
                    overflow: TextOverflow.ellipsis,
                    maxLines: 2,
                    style: TextItems.body4.copyWith(
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                        color: ColorItems.spaceCadet)),
                const SizedBox(
                  height: 12,
                ),
                //CustomString().pirceToString()
                ele.vendorServiceCode == 1100
                    ? Text(
                        CustomString().pirceToString(
                            scrapCheckModel.scrapVendor.totalPrice.toInt()),
                        style: TextItems.title7.copyWith(
                            fontSize: 12,
                            fontWeight: FontWeight.w700,
                            color: ColorItems.spaceCadet))
                    : Text(
                        CustomString().pirceToString(scrapCheckModel
                            .scrapVendor.vendorItem.price
                            .toInt()),
                        style: TextItems.title7.copyWith(
                            fontSize: 12,
                            fontWeight: FontWeight.w700,
                            color: ColorItems.spaceCadet)),
              ],
            ),
          )
        ]),
      ],
    );
  }

  _showNextPopup(List<ConsultingItem> consultingItemList) {
    List<Consulting> consultList = [];
    List<int> vendorProfileList = [];
    widget.scrapCheckModel.forEach((element) {
      consultList.add(Consulting(
          vendorProfileId: Int64(element.vendorCode),
          vendorServiceCode: Int64(element.vendorCode),
          consultingItemList: consultingItemList
              .where((e) => e.itemId == element.scrapVendor.id)
              .toSet()));
      vendorProfileList.add(element.vendorCode);
    });

    showModalBottomSheet(
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(top: Radius.circular(25.0))),
        backgroundColor: Colors.white,
        context: context,
        useSafeArea: true,
        isScrollControlled: true,
        builder: (_) => BlocProvider.value(
              value: BlocProvider.of<ScrapBlocY>(context),
              child: ConsultingSuggstionModal(
                totalPrice: widget.totalPrice,
                scrapCheckModel: widget.scrapCheckModel,
                vendorProfileList: vendorProfileList.toSet().toList(),
                consultList: consultList,
              ),
            ));
  }
}

class ConsultingSuggstionModal extends StatefulWidget {
  int totalPrice;
  List<ScrapCheckModel> scrapCheckModel;
  List<int> vendorProfileList;
  List<Consulting> consultList;
  ConsultingSuggstionModal(
      {super.key,
      required this.totalPrice,
      required this.scrapCheckModel,
      required this.vendorProfileList,
      required this.consultList});

  @override
  State<ConsultingSuggstionModal> createState() =>
      _ConsultingSuggstionModalState();
}

class _ConsultingSuggstionModalState extends State<ConsultingSuggstionModal> {
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _phoneController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  int? index;
  List<Consulting> consultList = [];
  final GlobalKey<FormState> _formkey = GlobalKey<FormState>();

  @override
  void initState() {
    consulting();
    super.initState();
  }

  consulting() {
    widget.vendorProfileList.forEach((element) {
      consultList.add(Consulting(
          vendorProfileId: Int64(element),
          vendorServiceCode: widget.consultList
              .firstWhere((e) => e.vendorProfileId.toInt() == element)
              .vendorServiceCode,
          consultingItemList: widget.consultList
              .where((ele) => ele.vendorProfileId == element)
              .map((e) => e.consultingItemList.first)));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.95,
      width: MediaQuery.of(context).size.width,
      alignment: Alignment.center,
      child: Form(
        key: _formkey,
        child: Column(
          children: [
            SizedBox(
                height: MediaQuery.of(context).size.height * 0.1,
                child: Row(
                  children: [
                    SizedBox(
                      width: 15,
                    ),
                    GestureDetector(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: Images.getIcon('icon_arrow',
                            color: ColorItems.primary)),
                    Spacer(),
                    Text(
                      '상담 문의',
                      style: TextItems.heading3.copyWith(
                          fontSize: 18,
                          fontWeight: FontWeight.w700,
                          color: ColorItems.spaceCadet),
                    ),
                    Spacer(),
                    GestureDetector(
                        onTap: () {
                          Navigator.popUntil(context, (route) => route.isFirst);
                        },
                        child: Images.getIcon('Icon_cross.png')),
                    SizedBox(
                      width: 15,
                    ),
                  ],
                )),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.65,
              child: Column(
                children: [
                  Container(
                    padding: const EdgeInsets.only(left: 24),
                    alignment: Alignment.centerLeft,
                    child: Text(
                      '문의 방법을 선택해주세요',
                      style: TextItems.heading3.copyWith(
                          fontSize: 18,
                          fontWeight: FontWeight.w700,
                          color: ColorItems.spaceCadet),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: [
                      Expanded(
                          flex: 3,
                          child: Center(
                            child: GestureDetector(
                              onTap: () {
                                setState(() {
                                  index = 1;
                                });
                              },
                              child: Column(
                                children: [
                                  Container(
                                      width: 64,
                                      height: 64,
                                      decoration: BoxDecoration(
                                          color: index == 1
                                              ? ColorItems.silverSand
                                              : Colors.transparent,
                                          borderRadius: const BorderRadius.all(
                                              Radius.circular(12))),
                                      child:
                                          Images.getIcon('Icon_phoneCall.png')),
                                  Text(
                                    '전화',
                                    style: TextItems.body4.copyWith(
                                        color: ColorItems.spaceCadet,
                                        fontWeight: FontWeight.w400,
                                        fontSize: 12),
                                  )
                                ],
                              ),
                            ),
                          )),
                      Expanded(
                          flex: 3,
                          child: Center(
                            child: GestureDetector(
                                onTap: () {
                                  setState(() => index = 2);
                                },
                                child: Column(
                                  children: [
                                    Container(
                                        width: 64,
                                        height: 64,
                                        decoration: BoxDecoration(
                                            color: index == 2
                                                ? ColorItems.silverSand
                                                : Colors.transparent,
                                            borderRadius:
                                                const BorderRadius.all(
                                                    Radius.circular(12))),
                                        child: Images.getIcon('Icon_mail.png')),
                                    Text('메일',
                                        style: TextItems.body4.copyWith(
                                            color: ColorItems.spaceCadet,
                                            fontWeight: FontWeight.w400,
                                            fontSize: 12))
                                  ],
                                )),
                          )),
                      Expanded(
                          flex: 3,
                          child: GestureDetector(
                            onTap: () {
                              setState(() => index = 3);
                            },
                            child: Center(
                                child: Column(
                              children: [
                                Container(
                                    width: 64,
                                    height: 64,
                                    decoration: BoxDecoration(
                                        color: index == 3
                                            ? ColorItems.silverSand
                                            : Colors.transparent,
                                        borderRadius: const BorderRadius.all(
                                            Radius.circular(12))),
                                    child:
                                        Images.getIcon('Icon_kakaoTalk.png')),
                                Text('카카오톡',
                                    style: TextItems.body4.copyWith(
                                        color: ColorItems.spaceCadet,
                                        fontWeight: FontWeight.w400,
                                        fontSize: 12))
                              ],
                            )),
                          ))
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Container(
                      padding: const EdgeInsets.only(left: 15),
                      alignment: Alignment.centerLeft,
                      child: Row(
                        children: [
                          Text('고객 정보를 입력해주세요.',
                              style: TextItems.heading3.copyWith(
                                  color: ColorItems.spaceCadet,
                                  fontWeight: FontWeight.w700,
                                  fontSize: 18)),
                          const SizedBox(
                            width: 4,
                          ),
                          Text('(*필수)',
                              style: TextItems.title5.copyWith(
                                  color: ColorItems.spaceCadet,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 14))
                        ],
                      )),
                  Padding(
                    padding: const EdgeInsets.only(left: 20.0, right: 20),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text('*이름',
                            style: TextItems.title5.copyWith(
                                color: ColorItems.spaceCadet,
                                fontWeight: FontWeight.w500,
                                fontSize: 14)),
                        Flexible(
                            child: Padding(
                          padding: const EdgeInsets.only(
                              left: 10.0, right: 10, bottom: 20),
                          child: TextFormField(
                            decoration: const InputDecoration(
                              enabledBorder: UnderlineInputBorder(
                                borderSide: BorderSide(
                                    color: ColorItems.secondarySpanishGray),
                              ),
                              focusedBorder: UnderlineInputBorder(
                                borderSide: BorderSide(
                                    color: ColorItems.secondarySpanishGray),
                              ),
                            ),
                            controller: _nameController,
                            keyboardType: TextInputType.name,
                            textInputAction: TextInputAction.next,
                            validator: (String? value) {
                              if (value == null || value.isEmpty) {
                                return '';
                              }
                              return null;
                            },
                          ),
                        ))
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20.0, right: 20),
                    child: Row(
                      children: [
                        Text('*연락처',
                            style: TextItems.title5.copyWith(
                                color: ColorItems.spaceCadet,
                                fontWeight: FontWeight.w500,
                                fontSize: 14)),
                        Flexible(
                            child: Padding(
                          padding: const EdgeInsets.only(
                              left: 10.0, right: 10, bottom: 20),
                          child: TextFormField(
                            decoration: const InputDecoration(
                              enabledBorder: UnderlineInputBorder(
                                borderSide: BorderSide(
                                    color: ColorItems.secondarySpanishGray),
                              ),
                              focusedBorder: UnderlineInputBorder(
                                borderSide: BorderSide(
                                    color: ColorItems.secondarySpanishGray),
                              ),
                            ),
                            keyboardType: TextInputType.number,
                            textInputAction: TextInputAction.next,
                            controller: _phoneController,
                            validator: (String? value) {
                              if (value == null || value.isEmpty) {
                                return '';
                              }
                              return null;
                            },
                          ),
                        ))
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20.0, right: 20),
                    child: Row(
                      children: [
                        Text('*메일주소',
                            style: TextItems.title5.copyWith(
                                color: ColorItems.spaceCadet,
                                fontWeight: FontWeight.w500,
                                fontSize: 14)),
                        Flexible(
                            child: Padding(
                                padding: const EdgeInsets.only(
                                    left: 10.0, right: 10, bottom: 20),
                                child: TextFormField(
                                  decoration: const InputDecoration(
                                    enabledBorder: UnderlineInputBorder(
                                      borderSide: BorderSide(
                                          color:
                                              ColorItems.secondarySpanishGray),
                                    ),
                                    focusedBorder: UnderlineInputBorder(
                                      borderSide: BorderSide(
                                          color:
                                              ColorItems.secondarySpanishGray),
                                    ),
                                  ),
                                  keyboardType: TextInputType.emailAddress,
                                  textInputAction: TextInputAction.done,
                                  controller: _emailController,
                                  validator: (String? value) {
                                    if (value == null ||
                                        value.isEmpty ||
                                        !EmailValidator.validate(value)) {
                                      return '';
                                    }
                                    return null;
                                  },
                                )))
                      ],
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(left: 18, right: 18),
                    // padding: const EdgeInsets.all(12),
                    height: 120,
                    decoration: const BoxDecoration(
                        color: ColorItems.cultured,
                        borderRadius: BorderRadius.all(Radius.circular(18))),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const SizedBox(
                              width: 20,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 8.0),
                              child: Images.getIcon('Ellipse_Vector.png',
                                  width: 6, height: 6),
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            Expanded(
                              child: Text(
                                "상담 문의는 결제 서비스 업데이트 전까지 웨디에서 일시적으로 제공하는 무료 상담 서비스입니다.",
                                style: TextItems.body2.copyWith(
                                    color: ColorItems.spaceCadet,
                                    fontSize: 14,
                                    fontWeight: FontWeight.w400),
                              ),
                            ),
                            const SizedBox(
                              width: 20,
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const SizedBox(
                              width: 20,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 8.0),
                              child: Images.getIcon('Ellipse_Vector.png',
                                  width: 6, height: 6),
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            Expanded(
                              child: Text(
                                  "문의 답변은 평일 기준 1~3일 내(주말 제외) 처리될 예정이며, 처리 결과는 앱 푸시 또는 상담 신청 내역에서 확인할 수 있습니다.",
                                  style: TextItems.body2.copyWith(
                                      color: ColorItems.spaceCadet,
                                      fontSize: 14,
                                      fontWeight: FontWeight.w400)),
                            ),
                            const SizedBox(
                              width: 20,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.2,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Wrap(
                    crossAxisAlignment: WrapCrossAlignment.center,
                    children: [
                      TextButton(
                        child: Text(
                          '개인정보 제 3자 제공',
                          style: TextItems.body2.copyWith(
                              color: ColorItems.carolinaBlue,
                              fontSize: 14,
                              fontWeight: FontWeight.w400),
                        ),
                        onPressed: () {},
                      ),
                      Text("내용을 확인하였으며 이에 동의합니다.",
                          style: TextItems.body2.copyWith(
                              color: ColorItems.spaceCadet,
                              fontSize: 14,
                              fontWeight: FontWeight.w400)),
                    ],
                  ),
                  BlocBuilder<ScrapBlocY, ScrapStateY>(
                      builder: (context, state) {
                    return ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            backgroundColor: index != null &&
                                    _nameController.text.isNotEmpty &&
                                    _emailController.text.isNotEmpty &&
                                    _emailController.text.isNotEmpty
                                ? ColorItems.primary
                                : ColorItems.mistyRose,
                            fixedSize: const Size(268, 54),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(24))),
                        onPressed: () {
                          showDialog(
                              context: context,
                              builder: (_) => BlocProvider.value(
                                    value: BlocProvider.of<ScrapBlocY>(context),
                                    child: ModalCustom().withImage(
                                        '상담 문의 신청이 완료되었습니다',
                                        'Graph_bunny.png',
                                        '확인',
                                        context,
                                        firstFuction: () =>
                                            {addConsulting(context, state)},
                                        secondFunction: () =>
                                            {Navigator.pop(context)}),
                                  ));
                        },
                        child: Text('신청하기',
                            style: TextItems.heading3.copyWith(
                                color: ColorItems.white,
                                fontSize: 18,
                                fontWeight: FontWeight.w700)));
                  })
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  addConsulting(BuildContext context, ScrapStateY state) {
    // if (index != null && _formkey.currentState!.validate()) {
    //   List<NotifiyModel> model = state.notifiyModelList;
    //   model.forEach((element) {
    //     element.value = false;
    //   });
    //   context.read<ScrapBlocY>().add(AddConsultingEvent(
    //       contactName: _nameController.text,
    //       contactTelNumber: _phoneController.text,
    //       contactEmail: _emailController.text,
    //       contactCode: index!,
    //       consultingList: consultList,
    //       notifiyModelList: model));
    //   context.read<ScrapBlocY>().add(TabScrapEventY(tabIndex: 1));
    //   Navigator.popUntil(context, (route) => route.isFirst);
    // } else {
    //   debugPrint("hello world2");
    // }
  }
}
