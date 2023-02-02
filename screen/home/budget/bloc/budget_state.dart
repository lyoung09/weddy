import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:weddynew/base/bloc/base_bloc_state.dart';

import '../../../../base/bloc/bloc_state.dart';
import '../../../../model/user_item.dart';

part 'budget_state.freezed.dart';

@freezed
class BudgetState extends BaseBlocState with _$BudgetState {
  factory BudgetState({
    @Default(BlocStatus.none) BlocStatus status,
    @Default(0) int myBudget,
    @Default(0) int totalAmount,
    @Default([]) List<UserServiceItem> services
  }) = _BudgetState;
}