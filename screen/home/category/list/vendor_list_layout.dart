import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weddynew/base/base_stateless_widget.dart';
import 'package:weddynew/screen/home/category/list/bloc/vendor_list_bloc.dart';
import 'package:weddynew/screen/home/category/list/bloc/vendor_list_state.dart';
import 'package:weddynew/screen/home/category/list/vendor_list_appbar.dart';
import 'package:weddynew/screen/home/category/list/vendor_list_item.dart';
import 'package:weddynew/screen/home/category/list/widget/list_bottom_modal.dart';
import 'package:weddynew/screen/home/category/list/widget/list_pagination.dart';
import 'package:weddynew/screen/home/category/search/suggestion_screen.dart';

import '../../../../apis/biz/app_biz.pb.dart';
import '../../../../apis/category/category_model.dart';
import '../../../../resources/Colors.dart';
import '../../../../resources/Images.dart';
import '../../../../resources/Text.dart';
import 'bloc/vendor_list_event.dart';

class VendorListLayout extends BaseStatelessWidget {
  final CategoryModel vendorCategory;
  final VendorListState state;
  VendorListLayout(
      {Key? key, required this.vendorCategory, required this.state})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(52),
        child: AppBar(
          toolbarHeight: 52,
          elevation: 0,
          leading: IconButton(
            icon: Images.getIcon('icon_arrow', color: ColorItems.salmon),
            onPressed: () {
              Navigator.of(context)
                  .pushReplacementNamed('/home_page', arguments: 3);
            },
          ),
          title: context.read<VendorListBloc>().state.toggle == 0
              ? RichText(
                  text: TextSpan(children: [
                    WidgetSpan(
                        child: Image.asset(
                      vendorCategory.vendorIconImageUrl,
                      width: 22,
                      height: 22,
                    )),
                    TextSpan(text: '  '),
                    TextSpan(
                        text: vendorCategory.vendorServiceText,
                        style: TextItems.heading3.copyWith(
                            fontWeight: FontWeight.w700,
                            fontSize: 18,
                            color: ColorItems.spaceCadet)),
                  ]),
                )
              : const SizedBox(
                  width: 0,
                ),
          centerTitle: true,
          actions: [
            BlocProvider.value(
              value: BlocProvider.of<VendorListBloc>(context),
              child: VendorListAppbar(
                  blocContext: context,
                  state: context.read<VendorListBloc>().state,
                  index: vendorCategory.vendorServiceCode.toInt()),
            ),
          ],
        ),
      ),
      body: state.searchVendorProfileList.isEmpty
          ? ListView(
              shrinkWrap: true,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const SizedBox(
                      height: 80,
                    ),
                    Center(child: Images.getIcon('Graph_gettingReady.png')),
                    const SizedBox(
                      height: 20,
                    ),
                    Text('판매사 입점을 준비 중이에요.',
                        style: TextItems.body2.copyWith(
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                            color: ColorItems.spaceCadet)),
                    const SizedBox(
                      height: 20,
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width * 0.85,
                      height: 124,
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.black),
                          borderRadius:
                              const BorderRadius.all(Radius.circular(18))),
                      child: Row(
                        children: [
                          SizedBox(
                            width: 31,
                          ),
                          Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              //crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                SizedBox(
                                  height: 3,
                                ),
                                Text(
                                  "원하는 판매사가 있다면",
                                  style: TextItems.title5.copyWith(
                                      color: ColorItems.spaceCadet,
                                      fontSize: 14),
                                ),
                                SizedBox(
                                  height: 3,
                                ),
                                Text(
                                  "웨디에게 알려주세요!",
                                  style: TextItems.title5.copyWith(
                                      color: ColorItems.spaceCadet,
                                      fontSize: 14),
                                ),
                                const SizedBox(
                                  height: 8,
                                ),
                                ElevatedButton(
                                    style: ElevatedButton.styleFrom(
                                        backgroundColor: ColorItems.spaceCadet,
                                        shadowColor: ColorItems.primary,
                                        fixedSize: const Size(175, 30),
                                        shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(18))),
                                    onPressed: () {
                                      Navigator.pushNamed(
                                          context, SuggestionScreen.routeName);
                                    },
                                    child: Align(
                                      alignment: Alignment.center,
                                      child: Text("+ 웨디에게 추천하기",
                                          style: TextItems.heading4.copyWith(
                                              color: Colors.white,
                                              fontSize: 14,
                                              fontWeight: FontWeight.w700)),
                                    )),
                              ]),
                          Spacer(),
                          CircleAvatar(
                            radius: 48,
                            backgroundColor: ColorItems.platinumRose,
                            child: Center(
                                child: Images.getIcon('Illust_vendors.png')),
                          ),
                          SizedBox(
                            width: 23,
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            )
          : GestureDetector(
              behavior: HitTestBehavior.translucent,
              onTap: () {
                FocusScope.of(context).unfocus();
              },
              child: SingleChildScrollView(
                child: Column(children: [
                  const SizedBox(
                    height: 15,
                  ),
                  Container(
                    alignment: Alignment.centerRight,
                    padding: const EdgeInsets.only(right: 24),
                    child: Row(
                      children: [
                        const Spacer(),
                        Text("정렬",
                            style: TextItems.body2.copyWith(
                                color: ColorItems.spaceCadet,
                                fontSize: 14,
                                fontWeight: FontWeight.w400)),
                        const SizedBox(
                          width: 10,
                        ),
                        InkWell(
                            onTap: () {
                              showModalBottomSheet(
                                shape: const RoundedRectangleBorder(
                                    borderRadius: BorderRadius.vertical(
                                        top: Radius.circular(25.0))),
                                backgroundColor: Colors.white,
                                context: context,
                                useSafeArea: true,
                                isScrollControlled: true,
                                builder: (_) => BlocProvider.value(
                                    value: BlocProvider.of<VendorListBloc>(
                                        context),
                                    child: ListBottomModal(
                                        index: context
                                            .read<VendorListBloc>()
                                            .state
                                            .filterNum,
                                        code:
                                            vendorCategory.vendorServiceCode)),
                              );
                            },
                            child: Images.getIcon('Icon_filter.png'))
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  ListView.builder(
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      itemCount: state.searchVendorProfileList.length,
                      itemBuilder: (_, count) {
                        return Padding(
                          padding: const EdgeInsets.only(bottom: 22.0),
                          child: VendorListItem(
                              vendorCategory: vendorCategory,
                              searchVendorProfile:
                                  state.searchVendorProfileList[count],
                              blocContext: context),
                        );
                      }),
                ]),
              ),
            ),
    );
  }
}
