import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:weddynew/apis/biz/app_biz.pb.dart';
import 'package:weddynew/base/bloc/base_bloc_state.dart';
import 'package:weddynew/model/vendor_category.dart';
import 'package:weddynew/service/budget_service.dart';

import '../../../../base/bloc/bloc_state.dart';
import '../../../../model/user_item.dart';

part 'budget_state.freezed.dart';

@freezed
class BudgetState extends BaseBlocState with _$BudgetState {
  factory BudgetState(
      {@Default(BlocStatus.none) BlocStatus status,
      @Default(0) int myBudget,
      @Default(0) int totalAmount,
      @Default([]) List<VendorServiceItem> services}) = _BudgetState;
}
