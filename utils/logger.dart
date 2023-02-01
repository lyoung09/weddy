import 'dart:developer' as logger;

import 'package:flutter/foundation.dart';

class Logger {
  static void d(String message, {String tag = "DEBUG"}) {
    if (kDebugMode) {
      logger.log(message, name: tag);
    }
  }
}
