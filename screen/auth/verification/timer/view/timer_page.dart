import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hexcolor/hexcolor.dart';

import '../../../../../resources/Colors.dart';
import '../../../../../resources/Text.dart';
import '../bloc/timer_bloc.dart';
import '../ticker.dart';

class TimerPage extends StatelessWidget {
  const TimerPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) =>
          TimerBloc(ticker: const Ticker())..add(TimerStarted(duration: 10)),
      child: TimerView(context: context, duration: 10),
    );
  }
}

class TimerView extends StatelessWidget {
  final BuildContext context;
  final int duration;
  TimerView({super.key, required this.context, required this.duration});

  @override
  Widget build(BuildContext context) {
    return const Center(child: TimerText());
  }
}

class TimerText extends StatelessWidget {
  const TimerText({super.key});

  @override
  Widget build(BuildContext context) {
    final duration = context.select((TimerBloc bloc) => bloc.state.duration);

    final minutesStr =
        ((duration / 60) % 60).floor().toString().padLeft(2, '0');
    final secondsStr = (duration % 60).toString().padLeft(2, '0');
    return Text(
      '남은 시간 $minutesStr:$secondsStr',
      style: TextStyle(
          fontSize: 14,
          fontWeight: FontWeight.w700,
          color: HexColor('#3C3B62')),
    );
  }
}
