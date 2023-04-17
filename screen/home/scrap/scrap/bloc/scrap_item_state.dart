import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../../apis/biz/app_biz.pb.dart';
import '../../../../../base/bloc/base_bloc_state.dart';
import '../../../../../base/bloc/bloc_state.dart';
import '../check_model.dart';

part 'scrap_item_state.freezed.dart';

@freezed
class ScrapItemState extends BaseBlocState with _$ScrapItemState {
  factory ScrapItemState({
    @Default(BlocStatus.none) BlocStatus status,
    @Default([]) List<ScrapVendorInfo> scrapVendorInfoList,
    @Default([]) List<VendorItem> canUseButtons,
    @Default([]) List<ScrapVendorInfo> canVendorInfo,
    @Default([]) List<ScrapCheckModel> scrapCheckModel,
  }) = _ScrapItemState;
}
