import 'package:auto_size_text/auto_size_text.dart';
import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:fixnum/fixnum.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weddynew/apis/biz/app_biz.pbgrpc.dart';
import 'package:weddynew/apis/category/category_data.dart';
import 'package:weddynew/apis/result.dart';
import 'package:weddynew/di/di_module.dart';
import 'package:weddynew/repository/safe_api.dart';
import 'package:weddynew/resources/Colors.dart';
import 'package:weddynew/screen/home/category/search/widget/custom_dropdown.dart';
import 'package:weddynew/screen/home/home.dart';
import 'package:weddynew/screen/home/util/check_modal.dart';

import '../../../../apis/common/app_common.pb.dart';
import '../../../../resources/Images.dart';
import '../../../../resources/Text.dart';
import '../../../../service/biz_api_service.dart';

class SuggestionScreen extends StatefulWidget {
  static const String routeName = "/suggestion";

  const SuggestionScreen({super.key});

  @override
  State<SuggestionScreen> createState() => _SuggestionScreenState();
}

class _SuggestionScreenState extends State<SuggestionScreen> {
  final categoryList = CategoryList.getCategoryList();
  String text = '카테고리 선택';
  int? serviceCode;

  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _regionController = TextEditingController();
  final TextEditingController _reasonController = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(52),
        child: AppBar(
          elevation: 0,
          centerTitle: true,
          title: Text(
            '판매사 추천',
            style: TextItems.heading3.copyWith(
                color: ColorItems.spaceCadet,
                fontSize: 18,
                fontWeight: FontWeight.w700),
          ),
        ),
      ),
      body: GestureDetector(
        behavior: HitTestBehavior.translucent,
        onTap: () {
          FocusScope.of(context).unfocus();
        },
        child: Column(
          key: _formKey,
          children: [
            Container(
              alignment: Alignment.centerRight,
              padding: const EdgeInsets.only(right: 12),
              child: RichText(
                  text: TextSpan(children: [
                const TextSpan(
                    text: '* ',
                    style: TextStyle(
                        color: ColorItems.primary,
                        fontSize: 14,
                        fontWeight: FontWeight.w500)),
                TextSpan(
                    text: '필수 선택/입력 항목',
                    style: TextItems.title4.copyWith(
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                        color: ColorItems.spaceCadet))
              ])),
            ),
            const SizedBox(
              height: 30,
            ),
            Container(
              padding: const EdgeInsets.only(right: 15),
              child: Row(
                children: [
                  beautyText(
                    "판매사 카테고리",
                  ),
                  const Spacer(),
                  dropdownField()
                ],
              ),
            ),
            const SizedBox(
              height: 24,
            ),
            beautyText('판매사명'),
            const SizedBox(
              height: 3,
            ),
            customTextform('판매사명을 입력해주세요.', _nameController),
            const SizedBox(
              height: 24,
            ),
            beautyText('판매사 지역'),
            const SizedBox(
              height: 3,
            ),
            customTextform('판매사의 주소 또는 지역을 입력해주세요.', _regionController),
            const SizedBox(
              height: 24,
            ),
            Container(
              alignment: Alignment.centerLeft,
              padding: const EdgeInsets.only(left: 30),
              child: RichText(
                  text: TextSpan(children: [
                TextSpan(
                    text: '추천 이유',
                    style: TextItems.title5.copyWith(
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                        color: ColorItems.spaceCadet))
              ])),
            ),
            const SizedBox(
              height: 12,
            ),
            Container(
              width: MediaQuery.of(context).size.width * .8,
              alignment: Alignment.center,
              height: 100,
              child: TextFormField(
                cursorColor: ColorItems.spaceCadet,
                controller: _reasonController,
                maxLength: 50,
                maxLines: 2,
                style: TextItems.body2
                    .copyWith(fontSize: 14, fontWeight: FontWeight.w400),
                textInputAction: TextInputAction.done,
                decoration: InputDecoration(
                    isDense: true,
                    enabledBorder: OutlineInputBorder(
                      borderSide:
                          const BorderSide(width: 1, color: Colors.black),
                      borderRadius: BorderRadius.circular(15.0),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide:
                          const BorderSide(width: 1, color: Colors.black),
                      borderRadius: BorderRadius.circular(15.0),
                    ),
                    contentPadding: const EdgeInsets.symmetric(
                        vertical: 25.0, horizontal: 10.0),
                    hintText: '해당 판매사에 대한 설명 또는 추천하는 이유를 입력해주세요. (50자)',
                    hintStyle: TextItems.body2.copyWith(
                        color: ColorItems.secondarySpanishGray,
                        fontSize: 14,
                        fontWeight: FontWeight.w400)),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              height: 120,
              width: MediaQuery.of(context).size.width * 0.9,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                  border: Border.all(color: ColorItems.spaceCadet, width: 1),
                  borderRadius: const BorderRadius.all(Radius.circular(18))),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const SizedBox(
                    height: 12,
                  ),
                  Row(
                    children: [
                      const SizedBox(
                        width: 20,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 10),
                        child: Images.getIcon('Ellipse_Vector.png',
                            width: 12, height: 12),
                      ),
                      const SizedBox(
                        width: 8,
                      ),
                      Expanded(
                        child: Text('추천하신 판매사는 앱 운영자가 빠른 시일 내 입점을 검토할 예정입니다.',
                            textScaleFactor: 1.1,
                            maxLines: 2,
                            style: TextItems.heading5.copyWith(
                                fontSize: 12,
                                fontWeight: FontWeight.w600,
                                color: ColorItems.spaceCadet)),
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 12,
                  ),
                  Row(
                    children: [
                      const SizedBox(
                        width: 20,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 10),
                        child: Images.getIcon('Ellipse_Vector.png',
                            width: 12, height: 12),
                      ),
                      const SizedBox(
                        width: 8,
                      ),
                      Expanded(
                          child: Wrap(
                        children: [
                          Text('추후 진행 상황은 ',
                              textScaleFactor: 1.1,
                              style: TextItems.heading5.copyWith(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w600,
                                  color: ColorItems.spaceCadet)),
                          Text('마이페이지 > MY 판매사 추천',
                              textScaleFactor: 1.1,
                              style: TextItems.heading5.copyWith(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w600,
                                  color: ColorItems.carolinaBlue)),
                          Text('에서확인하실 수 있습니다.',
                              textScaleFactor: 1.1,
                              style: TextItems.heading5.copyWith(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w600,
                                  color: ColorItems.spaceCadet)),
                        ],
                      )),
                      const SizedBox(
                        width: 20,
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 12,
                  ),
                ],
              ),
            ),
            const Spacer(),
            Container(
              alignment: Alignment.bottomCenter,
              padding: const EdgeInsets.only(bottom: 35),
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      fixedSize: const Size(268, 54),
                      backgroundColor: _nameController.text.isNotEmpty &&
                              _regionController.text.isNotEmpty &&
                              serviceCode != null
                          ? ColorItems.primary
                          : ColorItems.mistyRose,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(24))),
                  onPressed: () async {
                    showDialog(
                        context: context,
                        builder: (_) => ModalCustom().oneAnswer(
                            '판매사 추천 요청이 제출되었습니다 소중한 의견 감사합니다', '확인', context,
                            answerFunction: () => {validate()}));
                  },
                  child: Text(
                    '제출하기',
                    style: TextItems.heading3.copyWith(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.w700),
                  )),
            )
          ],
        ),
      ),
    );
  }

  validate() async {
    if (_formKey.currentState!.validate() && serviceCode != null) {
      await BizApiService(getIt.get())
          .addUserVendorRecommandService(_nameController.text, serviceCode!,
              _regionController.text, _reasonController.text)
          .then((value) {
        Navigator.popAndPushNamed(context, HomePage.routeName, arguments: 3);
        return value;
      });
    }
  }

  Widget beautyText(String text) {
    return Container(
      alignment: Alignment.centerLeft,
      padding: const EdgeInsets.only(left: 17),
      child: RichText(
          text: TextSpan(children: [
        const TextSpan(
            text: '* ',
            style: TextStyle(
                color: ColorItems.primary,
                fontSize: 14,
                fontWeight: FontWeight.w500)),
        TextSpan(
            text: text,
            style: TextItems.title5.copyWith(
                fontSize: 14,
                fontWeight: FontWeight.w500,
                color: ColorItems.spaceCadet))
      ])),
    );
  }

  Widget customTextform(String hintText, TextEditingController controller) {
    return Container(
      padding: const EdgeInsets.only(left: 22, right: 22),
      alignment: Alignment.center,
      child: TextFormField(
        cursorColor: ColorItems.spaceCadet,
        maxLines: 1,
        style:
            TextItems.body2.copyWith(fontSize: 14, fontWeight: FontWeight.w400),
        textInputAction: TextInputAction.next,
        controller: controller,
        decoration: InputDecoration(
            enabledBorder: const UnderlineInputBorder(
              borderSide:
                  BorderSide(width: 1, color: ColorItems.secondarySpanishGray),
            ),
            focusedBorder: const UnderlineInputBorder(
              borderSide:
                  BorderSide(width: 1, color: ColorItems.secondarySpanishGray),
            ),
            hintText: hintText,
            hintStyle: TextItems.body2.copyWith(
                color: ColorItems.secondarySpanishGray,
                fontWeight: FontWeight.w400,
                fontSize: 14)),
        validator: (String? value) {
          if (value == null || value.isEmpty) {
            return null;
          }
          return null;
        },
      ),
    );
  }

  Widget expansionVendor() {
    return ExpansionTile(
      title: Text(
        text,
        style: TextItems.body2.copyWith(
            color: text == "카테고리 선택"
                ? ColorItems.secondarySpanishGray
                : ColorItems.spaceCadet),
      ),
      children: [
        Container(
          decoration: ShapeDecoration(
              color: Colors.white,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10))),
          height: 250,
          child: Scrollbar(
            child: ListView.builder(
              padding: const EdgeInsets.only(top: 20),
              itemCount: categoryList.length,
              itemBuilder: (context, index) {
                final trans = categoryList[index];
                return ListTile(
                  title: Text(
                    trans.vendorServiceText.toString(),
                    style: const TextStyle(
                      fontSize: 16,
                    ),
                  ),
                  onTap: () {
                    setState(() {
                      text = categoryList[index].vendorServiceText.toString();
                      serviceCode = categoryList[index].vendorServiceCode;
                    });
                    Navigator.pop(
                      context,
                    );
                  },
                );
              },
            ),
          ),
        )
      ],
    );
  }

  String? values;
  bool? checkDropdown;
  Widget dropdownField() {
    return SizedBox(
      width: MediaQuery.of(context).size.width * 0.55,
      height: 40,
      child: CustomDropdownButton2(
          hint: text,
          value: values,
          dropdownItems: categoryList.map((e) => e.vendorServiceText).toList(),
          onChanged: (value) {
            setState(() {
              values = value!;
              serviceCode = categoryList
                  .firstWhere((element) => element.vendorServiceText == values)
                  .vendorServiceCode;
            });
          }),
    );
  }

  // Widget popupmenu() {
  //   return PopupMenuButton(
  //       offset: const Offset(0.0, -10.0),
  //       elevation: 0,
  //       color: Colors.transparent,
  //       shape: const RoundedRectangleBorder(
  //           borderRadius: BorderRadius.all(Radius.circular(10))),
  //       itemBuilder: (context) {
  //         return <PopupMenuEntry<Widget>>[
  //           PopupMenuItem<Widget>(
  //             child: Container(
  //               decoration: ShapeDecoration(
  //                   color: Colors.white,
  //                   shape: RoundedRectangleBorder(
  //                       borderRadius: BorderRadius.circular(10))),
  //               height: 250,
  //               width: 500,
  //               child: Scrollbar(
  //                 child: ListView.builder(
  //                   padding: const EdgeInsets.only(top: 20),
  //                   itemCount: categoryList.length,
  //                   itemBuilder: (context, index) {
  //                     final trans = categoryList[index];
  //                     return ListTile(
  //                       title: Text(
  //                         trans.vendorServiceText.toString(),
  //                         style: const TextStyle(
  //                           fontSize: 16,
  //                         ),
  //                       ),
  //                       onTap: () {
  //                         setState(() {
  //                           text = categoryList[index]
  //                               .vendorServiceText
  //                               .toString();
  //                           serviceCode = categoryList[index].vendorServiceCode;
  //                         });
  //                         Navigator.pop(
  //                           context,
  //                         );
  //                       },
  //                     );
  //                   },
  //                 ),
  //               ),
  //             ),
  //           )
  //         ];
  //       },
  //       child: Container(
  //           height: 45,
  //           width: 230,
  //           padding: const EdgeInsets.only(left: 5, right: 5),
  //           alignment: Alignment.centerLeft,
  //           decoration: BoxDecoration(
  //               border: Border.all(
  //                   width: 1, color: ColorItems.secondarySpanishGray),
  //               borderRadius: const BorderRadius.all(Radius.circular(12))),
  //           child: Row(
  //             children: [
  //               Text(
  //                 text,
  //                 style: TextItems.body2.copyWith(
  //                     color: text == "카테고리 선택"
  //                         ? ColorItems.secondarySpanishGray
  //                         : ColorItems.spaceCadet),
  //               ),
  //               const Spacer(),
  //               Images.getIcon('Icon_angle_down.png')
  //             ],
  //           )));
  // }
}
