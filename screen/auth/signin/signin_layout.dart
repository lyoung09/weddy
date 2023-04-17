import 'package:flutter/material.dart';
import 'package:weddynew/screen/auth/bloc/auth_state.dart';
import 'package:weddynew/screen/auth/signin/signin_widget.dart';

import '../../../base/base_stateless_widget.dart';
import '../../../resources/Colors.dart';
import '../../../resources/Images.dart';

class SignInLayout extends BaseStatelessWidget {
  SignInLayout({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: SafeArea(
        child: Column(
          children: <Widget>[
            // top background gradient
            const SizedBox(height: 45.0),
            Images.getIcon('Logo_weddy.png'),
            const SizedBox(height: 10.0),
            Padding(
              padding: const EdgeInsets.only(bottom: 5.0),
              child: Center(
                child: Container(
                  width: 266,
                  height: 330,
                  decoration: BoxDecoration(
                      border:
                          Border.all(width: 1, color: ColorItems.spaceCadet),
                      borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(120),
                          topRight: Radius.circular(120)),
                      image: const DecorationImage(
                          image: AssetImage(
                              'assets/Onboarding_pictures/onboarding_picture3.png'),
                          fit: BoxFit.fitHeight,
                          alignment: Alignment.topCenter)),
                ),
              ),
            ),
            SignInWidget(),
            //widgetFactory.createBottomSheetContainer(context, SignInWidget())
          ],
        ),
      ),
    );
  }
}
