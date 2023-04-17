import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:iconsax/iconsax.dart';

import '../../base/base_stateless_widget.dart';
import 'bloc/profile_bloc.dart';
import 'bloc/profile_display_type.dart';
import 'bloc/profile_event.dart';
import 'bloc/profile_state.dart';

class ProfileFooterWidget extends BaseStatelessWidget {
  ProfileFooterWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ProfileBloc, ProfileState>(builder: (context, state) {
      return buildFooterWidget(context);
    });
  }

  Widget buildFooterWidget(BuildContext context) {
    final bloc = context.read<ProfileBloc>();
    return Column(
      children: [
        ListTile(
            title: widgetFactory.createDefaultButton(context,
                icon: Iconsax.user,
                text: '프로필 수정',
                onPressed: () =>
                    bloc.navigateProfileUpdate(ProfileDisplayType.update))),
        ListTile(
          // todo logout move to profile
          title: widgetFactory.createDefaultButton(context,
              icon: Iconsax.call,
              text: '고객센터',
              //onPressed: () => bloc.navigate(CallCenterPage.routeName)),
              onPressed: () => {}),
        ),
        // ListTile(
        // todo logout move to profile
        //   title: widgetFactory.createDefaultButton(context,
        //       icon: Iconsax.logout,
        //       text: '로그아웃',
        //       onPressed: () => {
        //         bloc.add(DeleteProfileEvent()),
        //       }),
        // ),
        // ListTile(
        // todo logout move to profile
        //   title: widgetFactory.createDefaultButton(context,
        //       icon: Iconsax.security_user,
        //       text: '회원탈퇴',
        //       onPressed: () => {
        //         bloc.add(DeleteProfileEvent()),
        //       }),
        // )
      ],
    );
  }
}
