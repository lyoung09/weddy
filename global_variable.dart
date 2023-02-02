
import 'package:flutter/material.dart';

class GlobalVariable {
  static final GlobalKey<NavigatorState> navigatorState = GlobalKey();
  static BuildContext? get currentContext => navigatorState.currentContext;
}

