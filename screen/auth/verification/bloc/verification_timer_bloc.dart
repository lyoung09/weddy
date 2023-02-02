import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:weddynew/screen/auth/verification/bloc/verification_timer_event.dart';
import 'package:weddynew/screen/auth/verification/bloc/verification_timer_state.dart';

class VerificationTimerBloc
    extends Bloc<VerificationTimerEvent, VerificationTimerState> {
  VerificationTimerBloc() : super(VerificationTimerState()) {
    on<VerificationTimerStartEvent>(_timerStartEventToState);
    on<VerificationTimerStopEvent>(_timerStopEventToState);
    on<VerificationTimerRestartEvent>(_restart);
  }

  void _timerStartEventToState(
      VerificationTimerStartEvent event, Emitter<VerificationTimerState> emit) {
    emit(VerificationTimerState(status: TimerStatus.start));
  }

  void _timerStopEventToState(
      VerificationTimerStopEvent event, Emitter<VerificationTimerState> emit) {
    emit(VerificationTimerState(status: TimerStatus.stop));
  }

  void _restart(VerificationTimerRestartEvent event,
      Emitter<VerificationTimerState> emit) async {
    emit(VerificationTimerState(status: TimerStatus.stop));
    await Future.delayed(const Duration(milliseconds: 200));
    emit(VerificationTimerState(status: TimerStatus.start));
  }
}
