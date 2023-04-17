import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weddynew/provider/generic_provider.dart';

import 'base_bloc_state.dart';

abstract class BaseBloc<EVENT, STATE extends BaseBlocState>
    extends Bloc<EVENT, STATE> {
  BaseBloc(super.initialState);

  final GenericProvider<String> snackBarEvent =
      GenericProvider(notifyValueChanged: false);
  final GenericProvider<PopupEvent> popupEvent =
      GenericProvider(notifyValueChanged: false);
  final GenericProvider<NavigationEvent> navEvent =
      GenericProvider(notifyValueChanged: false);
  final GenericProvider<PopEvent> popEvent =
      GenericProvider(notifyValueChanged: false);
  final GenericProvider<String> modalEvent =
      GenericProvider(notifyValueChanged: false);

  void showSnackBar(String message) {
    snackBarEvent.setValue(message);
  }

  void showModalBar(String message) {
    modalEvent.setValue(message);
  }

  void showPopup(String message,
      {String? icon, String? buttonText, Color? buttonColor}) {
    popupEvent.setValue(PopupEvent(message,
        icon: icon, buttonText: buttonText, buttonColor: buttonColor));
  }

  void navigate(String routeName,
      {dynamic arguments,
      bool clearStack = false,
      Function(dynamic value)? callback}) {
    navEvent.setValue(NavigationEvent(routeName,
        arguments: arguments, clearStack: clearStack, callback: callback));
  }

  void pop({dynamic result}) {
    popEvent.setValue(PopEvent(result: result));
  }
}

class PopupEvent {
  const PopupEvent(this.message,
      {this.icon, this.buttonText, this.buttonColor});

  final String message;
  final String? icon;
  final String? buttonText;
  final Color? buttonColor;
}

class NavigationEvent {
  const NavigationEvent(this.routeName,
      {this.arguments, this.clearStack = false, this.callback});
  final String routeName;
  final dynamic arguments;
  final bool clearStack;
  final Function(dynamic value)? callback;
}

class PopEvent {
  const PopEvent({this.result});
  final dynamic result;
}
