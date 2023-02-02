import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../../common/image_factory.dart';
import '../../../common/service_category_enum.dart';
import '../../../model/vendor_category.dart';
import '../../do_product/product_search_page.dart';
import '../../product/product_search.dart';

class CategoryItemWidget extends StatelessWidget {
  const CategoryItemWidget(this.item, {Key? key}) : super(key: key);

  final VendorCategoryItem item;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: () {
          Navigator.pushNamed(context, ProductSearchPage.routeName,
              arguments: item.displayName);
        },
        child: Card(
            elevation: 0,
            child: Padding(
              padding: const EdgeInsets.all(4),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                      padding: const EdgeInsets.fromLTRB(2, 0, 2, 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Icon(
                              size: 14,
                              color: item.isImportant
                                  ? Theme.of(context).colorScheme.primary
                                  : Colors.white,
                              Iconsax.information5),
                        ],
                      )),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: ImageFactory()
                        .categoryImageIcon(categoryCode: ServiceCategory.none),
                  ),
                  const SizedBox(height: 6),
                  AutoSizeText(
                    item.displayName,
                    style: Theme.of(context).textTheme.caption,
                  )
                ],
              ),
            )));
  }
}
