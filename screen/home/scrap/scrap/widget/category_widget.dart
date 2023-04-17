import 'package:flutter/material.dart';
import 'package:weddynew/screen/home/scrap/scrap/widget/item_widget.dart';

import '../../../../../apis/biz/app_biz.pb.dart';
import '../../../../../apis/category/category_model.dart';
import '../../../../../resources/Colors.dart';
import '../../../../../resources/Images.dart';
import '../../../../../resources/Text.dart';
import '../bloc/scrap_item_bloc.dart';

class CategoryWidget extends StatelessWidget {
  final CategoryModel category;
  final List<ScrapVendorInfo> scrapList;
  final ScrapItemBloc bloc;
  const CategoryWidget({
    super.key,
    required this.category,
    required this.scrapList,
    required this.bloc,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: const BouncingScrollPhysics(),
      child: Padding(
          padding: const EdgeInsets.only(left: 12, right: 12, bottom: 8),
          child: Card(
              elevation: 10,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(18),
              ),
              child: Column(
                children: [
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      const SizedBox(
                        width: 20,
                      ),
                      Image.asset(
                        category.vendorIconImageUrl,
                        width: 34,
                        height: 34,
                      ),
                      const SizedBox(
                        width: 18,
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  Images.getIcon('Divider.png'),
                  const SizedBox(
                    height: 8,
                  ),
                  ListView(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    children: scrapList
                        .map((e) => ItemDetailWidget(
                              scrapVendorInfo: e,
                              isBool: bloc.state.canVendorInfo.contains(e)
                                  ? false
                                  : true,
                              scrapList: e.scrapItemList,
                              companyname: scrapList
                                  .where((element) => element == e)
                                  .first
                                  .basicInfo
                                  .companyName,
                              bloc: bloc,
                              vendorCode: e.vendorServiceCode.toInt(),
                            ))
                        .toList(),
                  ),
                ],
              ))),
    );
  }
}
