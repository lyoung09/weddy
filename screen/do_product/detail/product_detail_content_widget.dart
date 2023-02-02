import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:weddynew/base/base_stateless_widget.dart';

import '../../../common/local_utils.dart';
import '../../../common/screen_common_widget.dart';
import '../../../common/widget_factory.dart';
import '../../../model/vendor_service_detail.dart';
import '../promotion_image_page.dart';
import '../youtube_player_page.dart';

class ProductDetailContentWidget extends BaseStatelessWidget {
  ProductDetailContentWidget({Key? key, required this.data}) : super(key: key);

  final VendorServiceDetail data;

  @override
  Widget build(BuildContext context) {
    return Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        elevation: 2,
        margin: const EdgeInsets.all(10),
        color: Colors.white,
        child: Container(
          padding: const EdgeInsets.fromLTRB(16, 6, 16, 0),
          color: Colors.white,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Row(
                children: [
                  Container(
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(6)),
                      child: widgetFactory.createChip(
                          title:
                              data.serviceProduct.serviceCategory.displayName,
                          textColor: Colors.white,
                          backgroundColor:
                              Theme.of(context).colorScheme.outline)),
                  const SizedBox(width: 6),
                  Expanded(
                      child: AutoSizeText(data.serviceProduct.vendorName,
                          overflow: TextOverflow.ellipsis,
                          maxLines: 1,
                          softWrap: false,
                          style: Theme.of(context).textTheme.headline4)),
                  const SizedBox(
                    width: 6,
                  ),
                  widgetFactory.createTextButton(
                      text: '북마크 추가',
                      textColor: Theme.of(context).colorScheme.secondary,
                      onPressed: () {
                        ScreenCommonWidget().showConfirmDialog(context,
                            message: '북마크에 추가하시겠습니까?');
                      }),
                ],
              ),
              createValueLabel(context, widgetFactory, '전화번호', data.telNumber),
              createValueLabel(context, widgetFactory, '주소', data.address),
              createValueLabel(
                  context,
                  widgetFactory,
                  '조회수',
                  LocalUtils.getNumberText(
                      '', data.serviceProduct.searchCount)),
              createValueLabel(
                  context, widgetFactory, '소개', data.serviceProduct.comments),
              createValueLabel(context, widgetFactory, '홈페이지', data.url),
              const SizedBox(height: 6),
              createContentsButtons(context, widgetFactory, data),
              const SizedBox(
                height: 6,
              ),
              widgetFactory.createDefaultButton(context,
                  icon: Iconsax.reserve, text: '방문예약 하기', onPressed: () {}),
              const SizedBox(height: 8),
            ],
          ),
        ));
  }

  Widget createContentsButtons(BuildContext context,
      WidgetFactory widgetFactory, VendorServiceDetail data) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        widgetFactory.createDefaultButton(context,
            icon: Iconsax.video, text: '유투브 영상', onPressed: () {
          Navigator.pushNamed(context, YoutubePlayerPage.routeName,
              arguments: 'tcodrIK2P_I');
        }),
        const SizedBox(width: 10),
        widgetFactory.createDefaultButton(context,
            icon: Iconsax.image, text: '홍보 이미지', onPressed: () {
          if (data.imageList.isEmpty) {
            screenCommonWidget.showSnackBar(context, '등록된 이미지가 없습니다');
            return;
          }

          Navigator.pushNamed(context, PromotionImagePage.routeName,
              arguments: data.imageList);
        })
      ],
    );
  }

  Widget createValueLabel(BuildContext context, WidgetFactory widgetFactory,
      String title, String value) {
    return Padding(
        padding: const EdgeInsets.fromLTRB(0, 6, 0, 6),
        child: widgetFactory.createIconLabelWithValue(
          context,
          title: title,
          value: Expanded(
              child: AutoSizeText(
            value,
            maxLines: 5,
            textAlign: TextAlign.justify,
            style: Theme.of(context).textTheme.bodyText2,
          )),
          icon: Icons.circle,
          iconColor: Colors.blueGrey,
        ));
  }
}
