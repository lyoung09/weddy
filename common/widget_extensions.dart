
import 'package:flutter/widgets.dart';

extension WidgetExtension on Widget {
  Widget visibleOrGone(bool visible) {
    return visible ? this : Container();
  }
}
