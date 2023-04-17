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
import 'package:weddynew/apis/category/category_model.dart';
import 'package:weddynew/base/bloc/bloc_state.dart';
import 'package:weddynew/common/shimmer_loading.dart';
import 'package:weddynew/screen/home/category/detail/bloc/detail_event.dart';
import '../../../../base/base_bloc_page.dart';
import 'bloc/detail_bloc.dart';
import 'bloc/detail_state.dart';
import 'vendor_datil_layout.dart';

class CategoryDetail extends BaseBlocPage<VendorDetailBloc, VendorDetailState> {
  CategoryDetail(
      {Key? key,
      required this.indexId,
      required this.category,
      required this.popIndex})
      : super(key: key);

  static const String routeName = "/categoryDetail";
  final int indexId;
  final CategoryModel category;
  final int popIndex;
  @override
  Widget buildPage(BuildContext context, Widget blocBody) {
    return blocBody;
  }

  @override
  Widget buildWidget(BuildContext context, VendorDetailState state) =>
      state.status.isSuccess
          ? CategoryDetailLayout(
              state: state,
              category: category,
              popindex: popIndex,
            )
          : ShimmerLoading().buildShimmerContent();

  @override
  initEvent() => InitVendorDetailEvent(index: indexId);
}
