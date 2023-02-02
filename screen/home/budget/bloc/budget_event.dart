class BudgetEvent {}

class InitBudgetEvent extends BudgetEvent {
  InitBudgetEvent();
}

class UpdateBudgetProgressEvent extends BudgetEvent {
  UpdateBudgetProgressEvent(this.progress);

  final double progress;
}

class UpdateTotalAmountEvent extends BudgetEvent {
}