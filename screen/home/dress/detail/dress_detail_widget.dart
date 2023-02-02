import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../common/cache_image_network.dart';
import '../../../../model/dress_image.dart';
import '../../../do_product/detail/product_details_page.dart';

class DressDetailWidget extends StatelessWidget {
  const DressDetailWidget({Key? key, required this.dressDetail})
      : super(key: key);

  final BrideDressImage dressDetail;

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          child: ClipRRect(
            borderRadius: BorderRadius.circular(8),
            child: buildCacheNetworkImage(
                width: double.infinity,
                height: double.infinity,
                url: dressDetail.imageUrl),
          )),
      Positioned(
        bottom: 50,
        right: 10,
        child: IconButton(
            iconSize: 48,
            onPressed: () {},
            icon: const Icon(Iconsax.heart, color: Colors.redAccent, size: 24)),
      ),
      Positioned(
        top: 30,
        right: 10,
        child: IconButton(
            iconSize: 48,
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(Iconsax.close_circle5,
                color: Colors.redAccent, size: 24)),
      ),
      Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 0, 0, 30),
              child: Center(
                  child: ElevatedButton(
                      child: const Text(
                        "판매사 세부 정보",
                        style: TextStyle(color: Colors.white),
                      ),
                      onPressed: () {
                        Navigator.pushNamed(
                            context, ProductDetailPage.routeName,
                            arguments: dressDetail.vendorService.id);
                      })),
            )
          ])
    ]);
  }
}
