import 'package:flutter/material.dart';
import 'package:weddynew/apis/biz/app_biz.pbgrpc.dart';
import 'package:weddynew/base/bloc/bloc_state.dart';

import '../../../../base/base_bloc_page.dart';
import 'bloc/dress_detail_bloc.dart';
import 'bloc/dress_detail_event.dart';
import 'bloc/dress_detail_state.dart';
import 'dress_detail_widget.dart';

class DressDetailPage extends BaseBlocPage<DressDetailBloc, DressDetailState> {
  DressDetailPage({super.key, required this.item});

  static const String routeName = "/dress_detail";

  final ContentsItem item;

  @override
  Widget buildPage(BuildContext context, Widget blocBody) {
    return Scaffold(
        extendBodyBehindAppBar: true,
        extendBody: true,
        backgroundColor: Colors.white,
        body: blocBody);
  }

  @override
  Widget buildWidget(BuildContext context, DressDetailState state) {
    if (state.status.isSuccess && state.dressDetail != null) {
      return DressDetailWidget(
          dressDetail: state.dressDetail!, bloccontext: context, item: item);
    } else {
      return Container();
    }
  }

  @override
  initEvent() => InitDressDetailEvent(item);
}
