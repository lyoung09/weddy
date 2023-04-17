import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:weddynew/screen/auth/signup/signup_widget.dart';

import '../../../base/base_stateless_widget.dart';
import '../../../resources/Colors.dart';
import '../../../resources/Text.dart';

class SignupLayout extends BaseStatelessWidget {
  SignupLayout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        ListView(
          children: <Widget>[
            Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(
                    height: 16,
                  ),
                  Row(
                    children: const [
                      SizedBox(
                        width: 24,
                      ),
                      AutoSizeText("반가워요. ",
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w700,
                              color: ColorItems.spaceCadet)),
                      AutoSizeText("웨디예요! ",
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w700,
                              color: ColorItems.primary)),
                    ],
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 24.0, top: 4),
                    child: AutoSizeText("서비스 이용을 위해 회원가입을 해주세요.",
                        style: TextItems.title5.copyWith(
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                            color: ColorItems.spaceCadet)),
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                ]),
            Container(
                margin: const EdgeInsets.fromLTRB(12, 0, 12, 60),
                child: SignupWidget()),
          ],
        )
      ],
    );
  }
}
