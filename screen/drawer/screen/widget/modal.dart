import 'package:flutter/material.dart';

import '../../../../resources/Text.dart';

class UpdateModal extends StatelessWidget {
  String? title;
  String? text;
  String? image;
  UpdateModal({super.key, this.title, this.text, this.image});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(18.0))),
      content: Container(
        width: MediaQuery.of(context).size.width * .8,
        height: 130,
        padding: const EdgeInsets.only(left: 12, right: 12),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(
              height: 20,
            ),
            Center(
              child: Text(
                title ?? '',
                maxLines: 2,
                style: TextItems.title3.copyWith(
                  fontSize: 16,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.black,
                    fixedSize: const Size(120, 36),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(24))),
                onPressed: () {
                  final nav = Navigator.of(context);

                  if (title == "새로운 비밀번호로 변경되었습니다") {
                    nav.pop();
                    nav.pop();
                  } else {
                    Navigator.pop(context);
                  }
                },
                child: Text('확인',
                    style: TextItems.title4.copyWith(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        color: Colors.white))),
          ],
        ),
      ),
    );
  }
}
