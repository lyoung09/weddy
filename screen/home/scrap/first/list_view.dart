import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tab_indicator_styler/tab_indicator_styler.dart';
import 'package:weddynew/apis/category/category_model.dart';
import 'package:weddynew/base/bloc/bloc_state.dart';
import 'package:weddynew/resources/Text.dart';
import 'package:weddynew/screen/home/scrap/first/bloc/scrap_bloc.dart';
import 'package:weddynew/screen/home/scrap/first/bloc/scrap_event.dart';
import 'package:weddynew/utils/custom_string.dart';

import '../../../../apis/biz/app_biz.pb.dart';
import '../../../../resources/Colors.dart';
import '../../../../resources/Images.dart';
import '../../util/check_modal.dart';
import 'bloc/scrap_statey.dart';
import 'model/notify.dart';

class ScrapList extends StatefulWidget {
  final int categoryLength;
  final ScrapStateY state;
  const ScrapList(
      {super.key, required this.categoryLength, required this.state});

  @override
  State<ScrapList> createState() => _ScrapListState();
}

class _ScrapListState extends State<ScrapList> with TickerProviderStateMixin {
  int? categoryIndex;
  late TabController _tabController;
  List<int> initLength = [];
  List a = [];

  List<CategoryModel> vendorCategoryList = [];

  @override
  void initState() {
    super.initState();

    checkTabCategory();
  }

  @override
  void didUpdateWidget(ScrapList oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (oldWidget.categoryLength != widget.categoryLength) {
      a = [];
      vendorCategoryList = [];
      checkTabCategory();
    }
  }

