import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:weddynew/apis/biz/app_biz.pb.dart';
import 'package:weddynew/apis/category/category_model.dart';
import 'package:weddynew/base/bloc/base_bloc_state.dart';
import 'package:weddynew/model/vendor_category.dart';
import 'package:weddynew/service/budget_service.dart';

import '../../../../base/bloc/bloc_state.dart';
import '../../../../model/user_item.dart';
import '../model/notification_simulation.dart';

part 'simulation_state.freezed.dart';

@freezed
class SimulationState extends BaseBlocState with _$SimulationState {
  factory SimulationState(
      {@Default(BlocStatus.none) BlocStatus status,
      @Default(0) int myBudget,
      @Default(0) int totalAmount,
      @Default(0.0) double pricerate,
      @Default([]) List<CategoryModel> cateogryList,
      @Default([]) List<NotifySimulation> notificationCategory,
      @Default([]) List<SimulateVendorItem> simulationList,
      @Default(false) bool allcheck,
      @Default([]) List<VendorServiceItem> services}) = _SimulationState;
}
