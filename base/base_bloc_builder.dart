import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'base_stateless_widget.dart';
import 'bloc/base_bloc.dart';
import 'bloc/base_bloc_state.dart';

abstract class BaseBlocBuilder<BLOC extends BaseBloc<dynamic, STATE>,
    STATE extends BaseBlocState> extends BaseStatelessWidget {
  BaseBlocBuilder({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<BLOC, STATE>(
      builder: buildWidget,
    );
  }

  Widget buildWidget(BuildContext context, STATE state);
}
