// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:weddynew/screen/home/simulation/model/notification_simulation.dart';

class SimulationEvent {}

class InitSimulationEvent extends SimulationEvent {}

class ChangeSimulationEvent extends SimulationEvent {
  double pricerate;
  ChangeSimulationEvent({
    required this.pricerate,
  });
}

class ItemSimulationEvent extends SimulationEvent {
  int index;
  ItemSimulationEvent({
    required this.index,
  });

  ItemSimulationEvent copyWith({
    int? index,
  }) {
    return ItemSimulationEvent(
      index: index ?? this.index,
    );
  }
}

class ToggleSimulationEvent extends SimulationEvent {
  int vendorcode;
  bool value;
  List<NotifySimulation> notifylist;
  ToggleSimulationEvent({
    required this.vendorcode,
    required this.value,
    required this.notifylist,
  });
}

class AllCheckSimulationEvent extends SimulationEvent {
  bool value;
  AllCheckSimulationEvent({
    required this.value,
  });

  AllCheckSimulationEvent copyWith({
    bool? value,
  }) {
    return AllCheckSimulationEvent(
      value: value ?? this.value,
    );
  }
}

class BudgetChangeSimulationEvent extends SimulationEvent {
  int mybudget;
  BudgetChangeSimulationEvent({
    required this.mybudget,
  });

  BudgetChangeSimulationEvent copyWith({
    int? mybudget,
  }) {
    return BudgetChangeSimulationEvent(
      mybudget: mybudget ?? this.mybudget,
    );
  }
}
