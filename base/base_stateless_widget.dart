import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weddynew/common/screen_common_widget.dart';

import '../common/widget_factory.dart';

abstract class BaseStatelessWidget extends StatelessWidget {
  BaseStatelessWidget({Key? key}) : super(key: key);

  final WidgetFactory widgetFactory = WidgetFactory();
  final ScreenCommonWidget screenCommonWidget = ScreenCommonWidget();

  void addBlocEvent<BLOC extends Bloc>(BuildContext context, dynamic event) =>
      context.read<BLOC>().add(event);
}

abstract class BaseStatefulWidget extends StatefulWidget {
  BaseStatefulWidget({Key? key}) : super(key: key);

  final WidgetFactory widgetFactory = WidgetFactory();
  final ScreenCommonWidget screenCommonWidget = ScreenCommonWidget();

  void addBlocEvent<BLOC extends Bloc>(BuildContext context, dynamic event) =>
      context.read<BLOC>().add(event);
}
