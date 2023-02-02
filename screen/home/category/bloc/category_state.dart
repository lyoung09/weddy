import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:weddynew/base/bloc/base_bloc_state.dart';

import '../../../../base/bloc/bloc_state.dart';
import '../../../../model/vendor_category.dart';

part 'category_state.freezed.dart';

@freezed
class CategoryState extends BaseBlocState with _$CategoryState {
  factory CategoryState({
    @Default(BlocStatus.none) BlocStatus status,
    @Default(VendorCategory([], [])) VendorCategory categories,
  }) = _CategoryState;
}