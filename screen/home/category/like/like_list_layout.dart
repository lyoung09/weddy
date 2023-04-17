import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:weddynew/base/base_stateless_widget.dart';
import 'package:weddynew/screen/home/category/like/like_item.dart';

import '../../../../resources/Colors.dart';
import '../../../../resources/Images.dart';
import '../../../../resources/Text.dart';
import 'bloc/like_state.dart';

class LikeListLayout extends BaseStatelessWidget {
  final LikeListState state;
  LikeListLayout({super.key, required this.state});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: widgetFactory.createDefaultAppBar(context, title: '좋아요'),
      body: state.likeList.isEmpty
          ? Center(child: Images.getIcon('Graph_notFound_like.png'))
          : SingleChildScrollView(
              child: Column(
                children: [
                  Container(
                    padding: const EdgeInsets.only(left: 20, bottom: 10),
                    alignment: Alignment.centerLeft,
                    child: Text(
                        '좋아요 클릭한 판매사 ${state.likeList.length.toString()}개',
                        style: TextItems.title8.copyWith(
                            fontSize: 16,
                            fontWeight: FontWeight.w700,
                            color: ColorItems.spaceCadet)),
                  ),
                  ListView(
                    shrinkWrap: true,
                    children: state.likeList
                        .map((e) => LikeItemWidget(
                            bookmark: e,
                            cateogoryList: state.categoryList,
                            likeList: state.listLike))
                        .toList(),
                  ),
                ],
              ),
            ),
    );
  }
}
