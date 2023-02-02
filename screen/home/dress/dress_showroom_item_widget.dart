import 'package:flutter/material.dart';

import '../../../common/cache_image_network.dart';
import '../../../model/dress_image.dart';
import 'detail/dress_detail_page.dart';

class DressShowroomItemWidget extends StatelessWidget {
  const DressShowroomItemWidget({Key? key, required this.item}) : super(key: key);

  final BrideDressImage item;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: () {
          Navigator.pushNamed(context, DressDetailPage.routeName, arguments: item.imageId);
        },
        child: ClipRRect(
          borderRadius: BorderRadius.circular(8),
          child: Container(
            child: buildCacheNetworkImage(
                height: 0, width: 0, url: item.imageUrl),
          ),
        ));
  }

}