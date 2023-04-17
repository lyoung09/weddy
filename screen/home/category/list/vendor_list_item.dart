import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:provider/provider.dart';
import 'package:weddynew/apis/category/category_model.dart';
import 'package:weddynew/base/base_stateless_widget.dart';

import 'package:weddynew/screen/home/category/detail/vendor_detail_page.dart';

import 'package:weddynew/screen/home/category/widget/vendor_images.dart';

import '../../../../apis/biz/app_biz.pb.dart';
import '../../../../resources/Colors.dart';
import '../../../../resources/Images.dart';
import '../../../../resources/Text.dart';
import '../detail/bloc/detail_state.dart';
import '../weddinghall/weddinghall_detail/weddinghall_detail_page.dart';
import 'bloc/vendor_list_bloc.dart';

class VendorListItem extends BaseStatelessWidget {
  final SearchVendorProfile searchVendorProfile;
  final CategoryModel vendorCategory;
  final BuildContext blocContext;
  VendorListItem({
    super.key,
    required this.searchVendorProfile,
    required this.vendorCategory,
    required this.blocContext,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      behavior: HitTestBehavior.translucent,
      onTap: () {
        if (vendorCategory.vendorServiceCode == 1100) {
          Navigator.of(context).pushNamed(WeddingHallDetail.routeName,
              arguments: WeddingHallDetail(
                  category: vendorCategory,
                  indexId: searchVendorProfile.id.toInt(),
                  popIndex: 0));
        } else {
          Navigator.of(context).pushNamed('/categoryDetail',
              arguments: CategoryDetail(
                  category: vendorCategory,
                  indexId: searchVendorProfile.id.toInt(),
                  popIndex: 0));
        }
      },
      child: Container(
        height: 350,
        padding: const EdgeInsets.only(left: 15, right: 15),
        width: MediaQuery.of(context).size.width * 0.9,
        alignment: Alignment.center,
        child: Card(
          elevation: 10,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20.0),
          ),
          child: Column(
            children: [
              BlocProvider.value(
                value: BlocProvider.of<VendorListBloc>(blocContext),
                child: searchVendorProfile.basicInfo.mainImageUrl.isEmpty
                    ? noImage()
                    : VendorImages(
                        imageList: searchVendorProfile.basicInfo.mainImageUrl),
              ),
              const SizedBox(
                height: 12,
              ),
              TitleRowWidget(
                  blocContext: blocContext,
                  searchVendorProfile: searchVendorProfile,
                  value: searchVendorProfile.isLike,
                  totalLiskes: searchVendorProfile.totalLikes.toInt()),
              const SizedBox(
                height: 12,
              ),
              searchVendorProfile.hashtags[0] == '' ||
                      searchVendorProfile.hashtags.isEmpty
                  ? const SizedBox(
                      width: 0,
                    )
                  : tag(context),
              const SizedBox(
                height: 20,
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget tag(context) {
    return Container(
        height: 30,
        alignment: Alignment.centerLeft,
        padding: const EdgeInsets.only(left: 15),
        child: ListView(
            scrollDirection: Axis.horizontal,
            physics: const BouncingScrollPhysics(),
            shrinkWrap: true,
            children: List.generate(
                searchVendorProfile.hashtags.length,
                (index) => Padding(
                      padding: const EdgeInsets.only(
                        right: 8,
                      ),
                      child: Container(
                        padding: const EdgeInsets.symmetric(horizontal: 12),
                        height: 22,
                        decoration: const BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(18)),
                            color: ColorItems.wildBlueYonder),
                        child: Center(
                            child: Text(
                                searchVendorProfile.hashtags[index].length > 12
                                    ? searchVendorProfile.hashtags[index]
                                        .substring(0, 12)
                                    : searchVendorProfile.hashtags[index],
                                style: TextItems.title6.copyWith(
                                    color: Colors.white,
                                    fontSize: 12,
                                    fontWeight: FontWeight.w500))),
                      ),
                    ))));
  }

  Widget noImage() {
    return Container(
      width: 350,
      height: 230,
      alignment: Alignment.center,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('이미지를 준비 중입니다',
              style: TextItems.heading4.copyWith(
                fontSize: 14,
                fontWeight: FontWeight.w700,
                color: ColorItems.spaceCadet,
              )),
          const SizedBox(
            height: 20,
          ),
          Images.getIcon(
            'Graph_bunny_Pink.png',
          )
        ],
      ),
    );
  }
}

class TitleRowWidget extends StatefulWidget {
  final SearchVendorProfile searchVendorProfile;
  final BuildContext blocContext;
  final int totalLiskes;
  final bool value;
  const TitleRowWidget(
      {super.key,
      required this.blocContext,
      required this.value,
      required this.totalLiskes,
      required this.searchVendorProfile});

  @override
  State<TitleRowWidget> createState() => _TitleRowWidgetState();
}

class _TitleRowWidgetState extends State<TitleRowWidget> {
  Map<int, bool> itemValue = {};
  Map<int, int> totalcount = {};
  late bool value;
  late int totalCount;
  @override
  void initState() {
    super.initState();
    value = widget.value;
    totalCount = widget.totalLiskes;
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 18, right: 24),
      child: Row(
        children: [
          Expanded(
            flex: 8,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(widget.searchVendorProfile.basicInfo.companyName,
                    overflow: TextOverflow.ellipsis,
                    style: TextItems.title8.copyWith(
                        color: ColorItems.spaceCadet,
                        fontSize: 16,
                        fontWeight: FontWeight.w700)),
                // SizedBox(
                //   height: 8,
                // ),
                Text(widget.searchVendorProfile.companyAddress.cityAddress,
                    overflow: TextOverflow.ellipsis,
                    style: TextItems.title5.copyWith(
                        color: ColorItems.secondarySpanishGray,
                        fontSize: 14,
                        fontWeight: FontWeight.w500)),
              ],
            ),
          ),
          const Spacer(),
          Column(
            children: [
              GestureDetector(
                onTap: () {},
                child: widget.searchVendorProfile.isLike == true
                    ? Images.getIcon('Icon_vendors_like.png')
                    : Images.getIcon('Icon_vendors_like_inactive.png'),
              ),
              Text(widget.searchVendorProfile.totalLikes.toString(),
                  style: TextItems.heading5.copyWith(
                      color: ColorItems.spaceCadet,
                      fontSize: 10,
                      fontWeight: FontWeight.w600))
            ],
          ),
        ],
      ),
    );
  }
}
