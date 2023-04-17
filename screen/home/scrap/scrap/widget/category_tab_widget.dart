import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tab_indicator_styler/tab_indicator_styler.dart';
import 'package:weddynew/screen/home/scrap/scrap/bloc/scrap_item_bloc.dart';
import 'package:weddynew/screen/home/scrap/scrap/widget/scrap_modal.dart';

import '../../../../../apis/biz/app_biz.pb.dart';
import '../../../../../apis/category/category_data.dart';
import '../../../../../apis/category/category_model.dart';
import '../../../../../provider/boolean_provider.dart';
import '../../../../../resources/Colors.dart';
import '../../../../../resources/Images.dart';
import '../../../../../resources/Text.dart';
import 'category_widget.dart';
import 'entire_widget.dart';

class TabbarWidget extends StatefulWidget {
  final int tablength;
  final ScrapItemBloc bloc;
  final List<ScrapVendorInfo> scrapList;
  const TabbarWidget(
      {super.key,
      required this.tablength,
      required this.scrapList,
      required this.bloc});

  @override
  State<TabbarWidget> createState() => _TabbarWidgetState();
}

class _TabbarWidgetState extends State<TabbarWidget>
    with TickerProviderStateMixin {
  List<CategoryModel> vendorCategoryList = [];
  late TabController _tabController;
  int? tabIndex;
  final categoryList = CategoryList.getCategoryList();

  @override
  void initState() {
    tabIndex = 0;

    checkTabLength();

    super.initState();
  }

  checkTabLength() {
    final vendorList = widget.scrapList
        .map((element) => element.vendorServiceCode.toInt())
        .toSet()
        .toList();

    vendorCategoryList.add(CategoryModel(
        vendorServiceCode: 0,
        vendorServiceText: '',
        vendorIconImageUrl: '',
        isMandatory: false));
    vendorCategoryList.addAll(categoryList
        .where((element) => vendorList.contains(element.vendorServiceCode)));

    _tabController = TabController(
      length: widget.tablength + 1,
      vsync: this,
    );
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: widget.tablength + 1,
      child: Scaffold(
        appBar: PreferredSize(
            preferredSize: Size.fromHeight(MediaQuery.of(context).size.height),
            child: tabWidget()),
        body: TabBarView(
            physics: const NeverScrollableScrollPhysics(),
            controller: _tabController,
            children: vendorCategoryList
                .map((e) => e.vendorServiceCode == 0
                    ? BlocProvider.value(
                        value: BlocProvider.of<ScrapItemBloc>(context),
                        child: AllWidget(
                          bloc: context.read<ScrapItemBloc>(),
                          categoryList: vendorCategoryList,
                          scrapList: widget.scrapList,
                        ),
                      )
                    : BlocProvider.value(
                        value: BlocProvider.of<ScrapItemBloc>(context),
                        child: CategoryWidget(
                          bloc: context.read<ScrapItemBloc>(),
                          category: e,
                          scrapList: widget.scrapList
                              .where((element) =>
                                  element.vendorServiceCode ==
                                  e.vendorServiceCode)
                              .toList(),
                        ),
                      ))
                .toList()),
        floatingActionButton: BlocProvider.value(
            value: BlocProvider.of<ScrapItemBloc>(context),
            child: fab(context)),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      ),
    );
  }

  Widget tabWidget() {
    return Container(
        height: 50.0,
        margin: const EdgeInsets.only(left: 25, bottom: 16),
        child: TabBar(
            indicatorColor: ColorItems.primary,
            indicator: MaterialIndicator(color: ColorItems.primary, height: 5),
            indicatorPadding: const EdgeInsets.only(left: 16, right: 16),
            unselectedLabelColor: ColorItems.secondarySpanishGray,
            indicatorWeight: 3.0,
            controller: _tabController,
            labelColor: ColorItems.spaceCadet,
            labelStyle: TextItems.heading4.copyWith(
                fontWeight: FontWeight.w700,
                fontSize: 14,
                color: ColorItems.spaceCadet),
            isScrollable: true,
            onTap: (int index) {
              // context
              //     .read<ScrapBlocY>()
              //     .add(VendorCategoryTabEventY(tabIndex: index));
              // if (context.read<ScrapBlocY>().state.vendorCategoryTab !=
              //     index) {
              //   scrapExpand = {};
              // }
              setState(() => tabIndex = index);
            },
            tabs: vendorCategoryList
                .map((e) => Tab(
                        child: Text(
                      e.vendorServiceText == '' ? '전체' : e.vendorServiceText,
                    )))
                .toList()));
  }

  Widget fab(BuildContext bloccontext) {
    return BooleanProvider.createWidget(
        provider: bloccontext.read<ScrapItemBloc>().canUseButton, (state) {
      return SizedBox(
        width: 268,
        height: 54,
        child: FittedBox(
          child: FloatingActionButton.extended(
            onPressed: () {
              if (state.value == true) {
                final bloc = bloccontext.read<ScrapItemBloc>();

                int totalPrice = 0;

                if (bloc.state.scrapCheckModel
                    .where((element) => element.vendorCode == 1100)
                    .isNotEmpty) {
                  totalPrice += bloc.state.scrapCheckModel
                      .firstWhere((element) => element.vendorCode == 1100)
                      .scrapVendor
                      .totalPrice
                      .toInt();
                } else {
                  bloc.state.scrapCheckModel.forEach((element) {
                    totalPrice += element.scrapVendor.vendorItem.price.toInt();
                  });
                }
                debugPrint(totalPrice.toString());
                showModalBottomSheet(
                  shape: const RoundedRectangleBorder(
                      borderRadius:
                          BorderRadius.vertical(top: Radius.circular(25.0))),
                  backgroundColor: Colors.white,
                  context: context,
                  useSafeArea: true,
                  isScrollControlled: true,
                  builder: (_) => BlocProvider.value(
                      value: BlocProvider.of<ScrapItemBloc>(bloccontext),
                      child: ScrapModalFirst(
                          totalPrice: totalPrice,
                          scrapCheckModel: bloc.state.scrapCheckModel)),
                );
              } else {
                null;
              }

              // if (context.read<ScrapBlocY>().state.isScraped == false) {
              // } else {
              //   int totalPrice = 0;
              //   if (context
              //       .read<ScrapBlocY>()
              //       .state
              //       .notifiyModelList
              //       .where((element) => element.vendorCode == 1100)
              //       .isNotEmpty) {
              //     totalPrice += context
              //         .read<ScrapBlocY>()
              //         .state
              //         .notifiyModelList
              //         .firstWhere((element) => element.vendorCode == 1100)
              //         .scrapItem
              //         .totalPrice
              //         .toInt();
              //   }
              //   context
              //       .read<ScrapBlocY>()
              //       .state
              //       .notifiyModelList
              //       .where((element) => element.value == true)
              //       .forEach((element) {
              //     totalPrice += element.scrapItem.vendorItem.price.toInt();
              //   });

              //   List<NotifiyModel> nmList = context
              //       .read<ScrapBlocY>()
              //       .state
              //       .notifiyModelList
              //       .where((element) => element.value == true)
              //       .toList();
              // showModalBottomSheet(
              //     shape: const RoundedRectangleBorder(
              //         borderRadius:
              //             BorderRadius.vertical(top: Radius.circular(25.0))),
              //     backgroundColor: Colors.white,
              //     context: context,
              //     useSafeArea: true,
              //     isScrollControlled: true,
              //     builder: (_) => BlocProvider.value(
              //           value: BlocProvider.of<ScrapBlocY>(context),
              //           child: ScrapBottomModalFirst(
              //               totalPrice: totalPrice, nmList: nmList),
              //         ));
              //   }
            },
            label: Text(
              '견적 확인하기',
              style: TextItems.heading3.copyWith(color: Colors.white),
            ),
            icon: SizedBox(
                width: 55,
                height: 55,
                child: Center(
                  child: Images.getIcon('Icon_scrap.png'),
                )),
            backgroundColor:
                state.value ? ColorItems.primary : ColorItems.mistyRose,
            extendedPadding:
                const EdgeInsets.only(left: 40, right: 40, top: 20, bottom: 20),
          ),
        ),
      );
    });
  }
}
