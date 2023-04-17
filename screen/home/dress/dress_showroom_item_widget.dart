import 'package:flutter/material.dart';
import 'package:weddynew/apis/biz/app_biz.pbgrpc.dart';

import '../../../common/cache_image_network.dart';
import '../../../model/dress_image.dart';
import '../../../resources/Colors.dart';
import '../../../resources/Images.dart';
import 'detail/dress_detail_page.dart';

class DressShowroomItemWidget extends StatelessWidget {
  const DressShowroomItemWidget({Key? key, required this.item})
      : super(key: key);

  final ContentsItem item;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: () {
          debugPrint(item.itemId.toString() + "abcde");
          Navigator.pushNamed(context, DressDetailPage.routeName,
              arguments: item);
        },
        child: Container(
          decoration: BoxDecoration(
              border: Border.all(width: .4, color: ColorItems.spaceCadet),
              borderRadius: const BorderRadius.all(Radius.circular(18))),
          child: ClipRRect(
            borderRadius: const BorderRadius.all(Radius.circular(18)),
            child: buildCacheNetworkImage(height: 0, width: 250, url: item.url),
          ),
        ));
  }
}
