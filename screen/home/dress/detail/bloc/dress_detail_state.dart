import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:weddynew/base/bloc/base_bloc_state.dart';

import '../../../../../base/bloc/bloc_state.dart';
import '../../../../../model/dress_image.dart';

part 'dress_detail_state.freezed.dart';

@freezed
class DressDetailState extends BaseBlocState with _$DressDetailState {
  factory DressDetailState({
    @Default(BlocStatus.none) BlocStatus status,
    BrideDressImage? dressDetail
  }) = _DressDetailState;
}