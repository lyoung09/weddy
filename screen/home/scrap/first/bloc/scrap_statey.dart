import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:weddynew/base/bloc/base_bloc_state.dart';
import 'package:weddynew/screen/home/scrap/first/model/notify.dart';

import '../../../../../apis/biz/app_biz.pb.dart';
import '../../../../../apis/category/category_model.dart';
import '../../../../../base/bloc/bloc_state.dart';

part 'scrap_statey.freezed.dart';

@freezed
class ScrapStateY extends BaseBlocState with _$ScrapStateY {
  factory ScrapStateY(
      {@Default(BlocStatus.none) BlocStatus status,
      @Default([]) List<ScrapVendorInfo> scrapVendorInfoList,
      @Default([]) List<NotifiyModel> notifiyModelList,
      @Default([]) List<CategoryModel> categoryList,
      @Default(0) int tabIndex,
      @Default(0) int totalPrice,
      @Default(0) int categoryTabLength,
      @Default(0) int vendorCategoryTab,
      NotifiyModel? notifyModel,
      @Default(false) isScraped}) = _ScrapStateY;
}
