import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:weddynew/base/bloc/base_bloc_state.dart';

import '../../../../base/bloc/bloc_state.dart';
import '../../../../model/vendor_service_detail.dart';


part 'product_detail_state.freezed.dart';

@freezed
class ProductDetailState extends BaseBlocState with _$ProductDetailState {
  factory ProductDetailState({
    @Default(BlocStatus.none) BlocStatus status,
    VendorServiceDetail? data
  }) = _ProductDetailState;
}