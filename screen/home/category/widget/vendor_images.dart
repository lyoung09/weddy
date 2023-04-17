import 'package:card_swiper/card_swiper.dart';
import 'package:flutter/material.dart';
import 'package:getwidget/components/carousel/gf_carousel.dart';

import '../../../../resources/Colors.dart';
import '../../../../resources/Text.dart';
import '../../../../utils/horizontal_swiper.dart';

class VendorImages extends StatefulWidget {
  final List<String> imageList;
  const VendorImages({super.key, required this.imageList});

  @override
  State<VendorImages> createState() => _VendorImagesState();
}

class _VendorImagesState extends State<VendorImages> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Swiper(
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              Navigator.pushNamed(context, HorizontalSwiper.routeName,
                  arguments:
                      HorizontalSwiper(images: widget.imageList, name: 'shop'));
            },
            child: ClipRRect(
              borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(20), topRight: Radius.circular(20)),
              child: Image.network(
                widget.imageList[index],
                fit: BoxFit.fill,
                height: 188,
              ),
            ),
          );
        },
        autoplay: false,
        itemCount: widget.imageList.length,
        pagination: SwiperPagination(
            margin: EdgeInsets.zero,
            builder: SwiperCustomPagination(builder: (context, config) {
              return ConstrainedBox(
                child: Row(mainAxisAlignment: MainAxisAlignment.end, children: [
                  Container(
                    width: 46,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(Radius.circular(12))),
                    margin: EdgeInsets.only(right: 24, bottom: 8),
                    child: Center(
                      child: Text(
                        '${config.activeIndex + 1}/${config.itemCount}',
                        style: TextItems.title6.copyWith(
                            color: ColorItems.spaceCadet, fontSize: 12),
                      ),
                    ),
                  ),
                ]),
                constraints: const BoxConstraints.expand(height: 30.0),
              );
            })),
        control: const SwiperControl(
            color: Colors.transparent, disableColor: Colors.transparent),
      ),
    );
  }
}
