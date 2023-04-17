import 'package:card_swiper/card_swiper.dart';
import 'package:flutter/material.dart';
import 'package:weddynew/screen/home/category/detail/vendor_detail_item_widget.dart';

import '../resources/Colors.dart';
import '../resources/Images.dart';
import '../resources/Text.dart';

class HorizontalSwiper extends StatelessWidget {
  static const String routeName = "/horizontal_swiper";
  final List<String> images;
  final String name;
  const HorizontalSwiper({Key? key, required this.images, required this.name})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Swiper(
          loop: false,
          itemBuilder: (context, index) {
            final image = images[index];
            return Container(
              color: Colors.black,
              child: Column(
                children: [
                  const SizedBox(
                    height: 15,
                  ),
                  const Spacer(),
                  Image.network(
                    image,
                    fit: BoxFit.contain,
                  ),
                  const Spacer(),
                ],
              ),
            );
          },
          autoplay: false,
          itemCount: images.length,
          pagination: name == "shop"
              ? const SwiperPagination(
                  alignment: Alignment.topCenter,
                  builder: FractionPaginationBuilderCustom(
                      color: Colors.white, activeColor: Colors.white),
                )
              : SwiperPagination.rect,
          control: SwiperControlCustom(
              name: name,
              color:
                  name == "shop" ? Colors.transparent : ColorItems.spaceCadet,
              disableColor: name == "shop" ? Colors.transparent : Colors.grey),
        ),
      ),
    );
  }
}

class SwiperControlCustom extends SwiperPlugin {
  ///IconData for previous
  final IconData iconPrevious;

  ///iconData fopr next
  final IconData iconNext;

  ///icon size
  final double size;

  ///Icon normal color, The theme's [ThemeData.primaryColor] by default.
  final Color? color;

  ///if set loop=false on Swiper, this color will be used when swiper goto the last slide.
  ///The theme's [ThemeData.disabledColor] by default.
  final Color? disableColor;

  final EdgeInsetsGeometry padding;

  final Key? key;

  final String? name;

  const SwiperControlCustom({
    this.iconPrevious = Icons.arrow_back_ios_sharp,
    this.iconNext = Icons.arrow_forward_ios_sharp,
    this.color,
    this.disableColor,
    this.key,
    this.name,
    this.size = 20.0,
    this.padding = const EdgeInsets.all(8.0),
  });

  Widget buildButton({
    required SwiperPluginConfig? config,
    required Color color,
    required IconData iconDaga,
    required int quarterTurns,
    required bool previous,
  }) {
    return GestureDetector(
      behavior: HitTestBehavior.opaque,
      onTap: () {
        if (previous) {
          config!.controller.previous(animation: true);
        } else {
          config!.controller.next(animation: true);
        }
      },
      child: Container(
          margin: const EdgeInsets.all(8),
          width: 36,
          height: 36,
          decoration: name == "shop"
              ? null
              : const BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(18)),
                ),
          padding: padding,
          child: RotatedBox(
              quarterTurns: quarterTurns,
              child: Icon(
                iconDaga,
                semanticLabel: previous ? 'Previous' : 'Next',
                size: size,
                color: color,
              ))),
    );
  }

  @override
  Widget build(BuildContext context, SwiperPluginConfig config) {
    final themeData = Theme.of(context);

    final color = this.color ?? ColorItems.spaceCadet;
    final disableColor = this.disableColor ?? themeData.disabledColor;

    Color prevColor;
    Color nextColor;

    if (config.loop) {
      prevColor = nextColor = color;
    } else {
      final next = config.activeIndex < config.itemCount - 1;
      final prev = config.activeIndex > 0;
      prevColor = prev ? color : disableColor;
      nextColor = next ? color : disableColor;
    }

    Widget child;
    if (config.scrollDirection == Axis.horizontal) {
      child = Row(
        key: key,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          config.activeIndex == 0
              ? const SizedBox(
                  width: 0,
                )
              : buildButton(
                  config: config,
                  color: prevColor,
                  iconDaga: iconPrevious,
                  quarterTurns: 0,
                  previous: true,
                ),
          config.activeIndex == config.itemCount - 1
              ? const SizedBox(
                  width: 0,
                )
              : buildButton(
                  config: config,
                  color: nextColor,
                  iconDaga: iconNext,
                  quarterTurns: 0,
                  previous: false,
                )
        ],
      );
    } else {
      child = Column(
        key: key,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          buildButton(
            config: config,
            color: prevColor,
            iconDaga: iconPrevious,
            quarterTurns: -3,
            previous: true,
          ),
          buildButton(
            config: config,
            color: nextColor,
            iconDaga: iconNext,
            quarterTurns: -3,
            previous: false,
          )
        ],
      );
    }

    return SizedBox(
      height: double.infinity,
      width: double.infinity,
      child: child,
    );
  }
}

class FractionPaginationBuilderCustom extends SwiperPlugin {
  ///color ,if set null , will be Theme.of(context).scaffoldBackgroundColor
  final Color? color;

  ///color when active,if set null , will be Theme.of(context).primaryColor
  final Color? activeColor;

  ////font size
  final double fontSize;

  ///font size when active
  final double activeFontSize;

  final Key? key;

  const FractionPaginationBuilderCustom({
    this.color,
    this.fontSize = 18.0,
    this.key,
    this.activeColor,
    this.activeFontSize = 18.0,
  });

  @override
  Widget build(BuildContext context, SwiperPluginConfig? config) {
    final themeData = Theme.of(context);
    final activeColor = this.activeColor ?? themeData.primaryColor;
    final color = this.color ?? themeData.scaffoldBackgroundColor;

    if (Axis.vertical == config!.scrollDirection) {
      return Column(
        key: key,
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Text(
            '${config.activeIndex + 1}',
            style: TextStyle(color: activeColor, fontSize: activeFontSize),
          ),
          Text(
            '/',
            style: TextStyle(color: color, fontSize: fontSize),
          ),
          Text(
            '${config.itemCount}',
            style: TextStyle(color: color, fontSize: fontSize),
          )
        ],
      );
    } else {
      return Row(
        key: key,
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Spacer(),
          Padding(
            padding: const EdgeInsets.only(left: 50.0),
            child: Text(
              '${config.activeIndex + 1}/${config.itemCount}',
              style: TextItems.heading4
                  .copyWith(color: Colors.white, fontSize: 14),
            ),
          ),
          Spacer(),
          IconButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              icon: Images.getIcon('Icon_cross.png')),
        ],
      );
    }
  }
}
