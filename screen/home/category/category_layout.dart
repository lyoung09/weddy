import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../../base/base_stateless_widget.dart';
import '../../bookmark/do_vendor.dart';
import 'category_list_layout.dart';

class CategoryLayout extends BaseStatelessWidget {
 CategoryLayout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        child: Container(
            color: widgetFactory.styler.tabScreenBackgroundColor,
            child: Column(
                children: [
                  const SizedBox(height: 10),
                  buildHeaderWidget(context),
                  const SizedBox(height: 10),
                  const CategoryListLayout()])
        ));
  }

  Widget buildHeaderWidget(BuildContext context) {
    return widgetFactory.createHeaderCard(context,
        widget:
        Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
          AutoSizeText(
            '상품 카테고리를 선택하세요',
            style: Theme.of(context).textTheme.headline2,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              IconButton(
                iconSize: 48,
                onPressed: () {},
                icon:
                Image.asset('assets/images/cats/cute-cat-handdrawn-05.png'),
              ),
              IconButton(
                iconSize: 48,
                onPressed: () {},
                icon:
                Image.asset('assets/images/cats/cute-cat-handdrawn-06.png'),
              ),
              IconButton(
                iconSize: 48,
                onPressed: () {},
                icon:
                Image.asset('assets/images/cats/cute-cat-handdrawn-07.png'),
              ),
              IconButton(
                iconSize: 48,
                onPressed: () {},
                icon:
                Image.asset('assets/images/cats/cute-cat-handdrawn-08.png'),
              ),
            ],
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              widgetFactory.createDefaultButton(context,
                  iconColor: Colors.white,
                  icon: Iconsax.note_favorite,
                  text: '나의 판매사 관심 목록', onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const VendorBookmarkPage()));
                  }),
            ],
          ),
        ]));
  }
}