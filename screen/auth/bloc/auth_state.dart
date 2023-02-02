import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:weddynew/base/bloc/base_bloc_state.dart';

import '../../../base/bloc/bloc_state.dart';

part 'auth_state.freezed.dart';

@freezed
class AuthState extends BaseBlocState with _$AuthState {
  factory AuthState(
      {@Default(BlocStatus.none) BlocStatus status,
      String? verifyType,
      String? id,
      String? password,
      String? name,
      String? phoneNumber,
      int? gender}) = _AuthState;
}
