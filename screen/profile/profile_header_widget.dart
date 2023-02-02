import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weddynew/base/bloc/bloc_state.dart';


import '../../base/base_stateless_widget.dart';
import 'bloc/profile_bloc.dart';
import 'bloc/profile_state.dart';

class ProfileHeaderWidget extends BaseStatelessWidget {
   ProfileHeaderWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ProfileBloc, ProfileState>(
      builder: (context, state) {
        return state.status.isSuccess
            ? buildHeaderWidget(context, state.profile.name!)
            : const Center(child: CircularProgressIndicator());
      },
    );
  }

  Widget buildHeaderWidget(BuildContext context, String name) {
    return widgetFactory.createHeaderCard(context,
        widget:
        Center(child:
          Container(
            padding: const EdgeInsets.all(6),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const CircleAvatar(
                  backgroundColor: Colors.white,
                  maxRadius: 64,
                  backgroundImage: AssetImage('assets/images/woman.png'),
                ),
                const SizedBox(width: 10),
                Text(name)
              ],
            ),
          ),
        ));
  }
}