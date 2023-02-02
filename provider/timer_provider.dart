import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:weddynew/provider/state_listener_widget.dart';

class TimerProvider extends ChangeNotifier {
  Timer? timer;
  int _value = 0;

  int get increment => _value;

  void startTimer() {
    _value = 0;
    timer = Timer.periodic(const Duration(seconds: 1), (timer) {
      _value++;
      notifyListeners();
    });
  }

  void stopTimer() {
    timer?.cancel();
    timer = null;
  }

  void reset() {
    _value = 0;
    stopTimer();
  }

  static StateListenerWidget<TimerProvider> createWidget(
      StateListenerWidgetBuilder<TimerProvider> builder,
      {TimerProvider? provider}) {
    return StateListenerWidget.value(
        value: provider ?? TimerProvider(), widgetBuilder: builder);
  }
}
