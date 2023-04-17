import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weddynew/screen/home/scrap/scrap/check_model.dart';
import 'package:weddynew/screen/home/scrap/scrap/widget/item_widget.dart';

import '../../../../../apis/biz/app_biz.pb.dart';
import '../../../../../apis/category/category_model.dart';
import '../../../../../resources/Colors.dart';
import '../../../../../resources/Text.dart';
import '../bloc/scrap_item_bloc.dart';

class AllWidget extends StatefulWidget {
  final List<CategoryModel> categoryList;
  final List<ScrapVendorInfo> scrapList;
  final ScrapItemBloc bloc;

  const AllWidget(
      {super.key,
      required this.categoryList,
      required this.scrapList,
      required this.bloc});

  @override
  State<AllWidget> createState() => _AllWidgetState();
}

class _AllWidgetState extends State<AllWidget> {
  bool? expanded;
  List<ScrapCheckModel>? scrapCheckModel;
  @override
  initState() {
    super.initState();
    expanded = false;
  }

  @override
  Widget build(BuildContext context) {
    return ListView(
      physics: const BouncingScrollPhysics(),
      shrinkWrap: true,
      children: widget.categoryList
          .where((element) => element.vendorServiceCode != 0)
          .map((e) => expansionTile(e))
          .toList(),
    );
  }

  Widget expansionTile(CategoryModel category) {
    int all = 0;

    ScrapVendorInfo data = widget.scrapList.firstWhere(
        (element) => element.vendorServiceCode == category.vendorServiceCode);

    all = widget.scrapList
        .where((element) =>
            element.vendorServiceCode == category.vendorServiceCode)
        .map((e) => e.scrapItemList)
        .length;

    return Padding(
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
                },
                title: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(category.vendorServiceText,
                        style: TextItems.body6.copyWith(
                            fontSize: 10,
                            fontWeight: FontWeight.w400,
                            color: ColorItems.spaceCadet)),
                    Row(
                      children: [
                        Text(
                            data.basicInfo.companyName.length > 12
                                ? '${data.basicInfo.companyName.substring(0, 7)}...'
                                : data.basicInfo.companyName,
                            style: TextItems.title5.copyWith(
                                fontWeight: FontWeight.w500,
                                fontSize: 14,
                                color: ColorItems.spaceCadet)),
                        Text(
                            ' 외 ' +
                                widget.scrapList
                                    .where((element) =>
                                        element.vendorServiceCode.toInt() ==
                                        category.vendorServiceCode)
                                    .length
                                    .toString(),
                            style: TextItems.title5.copyWith(
                                fontWeight: FontWeight.w500,
                                fontSize: 14,
                                color: ColorItems.spaceCadet)),
                        Text("개의 판매사",
                            style: TextItems.title5.copyWith(
                                fontWeight: FontWeight.w500,
                                fontSize: 14,
                                color: ColorItems.spaceCadet)),
                        // Text(
                        //   all.toString(),
                        //   style: TextItems.title5.copyWith(
                        //       fontWeight: FontWeight.w500,
                        //       fontSize: 14,
                        //       color: ColorItems.spaceCadet),
                        // )
                      ],
                    )
                  ],
                ),
                leading: Image.asset(
                  category.vendorIconImageUrl,
                  width: 34,
                  height: 34,
                ),
                initiallyExpanded: false,
                children: widget.scrapList
                    .where((element) =>
                        element.vendorServiceCode.toInt() ==
                        category.vendorServiceCode)
                    .map((e) => BlocProvider.value(
                          value: BlocProvider.of<ScrapItemBloc>(context),
                          child: ItemDetailWidget(
                              scrapVendorInfo: e,
                              isBool: context
                                      .read<ScrapItemBloc>()
                                      .state
                                      .canVendorInfo
                                      .contains(e)
                                  ? false
                                  : true,
                              companyname: widget.scrapList
                                  .where((element) => element == e)
                                  .first
                                  .basicInfo
                                  .companyName,
                              bloc: context.read<ScrapItemBloc>(),
                              scrapList: e.scrapItemList,
                              vendorCode: category.vendorServiceCode),
                        ))
                    .toList())));
  }
}
