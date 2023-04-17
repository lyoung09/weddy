import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:weddynew/apis/biz/app_biz.pbgrpc.dart';
import 'package:weddynew/base/bloc/base_bloc_state.dart';

import '../../../../base/bloc/bloc_state.dart';

part 'dress_showroom_state.freezed.dart';

@freezed
class DressShowroomState extends BaseBlocState with _$DressShowroomState {
  factory DressShowroomState({
    @Default(BlocStatus.none) BlocStatus status,
    List<ContentsItem>? item,
  }) = _DressShowroomState;
}
