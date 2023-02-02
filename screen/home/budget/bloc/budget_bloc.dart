import 'dart:html';

import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../base/bloc/base_bloc.dart';
import '../../../../base/bloc/bloc_state.dart';
import '../../../../provider/generic_provider.dart';
import '../../../../repository/auth_repository.dart';
import '../../../../repository/vendor_repository.dart';
import 'budget_event.dart';
import 'budget_state.dart';

class BudgetBloc extends BaseBloc<BudgetEvent, BudgetState> {
  BudgetBloc({required this.userRepository, required this.vendorRepository})
      : super(BudgetState()) {
    on<InitBudgetEvent>(_initBudgetEventToState);
    on<UpdateBudgetProgressEvent>(_updateBudgetProgressEventToState);
    on<UpdateTotalAmountEvent>(_updateTotalAmountEvent);
  }

  final AuthRepository userRepository;
  final VendorRepository vendorRepository;

  final budgetPriceProvider = GenericProvider<int>(initValue: 0);
  final totalAmountProvider = GenericProvider<int>(initValue: 0);
  final progressProvider = GenericProvider<double>(initValue: 50);

  void _initBudgetEventToState(
      InitBudgetEvent event, Emitter<BudgetState> emit) async {
    var profile = await userRepository.getLocalUserProfile();

    await Future.delayed(const Duration(milliseconds: 300));

    final budget = profile?.weddingBudget ?? 0;

    budgetPriceProvider.setValue(budget);

    emit(state.copyWith(status: BlocStatus.initialized, myBudget: budget));

    if (budget > 0) {
      add(UpdateBudgetProgressEvent(50));
    }
  }

  void _updateBudgetProgressEventToState(
      UpdateBudgetProgressEvent event, Emitter<BudgetState> emit) async {
    emit(state.copyWith(status: BlocStatus.loading));

    final services = await vendorRepository.getBudgetVendorList(
        state.myBudget, event.progress);

    var totalAmount = 0;
    for (var element in services) {
      if (element.isEnabled) {
        totalAmount += element.vendorService.price;
      }
    }

    totalAmountProvider.setValue(totalAmount);

    emit(state.copyWith(
        status: BlocStatus.success,
        totalAmount: totalAmount,
        services: services));
  }

  void _updateTotalAmountEvent(
      UpdateTotalAmountEvent event, Emitter<BudgetState> emit) async {
    var totalAmount = 0;
    for (var element in state.services) {
      if (element.isEnabled) {
        totalAmount += element.vendorService.price;
      }
    }

    totalAmountProvider.setValue(totalAmount);
  }
}
