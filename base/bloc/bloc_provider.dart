import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weddynew/base/bloc/base_bloc.dart';
import 'package:weddynew/common/screen_common_widget.dart';

import '../../di/di_module.dart';
import 'base_bloc_state.dart';

class SingleBlocProvider<BLOC extends BaseBloc> extends BlocProvider<BLOC> {
  SingleBlocProvider({Key? key, dynamic initEvent, Widget? child})
      : super(
            key: key,
            create: (context) {
              return initEvent == null ? getIt.get() : getIt.get()
                ..add(initEvent);
            },
            child: child);

  static SingleBlocProvider blocBuilder<BLOC extends BaseBloc<dynamic, STATE>,
              STATE extends BaseBlocState>(
          {dynamic initEvent,
          required Widget Function(BuildContext context, STATE state) child}) =>
      SingleBlocProvider<BLOC>(
          initEvent: initEvent,
          child: BlocListener<BLOC, STATE>(
              listener: (context, state) {
                final snackBarEvent = context.read<BLOC>().snackBarEvent;
                final screenCommonWidget = ScreenCommonWidget();
                context.read<BLOC>().snackBarEvent.addListener(() {
                  if (snackBarEvent.value?.isNotEmpty == true) {
                    screenCommonWidget.showSnackBar(
                        context, snackBarEvent.value);
                  }
                });
              },
              child: BlocBuilder<BLOC, STATE>(
                  builder: (context, state) => child.call(context, state))));
}
