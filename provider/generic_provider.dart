import 'package:flutter/cupertino.dart';
import 'package:weddynew/provider/state_listener_widget.dart';

class GenericProvider<T> extends ChangeNotifier {
  GenericProvider({T? initValue, this.notifyValueChanged = true}) {
    _value = initValue;
  }

  T? _value;
  final bool notifyValueChanged;

  T? get value => _value;

  void setValue(T? value, {bool forceNotify = false}) async {
    if (_value != value) {
      _value = value;

      if (value != null || forceNotify) {
        notifyListeners();
      }
    } else if (!notifyValueChanged) {
      notifyListeners();
    }
  }

  static StateListenerWidget<GenericProvider<T>> createWidget<T>(
      StateListenerWidgetBuilder<GenericProvider<T>> builder,
      {GenericProvider<T>? provider,
      T? initValue}) {
    return StateListenerWidget.value(
        value: provider ?? GenericProvider<T>(initValue: initValue),
        widgetBuilder: builder);
  }
}
