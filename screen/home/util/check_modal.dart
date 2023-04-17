import 'package:flutter/material.dart';

import '../../../resources/Colors.dart';
import '../../../resources/Images.dart';
import '../../../resources/Text.dart';

class ModalCustom {
  Widget oneAnswer(String text, String answer, BuildContext context,
      {Function? answerFunction}) {
    return AlertDialog(
      shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(18.0))),
      content: SizedBox(
        width: 260,
        height: 130,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            const SizedBox(
              height: 12,
            ),
            Container(
              width: 232,
              height: 54,
              padding: const EdgeInsets.only(left: 12, right: 12),
              child: Center(
                child: Text(
                  text,
                  textAlign: TextAlign.center,
                  style: TextItems.title7.copyWith(
                      color: ColorItems.spaceCadet,
                      fontSize: 14,
                      fontWeight: FontWeight.w500),
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            ElevatedButton(
                style: ElevatedButton.styleFrom(
                    backgroundColor: ColorItems.spaceCadet,
                    fixedSize: const Size(72, 28),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(18))),
                child: Text(
                  answer,
                  style: TextItems.title5
                      .copyWith(color: ColorItems.white, fontSize: 14),
                ),
                onPressed: () {
                  answerFunction!();
                }),
          ],
        ),
      ),
    );
  }

  Widget twoAnswer(String text, String firstAnswer, String secondAnswer,
      BuildContext context,
      {Function? firstFuction, Function? secondFunction}) {
    return AlertDialog(
      shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(18.0))),
      content: SizedBox(
        width: 260,
        height: 130,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            const SizedBox(
              height: 12,
            ),
            Container(
              width: 232,
              height: 54,
              padding: const EdgeInsets.only(left: 12, right: 12),
              child: Center(
                child: Text(
                  text,
                  textAlign: TextAlign.center,
                  style: TextItems.title7
                      .copyWith(color: ColorItems.spaceCadet, fontSize: 14),
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: ColorItems.secondarySpanishGray,
                        fixedSize: const Size(72, 28),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(18))),
                    child: Text(
                      firstAnswer,
                      style: TextItems.title5.copyWith(
                          color: ColorItems.spaceCadet,
                          fontSize: 14,
                          fontWeight: FontWeight.w500),
                    ),
                    onPressed: () {
                      firstFuction!();
                    }),
                const SizedBox(
                  width: 20,
                ),
                ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: ColorItems.spaceCadet,
                        fixedSize: const Size(72, 28),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(18))),
                    child: Text(
                      secondAnswer,
                      style: TextItems.title5.copyWith(
                          color: ColorItems.white,
                          fontSize: 14,
                          fontWeight: FontWeight.w500),
                    ),
                    onPressed: () {
                      secondFunction!();
                    }),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget withImage(
      String text, String image, String firstAnswer, BuildContext context,
      {Function? firstFuction,
      String? secondAnswer,
      Function? secondFunction}) {
    return AlertDialog(
      shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(18.0))),
      content: SizedBox(
        width: 260,
        height: 245,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Container(
                alignment: Alignment.centerRight,
                padding: EdgeInsets.only(left: 20, top: 8),
                child: GestureDetector(
                    onTap: () {
                      secondFunction!();
                    },
                    child: Images.getIcon('Icon_cross_black.png',
                        color: ColorItems.primary))),
            const SizedBox(
              height: 8,
            ),
            Center(child: Images.getIcon(image, width: 74, height: 74)),
            const SizedBox(
              height: 12,
            ),
            Container(
              width: 232,
              height: 54,
              padding: const EdgeInsets.only(left: 12, right: 12),
              child: Center(
                child: Text(
                  text,
                  textAlign: TextAlign.center,
                  style: TextItems.heading4
                      .copyWith(color: ColorItems.spaceCadet, fontSize: 14),
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            secondAnswer != null && secondAnswer.isNotEmpty
                ? Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              backgroundColor: ColorItems.secondarySpanishGray,
                              fixedSize: const Size(120, 28),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(18))),
                          child: Text(
                            firstAnswer,
                            style: TextItems.title5.copyWith(
                                color: ColorItems.spaceCadet,
                                fontSize: 14,
                                fontWeight: FontWeight.w500),
                          ),
                          onPressed: () {
                            firstFuction!();
                          }),
                      ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              backgroundColor: ColorItems.spaceCadet,
                              fixedSize: const Size(72, 28),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(18))),
                          child: Text(
                            secondAnswer,
                            style: TextItems.title5.copyWith(
                                color: ColorItems.white,
                                fontSize: 14,
                                fontWeight: FontWeight.w500),
                          ),
                          onPressed: () {
                            secondFunction!;
                          }),
                    ],
                  )
                : Center(
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            backgroundColor: ColorItems.spaceCadet,
                            fixedSize: const Size(72, 28),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(18))),
                        child: Text(
                          firstAnswer,
                          style: TextItems.title5.copyWith(
                              color: ColorItems.white,
                              fontSize: 14,
                              fontWeight: FontWeight.w500),
                        ),
                        onPressed: () {
                          firstFuction!();
                        }),
                  ),
          ],
        ),
      ),
    );
  }
}
