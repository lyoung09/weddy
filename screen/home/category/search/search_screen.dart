import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:provider/provider.dart';
import 'package:weddynew/apis/category/category_model.dart';
import 'package:weddynew/base/base_bloc_listener_page.dart';
import 'package:weddynew/base/base_stateless_widget.dart';
import 'package:weddynew/base/bloc/bloc_state.dart';
import 'package:weddynew/model/timeline_model.dart';
import 'package:weddynew/screen/home/category/category_page.dart';
import 'package:weddynew/screen/home/category/list/vendor_list_item.dart';
import 'package:weddynew/screen/home/category/search/suggestion_screen.dart';
import 'package:weddynew/screen/home/home.dart';
import 'package:weddynew/screen/home/young_timeline/bloc/timeline_bloc.dart';
import 'package:weddynew/utils/analytics_helper.dart';

import '../../../../apis/biz/app_biz.pb.dart';
import '../../../../resources/Colors.dart';
import '../../../../resources/Images.dart';
import '../../../../resources/Text.dart';

import '../bloc/category_bloc.dart';
import '../bloc/category_event.dart';
import '../bloc/category_state.dart';
import '../list/bloc/vendor_list_bloc.dart';
import '../list/bloc/vendor_list_state.dart';
import '../list/vendor_list_page.dart';
import '../widget/search_category.dart';

class SearchScreen extends BaseStatelessWidget {
  static const String routeName = '/searchCategory';
  final BuildContext blocContext;
  final CategoryState state;

  SearchScreen({
    Key? key,
    required this.blocContext,
    required this.state,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider<CategoryBloc>(
        create: (_) => BlocProvider.of<CategoryBloc>(blocContext),
        child:
            BlocBuilder<CategoryBloc, CategoryState>(builder: (context, state) {
          return Scaffold(
            body: SafeArea(
              child: SingleChildScrollView(
                child: Column(children: [
                  SizedBox(
                    height: 80,
                    child: Row(
                      children: [
                        Expanded(
                            flex: 2,
                            child: IconButton(
                              icon: Images.getIcon('icon_arrow',
                                  color: ColorItems.salmon),
                              onPressed: () {
                                // BlocProvider.of<CategoryBloc>(blocContext)
                                //     .add(SearchCategoryEvent(searchText: ''));
                                context
                                    .read<CategoryBloc>()
                                    .add(SearchCategoryEvent(searchText: ''));

                                Navigator.pushNamed(context, HomePage.routeName,
                                    arguments: 3);
                              },
                            )),
                        Expanded(
                          flex: 8,
                          child: BlocProvider.value(
                            value: BlocProvider.of<CategoryBloc>(context),
                            child: SearchWidget(
                              context: blocContext,
                              state: state,
                              index: 2,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  state.status.isSuccess
                      ? state.searchVendorProfile.isEmpty
                          ? noDataWidet(blocContext)
                          : existDataWidget(state, context)
                      : Text('')
                ]),
              ),
            ),
          );
        }));
  }

  Widget existDataWidget(CategoryState state, BuildContext motherContext) {
    return Column(
      children: [
        Container(
            padding: EdgeInsets.only(left: 20),
            alignment: Alignment.centerLeft,
            child: Text("검색 결과")),
        const SizedBox(
          height: 10,
        ),
        Container(
            padding: EdgeInsets.only(right: 20),
            alignment: Alignment.centerRight,
            child: Text('정렬 아이콘')),
        const SizedBox(
          height: 10,
        ),
        Provider(
          create: (_) => VendorListBloc(
              repository: getIt.get(), productRepository: getIt.get()),
          child: BlocBuilder<VendorListBloc, VendorListState>(
              builder: (vendorContext, vendorState) {
            return ListView.builder(
                shrinkWrap: true,
                itemCount: state.searchVendorProfile.length,
                physics: const NeverScrollableScrollPhysics(),
                itemBuilder: (context, count) {
                  return VendorListItem(
                    vendorCategory: state.vendorCategoryList.firstWhere(
                        (element) =>
                            state
                                .searchVendorProfile[count].vendorServiceCode ==
                            element.vendorServiceCode),
                    searchVendorProfile: state.searchVendorProfile[count],
                    blocContext: vendorContext,
                  );
                });
          }),
        )
      ],
    );
  }

  Widget noDataWidet(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 250,
          child: Center(
            child: Images.getIcon('Graph_notFound_store.png'),
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        Container(
          width: MediaQuery.of(context).size.width * 0.95,
          height: 124,
          decoration: BoxDecoration(
              border: Border.all(color: Colors.black),
              borderRadius: const BorderRadius.all(Radius.circular(18))),
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
                      style: TextItems.title5
                          .copyWith(color: ColorItems.spaceCadet, fontSize: 14),
                    ),
                    SizedBox(
                      height: 3,
                    ),
                    Text(
                      "웨디에게 알려주세요!",
                      style: TextItems.title5
                          .copyWith(color: ColorItems.spaceCadet, fontSize: 14),
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
                                borderRadius: BorderRadius.circular(18))),
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
                child: Center(child: Images.getIcon('Illust_vendors.png')),
              ),
              SizedBox(
                width: 23,
              )
            ],
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        Divider(),
        const SizedBox(
          height: 10,
        ),
        Container(
          padding: EdgeInsets.only(left: 20, top: 15),
          alignment: Alignment.centerLeft,
          child: Column(
            children: [
              const SizedBox(
                height: 10,
              ),
              Align(
                  alignment: Alignment.centerLeft,
                  child: Text('웨딩 필수 항목은 준비 하셧나요?')),
              const SizedBox(
                height: 10,
              ),
              SizedBox(
                height: 140,
                child: ListView.builder(
                    shrinkWrap: true,
                    physics: const AlwaysScrollableScrollPhysics(),
                    scrollDirection: Axis.horizontal,
                    itemCount: state.vendorCategoryList
                        .where((element) => element.isMandatory == true)
                        .length,
                    itemBuilder: (context, count) {
                      List<CategoryModel> vcList = state.vendorCategoryList
                          .where((element) =>
                              element.image != null &&
                              element.image!.isNotEmpty)
                          .toList();
                      return Padding(
                        padding: const EdgeInsets.only(right: 8.0),
                        child: GestureDetector(
                          onTap: () {
                            Navigator.pushNamed(
                                context, VendorListPage.routeName,
                                arguments: vcList[count]);
                          },
                          child: Card(
                            elevation: 6,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                              //set border radius more than 50% of height and width to make circle
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                ClipRRect(
                                  borderRadius: const BorderRadius.only(
                                      topLeft: Radius.circular(10),
                                      topRight: Radius.circular(10)),
                                  child: Image.asset(
                                    vcList[count].image!,
                                    width: 194,
                                    height: 92,
                                    fit: BoxFit.fitWidth,
                                  ),
                                ),
                                const SizedBox(
                                  height: 8,
                                ),
                                Container(
                                  padding: const EdgeInsets.only(left: 12),
                                  alignment: Alignment.centerLeft,
                                  child: Text(vcList[count].vendorServiceText,
                                      style: TextItems.title6.copyWith(
                                          color: ColorItems.spaceCadet,
                                          fontWeight: FontWeight.w500,
                                          fontSize: 12)),
                                )
                              ],
                            ),
                          ),
                        ),
                      );
                    }),
              )
            ],
          ),
        )
      ],
    );
  }

  // void _bottomModal(context){
  //     showBottomSheet(context: context, builder: (_)=> )
  // }
}
