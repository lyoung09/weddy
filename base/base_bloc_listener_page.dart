import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../di/di_module.dart';
import 'base_stateless_widget.dart';
import 'bloc/base_bloc.dart';
import 'bloc/base_bloc_state.dart';

abstract class BaseBlocListenerPage<BLOC extends BaseBloc<dynamic, STATE>,
    STATE extends BaseBlocState> extends BaseStatelessWidget {
  BaseBlocListenerPage({super.key});

  @override
  Widget build(BuildContext context) {
    final BLOC bloc = getIt.get();
    final event = initEvent();

    initScreenEvent(context, bloc);

    final page = buildPage(
        context,
        BlocProvider.value(
            value: bloc,
            child: BlocListener<BLOC, STATE>(
                listener: onStateChanged, child: buildWidget())));

    if (event != null) {
      bloc.add(event);
    }
    return page;
  }

  dynamic initEvent() => null;

  Widget buildPage(BuildContext context, Widget blocBody);

  Widget buildWidget();

  void initScreenEvent(BuildContext context, BLOC bloc) {
    final snackBarEvent = bloc.snackBarEvent;
    final popupEvent = bloc.popupEvent;
    final navEvent = bloc.navEvent;
    final popEvent = bloc.popEvent;

    snackBarEvent.addListener(() {
      if (snackBarEvent.value?.isNotEmpty == true) {
        screenCommonWidget.showSnackBar(context, snackBarEvent.value);
      }
    });

    popupEvent.addListener(() {
      final PopupEvent? event = popupEvent.value;
      if (event != null) {
        screenCommonWidget.showConfirmDialog(context,
            message: event.message, icon: event.icon);
      }
    });

    navEvent.addListener(() {
      NavigationEvent? navigation = navEvent.value;
      if (navigation != null) {
        if (navigation.clearStack) {
          Navigator.pushNamedAndRemoveUntil(
              context, navigation.routeName, (route) => false,
              arguments: navigation.arguments);
        } else {
          if (navigation.callback == null) {
            Navigator.pushNamed(context, navigation.routeName,
                arguments: navigation.arguments);
          } else {
            Navigator.pushNamed(context, navigation.routeName,
                    arguments: navigation.arguments)
                .then((value) => navigation.callback?.call(value));
          }
        }
      }
    });

    popEvent.addListener(() {
      PopEvent? pop = popEvent.value;
      if (pop != null) {
        Navigator.pop(context, pop.result);
      }
    });
  }

  void onStateChanged(BuildContext context, STATE state);

  void addEvent(BuildContext context, event) {
    addBlocEvent<BLOC>(context, event);
  }
}
