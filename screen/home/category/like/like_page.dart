import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:weddynew/base/bloc/bloc_state.dart';
import 'package:weddynew/screen/home/category/like/bloc/like_bloc.dart';
import 'package:weddynew/screen/home/category/like/bloc/like_event.dart';
import 'package:weddynew/screen/home/category/like/bloc/like_state.dart';
import 'package:weddynew/screen/home/category/like/like_list_layout.dart';

import '../../../../base/base_bloc_page.dart';

class LikeVendorPage extends BaseBlocPage<LikeListBloc, LikeListState> {
  static const String routeName = "/likeVendor";
  LikeVendorPage({super.key});

  @override
  Widget buildPage(BuildContext context, Widget blocBody) {
    return blocBody;
  }

  @override
  Widget buildWidget(BuildContext context, LikeListState state) {
    return state.status.isSuccess
        ? LikeListLayout(state: state)
        : SizedBox(
            height: 0,
          );
  }

  @override
  initEvent() => InitLikeEvent();
}
