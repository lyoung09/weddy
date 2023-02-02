import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:weddynew/base/base_stateless_widget.dart';

import '../../map/map_page.dart';

class ProductDetailMapWidget extends BaseStatelessWidget {
   ProductDetailMapWidget(
      {Key? key,
      required this.vendorName,
      required this.address,
      required this.lat,
      required this.lng})
      : super(key: key);

  final String vendorName;
  final String address;
  final double lat;
  final double lng;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: () {
          Navigator.pushNamed(context, MapPage.routeName,
              arguments: MapPageArgs(
                  title: vendorName, address: address, lat: lat, lng: lng));
        },
        child: Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
            elevation: 2,
            margin: const EdgeInsets.all(10),
            color: Colors.white,
            child: Container(
                padding: const EdgeInsets.fromLTRB(15, 15, 15, 15),
                color: Colors.white,
                child: widgetFactory.createIconLabelWithValue(context,
                    title: '판매사 위치보기',
                    value: const SizedBox(),
                    icon: Iconsax.location,
                    iconColor: Colors.grey,
                    wrapWidth: true))));
  }
}
