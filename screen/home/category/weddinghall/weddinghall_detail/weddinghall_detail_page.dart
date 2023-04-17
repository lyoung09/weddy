import 'package:flutter/material.dart';
import 'package:weddynew/apis/biz/app_biz.pb.dart';
import 'package:weddynew/apis/category/category_model.dart';
import 'package:weddynew/base/bloc/bloc_state.dart';
import 'package:weddynew/common/shimmer_loading.dart';
import 'package:weddynew/screen/home/category/detail/bloc/detail_event.dart';
import 'package:weddynew/screen/home/category/weddinghall/weddinghall_detail/weddinghall_layout.dart';

import '../../../../../base/base_bloc_page.dart';
import 'bloc/weddinghall_bloc.dart';
import 'bloc/weddinghall_event.dart';
import 'bloc/weddinghall_state.dart';

class WeddingHallDetail
    extends BaseBlocPage<WeddingHallDetailBloc, WeddingHallDetailState> {
  WeddingHallDetail(
      {Key? key,
      required this.indexId,
      required this.category,
      required this.popIndex})
      : super(key: key);

  static const String routeName = "/weddingHallDetail";
  final int indexId;
  final CategoryModel category;
  final int popIndex;
  @override
  Widget buildPage(BuildContext context, Widget blocBody) {
    return blocBody;
  }

  @override
  Widget buildWidget(BuildContext context, WeddingHallDetailState state) =>
      state.status.isSuccess
          ? WeddingHallLayout(
              state: state, category: category, popindex: popIndex)
          : const SizedBox();

  @override
  initEvent() => InitWeddinghallDetailEvent(vendorProfileId: indexId);
}
