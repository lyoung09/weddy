import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;

class AnalyticsHelper {
  void log({
    required String name,
    Map<String, Object?>? parameters,
    AnalyticsCallOptions? callOptions,
  }) {
    if (kReleaseMode) {
      FirebaseAnalytics analytics = getIt.get();
      analytics.logEvent(
          name: name, parameters: parameters, callOptions: callOptions);
    }
  }

  void setCurrentScreen(Widget widget) {
    FirebaseAnalytics analytics = getIt.get();
    analytics.setCurrentScreen(screenName: widget.runtimeType.toString());
  }
}

void _provideFirebase(GetIt getIt) {
  getIt.registerSingleton<FirebaseAnalytics>(FirebaseAnalytics.instance);
  getIt.registerSingleton<FirebaseAnalyticsObserver>(
      FirebaseAnalyticsObserver(analytics: getIt.get()));
}
