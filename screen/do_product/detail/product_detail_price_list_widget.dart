import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:weddynew/base/base_stateless_widget.dart';

import '../../../common/local_utils.dart';
import '../../../model/pricing_model.dart';

class ProductDetailPriceListWidget extends BaseStatelessWidget {
   ProductDetailPriceListWidget({Key? key, required this.list}) : super(key: key);

  final List<PricingItem> list;

  @override
  Widget build(BuildContext context) {
    return Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        elevation: 2,
        margin: const EdgeInsets.all(10),
        color: Colors.white,
        child: Container(
            padding: const EdgeInsets.fromLTRB(15, 5, 15, 0),
            color: Colors.white,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                widgetFactory.createIconLabelWithValue(
                  context,
                  title: '서비스 가격',
                  value: const SizedBox(),
                  icon: Iconsax.money,
                  iconColor: Colors.blueGrey,
                ),
                const SizedBox(height: 6),
                ListView.separated(
                    separatorBuilder: (BuildContext context, int index) =>
                    const Divider(
                      height: 1,
                      indent: 10,
                      endIndent: 10,
                      color: Colors.grey,
                    ),
                    scrollDirection: Axis.vertical,
                    shrinkWrap: true,
                    itemCount: list.length,
                    physics: const NeverScrollableScrollPhysics(),
                    itemBuilder: (context, index) {
                      return buildPricingItem(context, list[index]);
                    }),
              ],
            )));
  }

  Widget buildPricingItem(BuildContext context, PricingItem item) {
    return ListTile(
        title: AutoSizeText(
          item.title,
          style: Theme.of(context).textTheme.bodyText2,
        ),
        subtitle: AutoSizeText(
          item.comments,
          style: Theme.of(context).textTheme.subtitle1,
        ),
        trailing: AutoSizeText(LocalUtils.getPriceText(item.minPrice),
            style: Theme.of(context).textTheme.caption));
  }
}