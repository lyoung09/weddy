import 'package:card_swiper/card_swiper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weddynew/apis/biz/app_biz.pbgrpc.dart';
import 'package:weddynew/provider/boolean_provider.dart';
import 'package:weddynew/screen/home/dress/detail/bloc/dress_detail_bloc.dart';
import 'package:weddynew/screen/home/dress/detail/bloc/dress_detail_event.dart';
import 'package:weddynew/utils/custom_string.dart';

import '../../../../apis/category/category_data.dart';
import '../../../../apis/category/category_model.dart';
import '../../../../resources/Colors.dart';
import '../../../../resources/Images.dart';
import '../../../../resources/Text.dart';
import '../../category/detail/vendor_detail_page.dart';
import 'bloc/dress_detail_state.dart';

class DressDetailWidget extends StatelessWidget {
  const DressDetailWidget(
      {Key? key,
      required this.dressDetail,
      required this.bloccontext,
      required this.item})
      : super(key: key);
  final BuildContext bloccontext;
  final GetVendorDressImageInfoResponse dressDetail;
  final ContentsItem item;

  @override
  Widget build(BuildContext context) {
    List<CategoryModel> cm = CategoryList.getCategoryList();
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(52),
        child: AppBar(
          automaticallyImplyLeading: false,
          leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Images.getIcon('icon_arrow', color: ColorItems.salmon),
          ),
          elevation: 0,
        ),
      ),
      body: Column(
        children: [
          dressDetail.imageUrl.length == 1
              ? ClipRRect(
                  borderRadius: const BorderRadius.all(Radius.circular(22)),
                  child: Image.network(
                    dressDetail.imageUrl[0],
                    height: MediaQuery.of(context).size.height * .58,
                    width: MediaQuery.of(context).size.width * .9,
                    fit: BoxFit.fitWidth,
                  ),
                )
              : Container(
                  padding: EdgeInsets.only(
                      top: 20,
                      left: MediaQuery.of(context).size.width * 0.05,
                      right: MediaQuery.of(context).size.width * 0.05),
                  height: MediaQuery.of(context).size.height * .58,
                  width: MediaQuery.of(context).size.width,
                  child: Swiper(
                    loop: false,
                    itemBuilder: (context, index) {
                      final image = dressDetail.imageUrl[index];
                      return ClipRRect(
                        borderRadius:
                            const BorderRadius.all(Radius.circular(22)),
                        child: Image.network(
                          image,
                          height: MediaQuery.of(context).size.height * .58,
                          width: MediaQuery.of(context).size.width * .9,
                          fit: BoxFit.fitWidth,
                        ),
                      );
                    },
                    autoplay: false,
                    itemCount: dressDetail.imageUrl.length,
                    control: const SwiperControlArrowCustom(
                        color: ColorItems.spaceCadet,
                        disableColor: ColorItems.silverSand),
                  ),
                ),
          Container(
            height: MediaQuery.of(context).size.height * .25,
            width: MediaQuery.of(context).size.width,
            padding: const EdgeInsets.only(left: 24, top: 20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Expanded(
                      flex: 8,
                      child: Text(
                          dressDetail.vendorName.length > 20
                              ? dressDetail.vendorName + '...'
                              : dressDetail.vendorName,
                          style: TextItems.heading3.copyWith(
                              fontSize: 18,
                              fontWeight: FontWeight.w700,
                              color: ColorItems.spaceCadet)),
                    ),
                    BooleanProvider.createWidget(
                        provider: bloccontext.read<DressDetailBloc>().isLiked,
                        (state) {
                      return state.value == true
                          ? GestureDetector(
                              onTap: () {
                                bloccontext.read<DressDetailBloc>().add(
                                    IsLikedEvent(
                                        vendorProfileId: dressDetail
                                            .vendorProfileId
                                            .toInt()));
                              },
                              child: Images.getIcon(
                                'Icon_vendors_like.png',
                              ),
                            )
                          : GestureDetector(
                              onTap: () {
                                bloccontext.read<DressDetailBloc>().add(
                                    DislikedEvent(
                                        vendorProfileId: dressDetail
                                            .vendorProfileId
                                            .toInt()));
                              },
                              child: Images.getIcon(
                                'Icon_vendors_like_inactive.png',
                              ),
                            );
                    }),
                    const SizedBox(
                      width: 30,
                    )
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                Text(dressDetail.itemTitle,
                    style: TextItems.body2.copyWith(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        color: ColorItems.spaceCadet)),
                const SizedBox(
                  height: 8,
                ),
                Text(
                    CustomString().pirceToString(dressDetail.itemPrice.toInt()),
                    style: TextItems.heading4.copyWith(
                        fontSize: 14,
                        fontWeight: FontWeight.w700,
                        color: ColorItems.spaceCadet)),
              ],
            ),
          ),
        ],
      ),
      floatingActionButton: Padding(
        padding: const EdgeInsets.only(bottom: 30.0),
        child: SizedBox(
          width: 230,
          height: 54,
          child: FittedBox(
              child: FloatingActionButton.extended(
            onPressed: () {
              Navigator.popAndPushNamed(context, CategoryDetail.routeName,
                  arguments: CategoryDetail(
                      popIndex: 1,
                      indexId: dressDetail.vendorProfileId.toInt(),
                      category: cm.firstWhere((element) =>
                          element.vendorServiceCode ==
                          dressDetail.vendorServiceCode.toInt())));
            },
            label: Text('상품 더보기',
                style: TextItems.heading3.copyWith(
                    fontSize: 18,
                    fontWeight: FontWeight.w700,
                    color: Colors.white)),
            backgroundColor: ColorItems.spaceCadet,
            extendedPadding:
                const EdgeInsets.only(left: 60, right: 60, top: 20, bottom: 20),
          )),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}

class SwiperControlArrowCustom extends SwiperPlugin {
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

  const SwiperControlArrowCustom({
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
    required int quarterTurns,
    required bool previous,
  }) {
    return GestureDetector(
      onTap: () {
        if (previous) {
          config!.controller.previous(animation: true);
        } else {
          config!.controller.next(animation: true);
        }
      },
      child: RotatedBox(
          quarterTurns: quarterTurns,
          child: previous
              ? Padding(
                  padding: const EdgeInsets.only(left: 8.0),
                  child: CircleAvatar(
                      backgroundColor: Colors.white,
                      radius: 15,
                      child: Center(
                        child: Icon(
                          Icons.arrow_back_ios_outlined,
                          color: color,
                          size: 16.5,
                        ),
                      )),
                )
              : Padding(
                  padding: const EdgeInsets.only(right: 8.0),
                  child: CircleAvatar(
                      backgroundColor: Colors.white,
                      radius: 15,
                      child: Center(
                        child: Icon(
                          Icons.arrow_forward_ios_rounded,
                          color: color,
                          size: 16.5,
                        ),
                      )),
                )),
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
              ? buildButton(
                  config: config,
                  color: disableColor,
                  quarterTurns: 0,
                  previous: true,
                )
              : buildButton(
                  config: config,
                  color: prevColor,
                  quarterTurns: 0,
                  previous: true,
                ),
          config.activeIndex == config.itemCount - 1
              ? buildButton(
                  config: config,
                  color: disableColor,
                  quarterTurns: 0,
                  previous: false,
                )
              : buildButton(
                  config: config,
                  color: nextColor,
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
            quarterTurns: -3,
            previous: true,
          ),
          buildButton(
            config: config,
            color: nextColor,
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
