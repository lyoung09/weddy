/*
 *
 * Weddy CONFIDENTIAL
 * _____________________________________________________________________
 *
 * [2021] - [2030] Weddy
 *  All Rights Reserved.
 *
 * NOTICE:  All information contained herein is, and remains
 * the property of Weddy and its suppliers,
 * if any.  The intellectual and technical concepts contained
 * herein are proprietary to Weddy and its suppliers and
 * may be covered by Korea and Foreign Patents,
 * patents in process, and are protected by trade secret or copyright law.
 * Dissemination of this information or reproduction of this material
 * is strictly forbidden unless prior written permission is obtained
 * from Weddy.
 */
import 'package:flutter/material.dart';
import 'package:weddynew/base/bloc/bloc_state.dart';
import 'package:weddynew/screen/do_product/detail/bloc/product_detail_event.dart';
import 'package:weddynew/screen/do_product/detail/product_detail_content_widget.dart';
import 'package:weddynew/screen/do_product/detail/product_detail_map_widget.dart';
import 'package:weddynew/screen/do_product/detail/product_detail_price_list_widget.dart';

import '../../../base/base_bloc_page.dart';
import '../../../common/shimmer_loading.dart';
import 'bloc/product_detail_bloc.dart';
import 'bloc/product_detail_state.dart';

class ProductDetailPage
    extends BaseBlocPage<ProductDetailBloc, ProductDetailState> {
  ProductDetailPage({super.key, required this.serviceId});

  static const String routeName = "/product_detail";

  final int serviceId;

  @override
  Widget buildPage(BuildContext context, Widget blocBody) {
    return Scaffold(
      appBar: widgetFactory.createDefaultAppBar(context, title: '판매사 세부정보'),
      floatingActionButton: buildFloatingButton(context),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      backgroundColor: Colors.white,
      body: blocBody,
    );
  }

  @override
  Widget buildWidget(BuildContext context, ProductDetailState state) {
    if (state.status.isSuccess && state.data != null) {
      final data = state.data!;
      return ListView(children: [
        ProductDetailContentWidget(data: data),
        ProductDetailPriceListWidget(list: data.priceItems),
        ProductDetailMapWidget(
            vendorName: data.serviceProduct.vendorName,
            address: data.address,
            lat: data.lat,
            lng: data.lng)
      ]);
    } else {
      return ShimmerLoading().buildShimmerContent();
    }
  }

  @override
  dynamic initEvent() => InitProductDetailEvent(serviceId);

  Widget buildFloatingButton(BuildContext context) {
    return FloatingActionButton(
        onPressed: () {
          screenCommonWidget.showConfirmDialog(context,
              message: '체크리스트에 추가하시겠습니까?');
        },
        backgroundColor: Colors.white,
        foregroundColor: Colors.white,
        elevation: 5,
        splashColor: Colors.grey,
        child: widgetFactory.styler.floatingButtonAddIcon);
  }
}
