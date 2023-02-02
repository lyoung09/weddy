import 'package:flutter/material.dart';
import 'package:weddynew/screen/auth/signin/signin_widget.dart';

import '../../../base/base_stateless_widget.dart';

class SignInLayout extends BaseStatelessWidget {
  SignInLayout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        // top background gradient
        Container(
          decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage(
                      'assets/background/elegant_wedding_couple_1.png'),
                  fit: BoxFit.fitWidth,
                  alignment: Alignment.topCenter)),
        ),
        widgetFactory.createBottomSheetContainer(context, SignInWidget())
      ],
    );
  }
}
