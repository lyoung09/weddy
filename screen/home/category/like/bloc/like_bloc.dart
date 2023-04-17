import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';
import 'package:weddynew/apis/result.dart';
import 'package:weddynew/base/bloc/bloc_state.dart';
import 'package:weddynew/repository/product_repository.dart';
import 'package:weddynew/screen/home/category/like/bloc/like_event.dart';
import 'package:weddynew/screen/home/category/like/bloc/like_state.dart';

import '../../../../../apis/biz/app_biz.pb.dart';
import '../../../../../apis/category/category_data.dart';
import '../../../../../base/bloc/base_bloc.dart';
import '../../../../../repository/vendor_repository.dart';

class LikeListBloc extends BaseBloc<LikeEvent, LikeListState> {
  LikeListBloc({
    required this.repository,
  }) : super(LikeListState()) {
    on<InitLikeEvent>(_initLikeBloc);
    on<RemoveLikeEvent>(_removeLikeBloc);
  }
  final ProductRepository repository;

  Map<int, bool> tt = {};
  _initLikeBloc(InitLikeEvent event, Emitter<LikeListState> emit) async {
    emit(state.copyWith(status: BlocStatus.loading));
    final result = await repository.getVendorLikeList();
    final categoryList = CategoryList.getCategoryList();

    result.success((data) {
      data.bookmarkList.forEach((e) => {tt[e.vendorProfileId.toInt()] = true});
      emit(state.copyWith(
          categoryList: categoryList,
          likeList: data.bookmarkList,
          listLike: tt,
          status: BlocStatus.success));
    });
  }

  _removeLikeBloc(RemoveLikeEvent event, Emitter<LikeListState> emit) async {
    final result = await repository.removeLike(event.index);

    result.success((data) {
      List<Bookmark> bookmarklist = state.likeList;
      tt.removeWhere((key, value) => key == event.index);
      emit(state.copyWith(likeList: bookmarklist, listLike: tt));
    });
    // tt.removeWhere((key, value) => key == event.index);
    // emit(state.copyWith(listLike: tt));
  }
}
