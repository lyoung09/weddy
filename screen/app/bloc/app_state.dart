import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:weddynew/base/bloc/base_bloc_state.dart';


import '../../../base/bloc/bloc_state.dart';

part 'app_state.freezed.dart';

@freezed
class AppState extends BaseBlocState with _$AppState {
  factory AppState({
    @Default(BlocStatus.loading) BlocStatus status,
    @Default(false) bool isLoggedIn
  }) = _AppState;
}