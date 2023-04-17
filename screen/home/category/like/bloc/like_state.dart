import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:weddynew/apis/category/category_model.dart';
import 'package:weddynew/base/bloc/base_bloc_state.dart';

import '../../../../../apis/biz/app_biz.pb.dart';
import '../../../../../base/bloc/bloc_state.dart';

part 'like_state.freezed.dart';

@freezed
class LikeListState extends BaseBlocState with _$LikeListState {
  factory LikeListState({
    @Default(BlocStatus.none) BlocStatus status,
    @Default([]) List<Bookmark> likeList,
    @Default([]) List<CategoryModel> categoryList,
    @Default({}) Map<int, bool> listLike,
  }) = _LikeListState;
}
