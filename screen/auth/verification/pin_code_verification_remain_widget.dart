// import 'package:auto_size_text/auto_size_text.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:intl/intl.dart';
// import 'package:weddynew/screen/auth/verification/timer/timer.dart';

// import '../../../provider/timer_provider.dart';
// import 'bloc/verification_timer_bloc.dart';
// import 'bloc/verification_timer_event.dart';
// import 'bloc/verification_timer_state.dart';

// class TimerWidget extends StatefulWidget {
//   const TimerWidget({super.key});

//   @override
//   State<TimerWidget> createState() => _TimerWidgetState();
// }

// class _TimerWidgetState extends State<TimerWidget>
//     with TickerProviderStateMixin {
//   late AnimationController _controller;
//   int levelClock = 180;

//   @override
//   void dispose() {
//     _controller.dispose();
//     super.dispose();
//   }

//   @override
//   void initState() {
//     super.initState();

//     _controller = AnimationController(
//         vsync: this, duration: Duration(seconds: levelClock));

//     _controller.forward();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Countdown(
//       animation: StepTween(
//         begin: levelClock,
//         end: 0,
//       ).animate(_controller),
//     );
//   }
// }

// class Countdown extends AnimatedWidget {
//   Countdown({Key? key, required this.animation})
//       : super(key: key, listenable: animation);
//   Animation<int> animation;

//   @override
//   build(BuildContext context) {
//     Duration clockTimer = Duration(seconds: animation.value);

//     String timerText =
//         '${clockTimer.inMinutes.remainder(60).toString()}:${clockTimer.inSeconds.remainder(60).toString().padLeft(2, '0')}';

//     return Text(
//       "$timerText",
//       style: TextStyle(
//         fontSize: 12,
//         color: Theme.of(context).primaryColor,
//       ),
//     );
//   }
// }

// class SmsVerificationRemainWidget extends StatelessWidget {
//   const SmsVerificationRemainWidget({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     final TimerProvider provider = TimerProvider();
//     return BlocListener<TimerBloc, TimerState>(
//         listener: (bloc, state) {
//           if (state is TimerStarted) {
//             provider.startTimer();
//           } else if (state is TimerComplete) {
//             provider.stopTimer();
//           }
//         },
//         child: WillPopScope(
//             onWillPop: () => _onBackPressed(context),
//             child: TimerProvider.createWidget((state) {
//               int remain = 180 - state.increment;

//               if (remain == 0) {
//                 context
//                     .read<VerificationTimerBloc>()
//                     .add(VerificationTimerStopEvent());
//               }

//               NumberFormat format = NumberFormat();
//               format.minimumIntegerDigits = 2;
//               format.maximumIntegerDigits = 2;
//               int minute = remain ~/ 60;
//               int second = remain % 60;

//               return Center(
//                   child: Wrap(
//                 children: [
//                   AutoSizeText(
//                       //('남은 시간 ${format.format(minute)}:${format.format(second)} ${remain.toString()}'),
//                       (provider.timer.toString()),
//                       style: Theme.of(context).textTheme.bodySmall),
//                 ],
//               ));
//             }, provider: provider)));
//   }

//   Future<bool> _onBackPressed(BuildContext context) => Future.sync(() {
//         context.read<VerificationTimerBloc>().add(VerificationTimerStopEvent());
//         Navigator.pop(context);
//         return false;
//       });
// }