  checkTabCategory() {
    widget.state.notifiyModelList.forEach((element) {
      a.add(element.vendorCode);
    });

    vendorCategoryList.add(CategoryModel(
        vendorServiceCode: 0,
        vendorServiceText: '',
        vendorIconImageUrl: '',
        isMandatory: false));
    vendorCategoryList.addAll(widget.state.categoryList
        .where((element) => a.contains(element.vendorServiceCode.toInt()))
        .map((e) => e));

    _tabController = TabController(
      length: vendorCategoryList.length,
      vsync: this, //vsync에 this 형태로 전달해야 애니메이션이 정상 처리됨
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ScrapBlocY, ScrapStateY>(builder: (context, state) {
      return vendorCategoryList.isEmpty
          ? Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const SizedBox(
                  height: 20,
                ),
                Center(child: Images.getIcon('Graph_notFound_scrap.png')),
                const SizedBox(
                  height: 20,
                ),
                Text('스크랩 신청 내역이 없어요.',
                    style: TextItems.title5.copyWith(
                        color: ColorItems.spaceCadet,
                        fontSize: 14,
                        fontWeight: FontWeight.w500)),
              ],
            )
          : DefaultTabController(
              length: vendorCategoryList.length,
              child: Scaffold(
                appBar: state.scrapVendorInfoList.isNotEmpty
                    ? PreferredSize(
                        preferredSize:
                            Size.fromHeight(MediaQuery.of(context).size.height),
                        child: Container(
                            height: 50.0,
                            margin: const EdgeInsets.only(left: 25, bottom: 16),
                            child: TabBar(
                                indicatorColor: ColorItems.primary,
                                indicator: MaterialIndicator(
                                    color: ColorItems.primary, height: 5),
                                indicatorPadding:
                                    const EdgeInsets.only(left: 16, right: 16),
                                unselectedLabelColor:
                                    ColorItems.secondarySpanishGray,
                                indicatorWeight: 3.0,
                                controller: _tabController,
                                labelColor: ColorItems.spaceCadet,
                                labelStyle: TextItems.heading4.copyWith(
                                    fontWeight: FontWeight.w700,
                                    fontSize: 14,
                                    color: ColorItems.spaceCadet),
                                isScrollable: true,
                                onTap: (int index) {
                                  context.read<ScrapBlocY>().add(
                                      VendorCategoryTabEventY(tabIndex: index));
                                  if (context
                                          .read<ScrapBlocY>()
                                          .state
                                          .vendorCategoryTab !=
                                      index) {
                                    scrapExpand = {};
                                  }
                                },
                                tabs: vendorCategoryList
                                    .map((e) => Tab(
                                            child: Text(
                                          e.vendorServiceText == ''
                                              ? '전체'
                                              : e.vendorServiceText,
                                        )))
                                    .toList())),
                      )
                    : null,
                body: state.status.isSuccess
                    ? TabBarView(
                        physics: NeverScrollableScrollPhysics(),
                        controller: _tabController,
                        children: vendorCategoryList
                            .map(
                              (e) => e.vendorServiceCode == 0
                                  ? Padding(
                                      padding: const EdgeInsets.only(top: 12.0),
                                      child: ListView(
                                          padding: const EdgeInsets.only(
                                              bottom:
                                                  56), // if you have non-mini FAB else use 40

                                          shrinkWrap: true,
                                          children: allWidget(
                                            vendorCategoryList,
                                            state.notifiyModelList,
                                          )),
                                    )
                                  : Padding(
                                      padding:
                                          const EdgeInsets.only(bottom: 56),
                                      child: categoryEachWidet(
                                        e,
                                        state.notifiyModelList
                                            .where((element) =>
                                                element.vendorCode ==
                                                e.vendorServiceCode)
                                            .toList(),
                                      ),
                                    ),
                            )
                            .toList())
                    : SizedBox(),
              ),
            );
    });
  }

  List<Widget> allWidget(
      List<CategoryModel> categoryModel, List<NotifiyModel> notify) {
    return categoryModel
        .map((element) => categoryWidet(
            element,
            notify
                .where((e) => element.vendorServiceCode == e.vendorCode.toInt())
                .toList(),
            false))
        .toList();
  }

  bool? expanded;

  int num = 0;
  Map<int, bool> scrapExpand = {};
  Widget categoryWidet(
      CategoryModel categoryModel, List<NotifiyModel> notify, bool values) {
    String t = '';

    int each = 1;
    int all = 0;
    notify
        .where(
            (element) => element.vendorCode == categoryModel.vendorServiceCode)
        .forEach((e) {
      if (e.basicInfo.companyName != t) {
        t = e.basicInfo.companyName;
      } else {
        each++;
      }

      all++;
    });

    // if (t.length > 7) {
    //   t = t.substring(0, 7) + '...';
    // }

    return t == ''
        ? const SizedBox()
        : SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            child: Padding(
              padding: const EdgeInsets.only(left: 12, right: 12, bottom: 8),
              child: Card(
                elevation: 10,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(18),
                ),
                child: ExpansionTile(
                  onExpansionChanged: (bool value) {
                    setState(() {
                      expanded = value;
                    });

                    if (expanded == true) {
                      scrapExpand[categoryModel.vendorServiceCode] = true;
                    } else {
                      scrapExpand.removeWhere((key, value) =>
                          key == categoryModel.vendorServiceCode);
                    }
                  },
                  title: scrapExpand.keys
                              .contains(categoryModel.vendorServiceCode) ==
                          false
                      ? Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(categoryModel.vendorServiceText,
                                style: TextItems.body6.copyWith(
                                    fontSize: 10,
                                    fontWeight: FontWeight.w400,
                                    color: ColorItems.spaceCadet)),
                            Row(
                              children: [
                                Text(
                                  t.length > 7 ? '${t.substring(0, 7)}...' : t,
                                  style: TextItems.title5.copyWith(
                                      fontWeight: FontWeight.w500,
                                      fontSize: 14,
                                      color: ColorItems.spaceCadet),
                                ),
                                context
                                        .read<ScrapBlocY>()
                                        .state
                                        .scrapVendorInfoList
                                        .firstWhere((element) =>
                                            element.basicInfo.companyName == t)
                                        .scrapItemList
                                        .isEmpty
                                    ? Text(
                                        '0개의 상품 외',
                                        style: TextItems.title5.copyWith(
                                            fontWeight: FontWeight.w500,
                                            fontSize: 14,
                                            color: ColorItems.spaceCadet),
                                      )
                                    : Text(
                                        '${context.read<ScrapBlocY>().state.scrapVendorInfoList.firstWhere((element) => element.basicInfo.companyName == t).scrapItemList.length}개의 상품 외',
                                        style: TextItems.title5.copyWith(
                                            fontWeight: FontWeight.w500,
                                            fontSize: 14,
                                            color: ColorItems.spaceCadet),
                                      ),
                                Text(
                                  all.toString(),
                                  style: TextItems.title5.copyWith(
                                      fontWeight: FontWeight.w500,
                                      fontSize: 14,
                                      color: ColorItems.spaceCadet),
                                )
                              ],
                            ),
                            // Text(
                            //   t + ' ${context.read<ScrapBlocY>().state.scrapVendorInfoList.firstWhere((element) => element.basicInfo.companyName == t).scrapItemList.length.toString()}개의 상품 외 ${all.toString()}',
                            //   style: TextItems.title5.copyWith(
                            //       fontWeight: FontWeight.w500,
                            //       fontSize: 14,
                            //       color: ColorItems.spaceCadet),
                            // ),
                          ],
                        )
                      : Text(categoryModel.vendorServiceText,
                          style: TextItems.title5.copyWith(
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                              color: ColorItems.spaceCadet)),
                  leading: Image.asset(
                    categoryModel.vendorIconImageUrl,
                    width: 34,
                    height: 34,
                  ),
                  initiallyExpanded: values,
                  children: [
                    BlocProvider.value(
                      value: BlocProvider.of<ScrapBlocY>(context),
                      child: ListView(
                        shrinkWrap: true,
                        key: GlobalKey(),
                        physics: const NeverScrollableScrollPhysics(),
                        children: context
                            .read<ScrapBlocY>()
                            .state
                            .scrapVendorInfoList
                            .map((element) => notify
                                .where(
                                    (ele) => ele.id == element.scrapId.toInt())
                                .toList())
                            .map(
                              (List<NotifiyModel> e) => e.isEmpty
                                  ? const SizedBox(
                                      height: 0,
                                    )
                                  : vendorWidget(
                                      e,
                                      context,
                                      context
                                          .read<ScrapBlocY>()
                                          .state
                                          .scrapVendorInfoList,
                                      categoryModel.vendorServiceCode),
                            )
                            .toList(),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
  }

  Widget categoryEachWidet(
      CategoryModel categoryModel, List<NotifiyModel> notify) {
    String t = '';

    int each = 1;
    int all = 0;
    notify
        .where(
            (element) => element.vendorCode == categoryModel.vendorServiceCode)
        .forEach((e) {
      if (e.basicInfo.companyName != t) {
        t = e.basicInfo.companyName;
      } else {
        each++;
      }

      all++;
    });

    if (t.length > 7) {
      t = t.substring(0, 7) + '...';
    }

    return t == ''
        ? const SizedBox()
        : SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            child: Padding(
              padding: const EdgeInsets.only(left: 12, right: 12, bottom: 8),
              child: Card(
                elevation: 10,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(18),
                ),
                child: ListView(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  children: [
                    BlocProvider.value(
                      value: BlocProvider.of<ScrapBlocY>(context),
                      child: ListView(
                        shrinkWrap: true,
                        key: GlobalKey(),
                        physics: const NeverScrollableScrollPhysics(),
                        children: context
                            .read<ScrapBlocY>()
                            .state
                            .scrapVendorInfoList
                            .map((element) => notify
                                .where(
                                    (ele) => ele.id == element.scrapId.toInt())
                                .toList())
                            .map(
                              (List<NotifiyModel> e) => e.isEmpty
                                  ? const SizedBox(
                                      height: 0,
                                    )
                                  : vendorWidget(
                                      e,
                                      context,
                                      context
                                          .read<ScrapBlocY>()
                                          .state
                                          .scrapVendorInfoList,
                                      categoryModel.vendorServiceCode),
                            )
                            .toList(),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
  }

  Map<int, bool> allCheckShop = {};
  bool value = false;
  Widget vendorWidget(List<NotifiyModel> e, BuildContext context,
      scrapVendorInfoList, vendorCode) {
    List<String> companyList = [];
    List<int> scrapIdList = [];
    e.forEach((ele) {
      companyList.add(ele.basicInfo.companyName);

      scrapIdList.add(ele.id);
    });
    e.map((ele) => allCheckShop[ele.id] = false);

    return Container(
      padding: const EdgeInsets.only(left: 15, right: 15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ListView(
            physics: const NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            children: companyList
                .toSet()
                .map((ele) => Column(
                      children: [
                        const SizedBox(
                          height: 15,
                        ),
                        Container(
                            padding: const EdgeInsets.only(left: 8.0),
                            alignment: Alignment.centerLeft,
                            child: Text(ele)),
                        const SizedBox(
                          height: 15,
                        ),
                        allCheckList(scrapIdList, ele, vendorCode)
                      ],
                    ))
                .toList(),
          ),
          e
                  .where((NotifiyModel element) =>
                      element.scrapItem.vendorItem.groupId == 1)
                  .map((e) => itemRow(e.scrapItem, e,
                      context.read<ScrapBlocY>().state.notifiyModelList))
                  .isEmpty
              ? const SizedBox(
                  width: 0,
                )
              : Padding(
                  padding: const EdgeInsets.only(left: 8.0),
                  child: cardView('필수'),
                ),
          BlocProvider.value(
            value: BlocProvider.of<ScrapBlocY>(context),
            child: ListView(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              children: e
                  .where((NotifiyModel element) =>
                      element.scrapItem.vendorItem.groupId == 1)
                  .map((e) => itemRow(e.scrapItem, e,
                      context.read<ScrapBlocY>().state.notifiyModelList))
                  .toList(),
            ),
          ),
          e
                  .where((NotifiyModel element) =>
                      element.scrapItem.vendorItem.groupId == 2)
                  .map((e) => itemRow(e.scrapItem, e,
                      context.read<ScrapBlocY>().state.notifiyModelList))
                  .isEmpty
              ? const SizedBox(
                  width: 0,
                )
              : Padding(
                  padding: const EdgeInsets.only(left: 8.0),
                  child: cardView('옵션'),
                ),
          BlocProvider.value(
            value: BlocProvider.of<ScrapBlocY>(context),
            child: ListView(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              children: e
                  .where((NotifiyModel element) =>
                      element.scrapItem.vendorItem.groupId == 2)
                  .map((e) => itemRow(e.scrapItem, e,
                      context.read<ScrapBlocY>().state.notifiyModelList))
                  .toList(),
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          ListView(
            shrinkWrap: true,
            children: companyList
                .toSet()
                .map((e) => Images.getIcon('Divider_products.png'))
                .toList(),
          ),
        ],
      ),
    );
  }

  Widget allCheckList(scrapIdList, ele, vendorCode) {
    return ListView.builder(
        itemCount: scrapIdList.toSet().length,
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        itemBuilder: (context, count) {
          return Row(
            children: [
              context.read<ScrapBlocY>().state.notifyModel != null &&
                      (context
                                  .read<ScrapBlocY>()
                                  .state
                                  .notifyModel!
                                  .basicInfo
                                  .companyName !=
                              ele &&
                          context
                                  .read<ScrapBlocY>()
                                  .state
                                  .notifyModel!
                                  .vendorCode ==
                              vendorCode &&
                          context
                                  .read<ScrapBlocY>()
                                  .state
                                  .notifyModel!
                                  .scrapItem
                                  .id !=
                              scrapIdList[count])
                  ? Theme(
                      data: ThemeData.dark().copyWith(
                        unselectedWidgetColor: ColorItems.secondarySpanishGray,
                      ),
                      child: Checkbox(
                        value: value,
                        onChanged: (bool? value) {},
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(6),
                          side: BorderSide(width: 2, color: Colors.grey),
                        ),
                      ),
                    )
                  : Theme(
                      data: ThemeData.dark().copyWith(
                        unselectedWidgetColor: ColorItems.spaceCadet,
                      ),
                      child: Checkbox(
                          value: allCheckShop[scrapIdList[count]] ?? false,
                          activeColor: ColorItems.primary,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(6)),
                          checkColor: ColorItems.white,
                          onChanged: (bool? values) {
                            setState(() {
                              try {
                                allCheckShop.update(
                                    scrapIdList[count], (value) => values!);
                              } catch (e) {
                                allCheckShop[scrapIdList[count]] = values!;
                              }
                              List<NotifiyModel> nmList = context
                                  .read<ScrapBlocY>()
                                  .state
                                  .notifiyModelList;
                              if (allCheckShop[scrapIdList[count]] == true) {
                                nmList
                                    .where((element) =>
                                        element.id == scrapIdList[count])
                                    .forEach((element) {
                                  element.value = true;
                                });
                                context.read<ScrapBlocY>().add(
                                    CheckScrapEventY(notifiyModelList: nmList));
                              } else if (allCheckShop[scrapIdList[count]] ==
                                  false) {
                                nmList
                                    .where((element) =>
                                        element.id == scrapIdList[count])
                                    .forEach((element) {
                                  element.value = false;
                                });
                                context.read<ScrapBlocY>().add(
                                    CheckScrapEventY(notifiyModelList: nmList));
                              }
                            });
                          }),
                    ),
              Text('전체보기',
                  style: TextItems.title5.copyWith(
                      fontWeight: FontWeight.w500,
                      fontSize: 14,
                      color: ColorItems.spaceCadet)),
            ],
          );
        });
  }

  Widget itemRow(ScrapItem scrapItem, NotifiyModel notifyModel,
      List<NotifiyModel> scrapVendorInfoList) {
    return Container(
      padding: const EdgeInsets.only(top: 4, bottom: 4),
      width: MediaQuery.of(context).size.width * 0.8,
      child: Row(
        children: [
          BlocProvider.value(
            value: BlocProvider.of<ScrapBlocY>(context),
            child: context.read<ScrapBlocY>().state.notifyModel != null &&
                    (context.read<ScrapBlocY>().state.notifyModel!.vendorCode ==
                            notifyModel.vendorCode &&
                        context.read<ScrapBlocY>().state.notifyModel!.id !=
                            notifyModel.id)
                ? Theme(
                    data: ThemeData.dark().copyWith(
                      unselectedWidgetColor: ColorItems.secondarySpanishGray,
                    ),
                    child: Checkbox(
                      value: value,
                      onChanged: (bool? value) {},
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(6)),
                    ),
                  )
                : Theme(
                    data: ThemeData.dark().copyWith(
                      unselectedWidgetColor: ColorItems.spaceCadet,
                    ),
                    child: Checkbox(
                        value: context
                                .read<ScrapBlocY>()
                                .state
                                .notifiyModelList
                                .firstWhere(
                                    (element) => element.scrapItem == scrapItem)
                                .value ??
                            false,
                        activeColor: ColorItems.primary,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(6)),
                        checkColor: ColorItems.white,
                        onChanged: (bool? value) {
                          notifyModel.value = value;
                          setState(() {
                            value = !value!;
                          });

                          if (notifyModel.value == false) {
                            allCheckShop[notifyModel.id] = false;
                          }

                          List<NotifiyModel> list =
                              context.read<ScrapBlocY>().state.notifiyModelList;

                          list
                              .firstWhere(
                                  (element) => element.scrapItem == scrapItem)
                              .value = notifyModel.value;

                          context
                              .read<ScrapBlocY>()
                              .add(CheckScrapEventY(notifiyModelList: list));
                        }),
                  ),
          ),
          scrapItem.vendorItem.imageUrl.isEmpty
              ? Images.getIcon(
                  'Graph_bunny_Pink.png',
                  width: 70,
                  height: 56,
                )
              : Image.network(
                  scrapItem.vendorItem.imageUrl[0],
                  width: 70,
                  height: 56,
                  fit: BoxFit.cover,
                ),
          const SizedBox(
            width: 12,
          ),
          notifyModel.vendorCode == 1100
              ? Expanded(
                  flex: 6,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(scrapItem.vendorItem.title,
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
                                  .pirceToString(scrapItem.totalPrice.toInt() -
                                      scrapItem.vendorItem.price.toInt())
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
                                  .pirceToString(
                                      scrapItem.vendorItem.price.toInt())
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
                      Text(scrapItem.vendorItem.title,
                          overflow: TextOverflow.ellipsis,
                          style: TextItems.body4.copyWith(
                              fontWeight: FontWeight.w400, fontSize: 14)),
                      Text(
                          CustomString().pirceToString(
                              scrapItem.vendorItem.price.toInt()),
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
                    List<NotifiyModel> li = scrapVendorInfoList
                        .where(
                            (element) => element.id == notifyModel.id.toInt())
                        .toList();
                    bool required = true;

                    if (scrapItem.vendorItem.groupId == 1) {
                      switch (li
                          .where((element) =>
                              element.scrapItem.vendorItem.groupId == 1)
                          .length) {
                        case 1:
                          li
                                  .where((element) =>
                                      element.scrapItem.vendorItem.groupId == 2)
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
                      // List<NotifiyModel> list = List.from(
                      //     context.read<ScrapBlocY>().state.notifiyModelList);

                      // list.removeWhere(
                      //     (element) => element.scrapItem == scrapItem);

                      // context.read<ScrapBlocY>().add(RemoveScrapEventY(
                      //     scrapId: notifyModel.id,
                      //     scrapItemId: scrapItem.id.toInt(),
                      //     vendorProfileId: notifyModel.vendorCode,
                      //     notifiyModelList: list));
                      // _showDialogTwoAnswer(
                      //     context, '선택하신 상품을 삭제하시겠습니까?', '취소', '삭제',
                      //     firstFuction: () => Navigator.pop(context),
                      //     secondFunction: () =>
                      //         deleteScrap(scrapItem, notifyModel));

                      showDialog(
                          context: context,
                          builder: (context) => ModalCustom().twoAnswer(
                              '선택하신 상품을 삭제하시겠습니까?', '취소', '삭제', context,
                              firstFuction: () => {Navigator.pop(context)},
                              secondFunction: () =>
                                  {deleteScrap(scrapItem, notifyModel)}));
                    } else {
                      showDialog(
                          context: context,
                          builder: (context) => ModalCustom().oneAnswer(
                              '옵션상품 존재 시 필수상품을 삭제할 수 없습니다. 옵션상품을 먼저 삭제해주세요.',
                              '확인',
                              context,
                              answerFunction: () => {Navigator.pop(context)}));
                    }
                  },
                  child: Images.getIcon('Icon_cross.png')),
            ),
          )
        ],
      ),
    );
  }

  void deleteScrap(scrapItem, notify) {
    List<NotifiyModel> list =
        List.from(context.read<ScrapBlocY>().state.notifiyModelList);

    list.removeWhere((element) => element.scrapItem == scrapItem);
    Navigator.pop(context);
    context.read<ScrapBlocY>().add(RemoveScrapEventY(
        scrapId: notify.id,
        scrapItemId: scrapItem.id.toInt(),
        vendorProfileId: notify.vendorCode,
        notifiyModelList: list));
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
}
