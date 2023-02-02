import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:weddynew/screen/auth/signup/signup_widget.dart';

import '../../../base/base_stateless_widget.dart';
import '../../../resources/Text.dart';

class SignupLayout extends BaseStatelessWidget {
  SignupLayout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        ListView(
          children: <Widget>[
            Column(mainAxisAlignment: MainAxisAlignment.center, children: [
              const SizedBox(height: 18),
              SvgPicture.asset('assets/icons/logo_weddy.svg',
                  width: 100, height: 100),
              const SizedBox(height: 4),
              const AutoSizeText("회원가입", style: TextItems.heading2),
            ]),
            Container(
                margin: const EdgeInsets.fromLTRB(36, 0, 36, 60),
                child: SignupWidget()),
          ],
        )
      ],
    );
  }
}
