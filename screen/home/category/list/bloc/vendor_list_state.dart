import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:weddynew/base/bloc/base_bloc_state.dart';

import '../../../../../apis/biz/app_biz.pb.dart';
import '../../../../../base/bloc/bloc_state.dart';

part 'vendor_list_state.freezed.dart';

@freezed
class VendorListState extends BaseBlocState with _$VendorListState {
  factory VendorListState({
    @Default(BlocStatus.none) BlocStatus status,
    @Default([]) List<SearchVendorProfile> searchVendorProfileList,
    @Default('') String searchText,
    @Default(0) int toggle,
    @Default(0) int filterNum,
  }) = _VendorListState;
}
