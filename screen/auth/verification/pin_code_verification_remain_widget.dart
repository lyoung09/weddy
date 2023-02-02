import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';

import '../../../provider/timer_provider.dart';
import 'bloc/verification_timer_bloc.dart';
import 'bloc/verification_timer_event.dart';
import 'bloc/verification_timer_state.dart';

class SmsVerificationRemainWidget extends StatelessWidget {
  const SmsVerificationRemainWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final TimerProvider provider = TimerProvider();
    return BlocListener<VerificationTimerBloc, VerificationTimerState>(
        listener: (bloc, state) {
          if (state.status.isStart) {
            provider.startTimer();
          } else if (state.status.isStop) {
            provider.stopTimer();
          }
        },
        child: WillPopScope(
            onWillPop: () => _onBackPressed(context),
            child: TimerProvider.createWidget((state) {
              int remain = 180 - state.increment;

              if (remain == 0) {
                context
                    .read<VerificationTimerBloc>()
                    .add(VerificationTimerStopEvent());
              }

              NumberFormat format = NumberFormat();
              format.minimumIntegerDigits = 2;
              format.maximumIntegerDigits = 2;
              int minute = remain ~/ 60;
              int second = remain % 60;

              return Center(
                  child: Wrap(
                children: [
                  AutoSizeText(
                      ('남은 시간 ${format.format(minute)}:${format.format(second)}'),
                      style: Theme.of(context).textTheme.bodySmall),
                ],
              ));
            }, provider: provider)));
  }

  Future<bool> _onBackPressed(BuildContext context) => Future.sync(() {
        context.read<VerificationTimerBloc>().add(VerificationTimerStopEvent());
        Navigator.pop(context);
        return false;
      });
}
