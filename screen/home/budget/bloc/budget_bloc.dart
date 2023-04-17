import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weddynew/apis/biz/app_biz.pb.dart';
import 'package:weddynew/apis/result.dart';
import 'package:weddynew/model/vendor_service.dart';
import 'package:weddynew/repository/budget_repository.dart';

import '../../../../base/bloc/base_bloc.dart';
import '../../../../base/bloc/bloc_state.dart';
import '../../../../provider/generic_provider.dart';
import '../../../../repository/auth_repository.dart';
import '../../../../repository/vendor_repository.dart';
import 'budget_event.dart';
import 'budget_state.dart';

class BudgetBloc extends BaseBloc<BudgetEvent, BudgetState> {
  BudgetBloc({required this.userRepository, required this.budgetRepository})
      : super(BudgetState()) {
    on<InitBudgetEvent>(_initBudgetEventToState);
    on<UpdateBudgetProgressEvent>(_updateBudgetProgressEventToState);
    on<UpdateTotalAmountEvent>(_updateTotalAmountEvent);
  }

  final AuthRepository userRepository;
  final BudgetRepository budgetRepository;

  final budgetPriceProvider = GenericProvider<int>(initValue: 60);
  final totalAmountProvider = GenericProvider<int>(initValue: 60);
  final progressProvider = GenericProvider<double>(initValue: 50);

  void _initBudgetEventToState(
      InitBudgetEvent event, Emitter<BudgetState> emit) async {
    var profile = await userRepository.getLocalUserProfile();

    await Future.delayed(const Duration(milliseconds: 300));

    final budget = profile?.weddingBudget ?? 0;
    final budget2 = 100000;
    budgetPriceProvider.setValue(budget2);

    emit(state.copyWith(status: BlocStatus.initialized, myBudget: budget2));

    if (budget2 > 0) {
      add(UpdateBudgetProgressEvent(50));
    }
  }

  void _updateBudgetProgressEventToState(
      UpdateBudgetProgressEvent event, Emitter<BudgetState> emit) async {
    emit(state.copyWith(status: BlocStatus.loading));

    final service = await budgetRepository.getBudget(event.progress);

    var totalAmount = 0;
    if (service.isSuccess) {
      service.map((result) {
        for (int i = 0; i < result.vendorServiceItemList.length; i++) {
          totalAmount = result.sumOfPrice.toInt();
        }
      });
    }
    // for (var element in services) {
    //   if (element.isEnabled) {
    //     totalAmount += element..price;
    //   }
    // }

    totalAmountProvider.setValue(totalAmount);
    List<VendorServiceItem> item = [];
    service.success((SimulateUserBudgetResponse data) {
      item = data.vendorServiceItemList;
      totalAmount += data.sumOfPrice.toInt();

      emit(state.copyWith(
          status: BlocStatus.success,
          totalAmount: totalAmount,
          services: item));
    });
  }

  void _updateTotalAmountEvent(
      UpdateTotalAmountEvent event, Emitter<BudgetState> emit) async {
    var totalAmount = 0;
    // for (var element in state.service) {
    //   if (element.isEnabled) {
    //     totalAmount += element.vendorService.price;
    //   }
    // }

    totalAmountProvider.setValue(totalAmount);
  }
}
