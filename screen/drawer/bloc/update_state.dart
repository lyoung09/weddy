import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:weddynew/apis/biz/app_biz.pb.dart';
import 'package:weddynew/base/bloc/base_bloc_state.dart';

import '../../../../base/bloc/bloc_state.dart';

part 'update_state.freezed.dart';

@freezed
class UpdateState extends BaseBlocState with _$UpdateState {
  factory UpdateState(
      {@Default(BlocStatus.none) BlocStatus status,
      bool? isSucess,
      @Default(0) int myBudget,
      @Default(0) int totalAmount,
      @Default('') String oldPassword,
      @Default('') String newPassword,
      @Default([]) List<VendorServiceItem> services}) = _UpdateState;
}
