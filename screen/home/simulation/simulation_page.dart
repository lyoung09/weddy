import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:provider/provider.dart';
import 'package:weddynew/di/di_module.dart';
import 'package:weddynew/screen/home/simulation/bloc/simulation_bloc.dart';
import 'package:weddynew/screen/home/simulation/bloc/simulation_event.dart';
import 'package:weddynew/screen/home/simulation/bloc/simulation_state.dart';
import 'package:weddynew/screen/home/simulation/simulation_list.dart';

import '../../../base/base_bloc_page.dart';
import '../../../resources/Colors.dart';
import '../../../resources/Text.dart';

class SimulationPage extends StatelessWidget {
  const SimulationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
        create: (_) =>
            SimulationBloc(repository: getIt.get(), userRepository: getIt.get())
              ..add(InitSimulationEvent()),
        child: Scaffold(
          appBar: PreferredSize(
              preferredSize: const Size.fromHeight(52),
              child: AppBar(
                automaticallyImplyLeading: false,
                elevation: 0,
                title: Text('시뮬레이션',
                    style: TextItems.heading3.copyWith(
                        fontSize: 18,
                        fontWeight: FontWeight.w700,
                        color: ColorItems.spaceCadet)),
              )),
          body: SingleChildScrollView(
              physics: const AlwaysScrollableScrollPhysics(),
              child: BlocBuilder<SimulationBloc, SimulationState>(
                  builder: (context, state) {
                return SimulationList(state: state);
              })),
        ));
  }
}
