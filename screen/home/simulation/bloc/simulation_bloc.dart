import 'dart:math';

import 'package:fixnum/fixnum.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:weddynew/apis/result.dart';
import 'package:weddynew/screen/home/simulation/bloc/simulation_event.dart';
import 'package:weddynew/screen/home/simulation/bloc/simulation_state.dart';
import 'package:weddynew/screen/home/simulation/model/notification_simulation.dart';

import '../../../../apis/category/category_data.dart';
import '../../../../base/bloc/base_bloc.dart';
import '../../../../repository/auth_repository.dart';
import '../../../../repository/product_repository.dart';

class SimulationBloc extends BaseBloc<SimulationEvent, SimulationState> {
  SimulationBloc({required this.repository, required this.userRepository})
      : super(SimulationState()) {
    on<InitSimulationEvent>(initSimulationEventToState);
    on<ChangeSimulationEvent>(changeSimulationEventToState);
    on<ToggleSimulationEvent>(toggleSimulationEventToState);
    on<AllCheckSimulationEvent>(allCheckSimulationEventToState);
    on<BudgetChangeSimulationEvent>(changeUserBudget);
  }

  final ProductRepository repository;
  final AuthRepository userRepository;
  initSimulationEventToState(
      InitSimulationEvent event, Emitter<SimulationState> emit) async {
    final categoryList = CategoryList.getCategoryList();
    SharedPreferences prefs = await SharedPreferences.getInstance();
    List<NotifySimulation> ns = [];

    List<String> simulation = prefs.getStringList('simulation') ?? [];
    double slide = prefs.getDouble('slide') ?? 50.0;

    categoryList.forEach((element) {
      if (simulation.contains(element.vendorServiceText)) {
        ns.add(NotifySimulation(category: element, value: true));
      } else {
        ns.add(NotifySimulation(category: element, value: false));
      }
    });
    final result = await repository.simulationRepository(slide);
    // emit(state.copyWith(
    //   pricerate: slide,
    //   //totalAmount: totalPrice,
    //   notificationCategory: ns,
    //   simulationList:
    // ));
    List<int> total = ns
        .where((element) => element.value == true)
        .map((e) => e.category.vendorServiceCode)
        .toList();

    result.success((data) {
      int totalprice = 0;
      data.simulateVendorItemList
          .where((element) =>
              total.contains(element.vendorServiceCode) &&
              element.vendorServiceCode != 1100)
          .forEach(
            (element) => totalprice += element.itemPrice.toInt(),
          );
      if (total.contains(1100)) {
        totalprice += data.simulateVendorItemList
                .firstWhere((element) => total.contains(1100))
                .itemPrice
                .toInt() *
            200;
      }

      emit(state.copyWith(
          totalAmount: totalprice,
          cateogryList: categoryList,
          pricerate: slide,
          notificationCategory: ns.toSet().toList(),
          simulationList: data.simulateVendorItemList));
    });
    final userResult = await userRepository.getUserProfile();

    userResult.success((data) {
      emit(state.copyWith(myBudget: data.weddingBudget));
    });
  }

  changeSimulationEventToState(
      ChangeSimulationEvent event, Emitter<SimulationState> emit) async {
    final result = await repository.simulationRepository(event.pricerate);

    List<int> total = state.notificationCategory
        .where((element) => element.value == true)
        .map((e) => e.category.vendorServiceCode)
        .toList();
    result.success((data) {
      int totalprice = 0;

      data.simulateVendorItemList
          .where((element) =>
              total.contains(element.vendorServiceCode) &&
              element.vendorServiceCode != 1100)
          .forEach(
            (element) => totalprice += element.itemPrice.toInt(),
          );

      if (total.contains(1100)) {
        totalprice += data.simulateVendorItemList
                .firstWhere((element) => total.contains(1100))
                .itemPrice
                .toInt() *
            200;
      }

      emit(state.copyWith(
        simulationList: data.simulateVendorItemList,
        totalAmount: totalprice,
        pricerate: event.pricerate,
      ));
    });
  }

  toggleSimulationEventToState(
      ToggleSimulationEvent event, Emitter<SimulationState> emit) async {
    List<int> total = state.notificationCategory
        .where((element) => element.value == true)
        .map((e) => e.category.vendorServiceCode)
        .toList();
    int totalprice = 0;
    state.simulationList
        .where((element) =>
            total.contains(element.vendorServiceCode) &&
            element.vendorServiceCode != 1100)
        .forEach(
          (element) => totalprice += element.itemPrice.toInt(),
        );
    if (total.contains(1100)) {
      totalprice += state.simulationList
              .firstWhere((element) => total.contains(1100))
              .itemPrice
              .toInt() *
          200;
    }

    emit(state.copyWith(
      totalAmount: totalprice,
    ));
  }

  allCheckSimulationEventToState(
      AllCheckSimulationEvent event, Emitter<SimulationState> emit) async {
    int totalprice = 0;
    if (event.value) {
      List<int> total = state.notificationCategory
          .where((element) => element.value == true)
          .map((e) => e.category.vendorServiceCode)
          .toList();
      state.simulationList
          .where((element) =>
              total.contains(element.vendorServiceCode) &&
              element.vendorServiceCode != 1100)
          .forEach(
            (element) => totalprice += element.itemPrice.toInt(),
          );
      if (total.contains(1100)) {
        totalprice += state.simulationList
                .firstWhere((element) => total.contains(1100))
                .itemPrice
                .toInt() *
            200;
      }
    } else {
      totalprice = 0;
    }

    emit(state.copyWith(
      totalAmount: totalprice,
    ));
  }

  changeUserBudget(
      BudgetChangeSimulationEvent event, Emitter<SimulationState> emit) async {
    final result =
        await repository.userBudgetUpdateRepository(event.mybudget.toDouble());

    result.success((data) {
      emit(state.copyWith(myBudget: event.mybudget));
    });
  }
}
