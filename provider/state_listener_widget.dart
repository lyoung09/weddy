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

import 'package:flutter/cupertino.dart';
import 'package:provider/provider.dart';

typedef StateListenerWidgetBuilder<T extends ChangeNotifier> = Widget Function(
    T state);

class StateListenerWidget<T extends ChangeNotifier>
    extends ChangeNotifierProvider<T> {
  StateListenerWidget(
      {Key? key, required create, required StateListenerWidgetBuilder<T> builder})
      : super(key: key, create: create,
      child: Consumer<T>(builder: (context, state, child) {
        return builder.call(state);
      }));

  StateListenerWidget.value({
    Key? key,
    required T value,
    required StateListenerWidgetBuilder<T> widgetBuilder,
    TransitionBuilder? builder
  }) : super.value(
    key: key,
    builder: builder,
    value: value,
    child: Consumer<T>(builder: (context, state, child) {
      return widgetBuilder.call(state);
    }),
  );
}
