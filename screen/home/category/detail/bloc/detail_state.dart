import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:weddynew/apis/biz/app_biz.pbgrpc.dart';
import 'package:weddynew/base/bloc/base_bloc_state.dart';

import '../../../../../base/bloc/bloc_state.dart';

part 'detail_state.freezed.dart';

@freezed
class VendorDetailState extends BaseBlocState with _$VendorDetailState {
  factory VendorDetailState({
    @Default(BlocStatus.none) BlocStatus status,
    // VendorServiceItem? categories,
    // VendorServiceItemDetails? itemDetails,
    // VendorServicePrice? vendorServicePrice,
    @Default([]) List<VendorItem> selected,
    GetVendorInfoResponse? getVendorInfoResponse,
    Map<int, bool>? isChecked,
    @Default(false) bool isLiked,
    @Default([]) List<ScrapItem> isScrap,
    @Default([]) List<PromotionVideo> videoList,
  }) = _VendorDetailState;
}
