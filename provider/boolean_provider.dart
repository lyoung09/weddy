/*
 *
 * Weddy CONFIDENTIAL
 * _____________________________________________________________________
 *
 * [2021] - [2030] Weddy
 *  All Rights Reserved.
 *
 * NOTICE:  All information contained herein is, and remains
 * the property of Weddy and its suppliers,
 * if any.  The intellectual and technical concepts contained
 * herein are proprietary to Weddy and its suppliers and
 * may be covered by Korea and Foreign Patents,
 * patents in process, and are protected by trade secret or copyright law.
 * Dissemination of this information or reproduction of this material
 * is strictly forbidden unless prior written permission is obtained
 * from Weddy.
 */

import 'package:flutter/material.dart';
import 'package:weddynew/provider/state_listener_widget.dart';

class BooleanProvider extends ChangeNotifier {
  BooleanProvider({bool initValue = false}) {
    _value = initValue;
  }

  bool _value = false;

  get value => _value;

  change() {
    _value = !_value;
    notifyListeners();
  }

  setValue(bool value) {
    if (_value != value) {
      _value = value;
      notifyListeners();
    }
  }

  static StateListenerWidget<BooleanProvider> createWidget(
      StateListenerWidgetBuilder<BooleanProvider> builder,
      {BooleanProvider? provider,
      bool initValue = false}) {
    return StateListenerWidget.value(
        value: provider ?? BooleanProvider(initValue: initValue),
        widgetBuilder: builder);
  }
}
