import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:weddynew/base/bloc/base_bloc_state.dart';

import '../../../../apis/biz/app_biz.pb.dart';
import '../../../../apis/category/category_model.dart';
import '../../../../base/bloc/bloc_state.dart';
import '../../../../model/user_profile.dart';
import '../../../../model/vendor_category.dart';

part 'category_state.freezed.dart';

@freezed
class CategoryState extends BaseBlocState with _$CategoryState {
  factory CategoryState({
    @Default(BlocStatus.none) BlocStatus status,
    @Default(VendorCategoryCustom([], [])) VendorCategoryCustom categories,
    @Default([]) List<CategoryModel> vendorCategoryList,
    @Default('') String searchText,
    GetVendorCategoryResponse? getVendorCategoryResponse,
    @Default([]) List<SearchVendorProfile> searchVendorProfile,
    @Default(0) int historyIndex,
    UserProfile? user,
  }) = _CategoryState;
}
