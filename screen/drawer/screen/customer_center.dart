import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:weddynew/common/widget_factory.dart';
import 'package:weddynew/resources/Images.dart';

import '../../../resources/Colors.dart';
import '../../../resources/Text.dart';

class CustomerSettingScreen extends StatefulWidget {
  const CustomerSettingScreen({super.key});

  @override
  State<CustomerSettingScreen> createState() => _CustomerSettingScreenState();
}

class _CustomerSettingScreenState extends State<CustomerSettingScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: WidgetFactory().createDefaultAppBar(context, title: '고객센터'),
      body: Column(
        children: [
          const SizedBox(
            height: 20,
          ),
          Container(
            height: 190,
            width: MediaQuery.of(context).size.width * .9,
            decoration: BoxDecoration(
                border: Border.all(width: 1, color: ColorItems.cultured),
                color: ColorItems.cultured,
                borderRadius: const BorderRadius.all(Radius.circular(20))),
            child: Row(children: [
              const SizedBox(
                width: 30,
              ),
              Center(child: Images.getIcon('Icon_phoneCall.png')),
              const SizedBox(
                width: 15,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Spacer(),
                  Text(
                    '안녕하세요',
                    style: TextItems.heading3.copyWith(
                        fontSize: 18,
                        fontWeight: FontWeight.w700,
                        color: ColorItems.spaceCadet),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Text(
                    '웨디 고객센터 입니다',
                    style: TextItems.title5.copyWith(
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                        color: ColorItems.spaceCadet),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Text(
                    '어떤 문제를 해결해 드릴까요?',
                    style: TextItems.heading3.copyWith(
                        fontSize: 18,
                        fontWeight: FontWeight.w700,
                        color: ColorItems.spaceCadet),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Text(
                    '최선을 다해 도움드릴게요!',
                    style: TextItems.title5.copyWith(
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                        color: ColorItems.spaceCadet),
                  ),
                  const Spacer(),
                ],
              )
            ]),
          ),
          const SizedBox(
            height: 16,
          ),
          Container(
            width: MediaQuery.of(context).size.width * .9,
            decoration: BoxDecoration(
                border: Border.all(width: 1, color: ColorItems.cultured),
                color: ColorItems.cultured,
                borderRadius: const BorderRadius.all(Radius.circular(20))),
            height: 40,
            child: Row(
              children: [
                const SizedBox(
                  width: 20,
                ),
                const CircleAvatar(
                  radius: 8,
                  backgroundColor: ColorItems.spanishBlue,
                  child: Center(
                      child: Text(
                    '!',
                    style: TextStyle(fontSize: 10, color: Colors.white),
                  )),
                ),
                const SizedBox(
                  width: 4,
                ),
                Text(
                  '상담 가능 시간',
                  style: TextItems.title6.copyWith(
                      fontSize: 12,
                      fontWeight: FontWeight.w500,
                      color: ColorItems.spanishBlue),
                ),
                const Spacer(),
                Text(
                  '평일 am10:00 ~ pm7:00',
                  style: TextItems.body2.copyWith(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      color: ColorItems.spaceCadet),
                ),
                const SizedBox(
                  width: 29,
                )
              ],
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 24.0, right: 24),
            child: ListTile(
                onTap: () async {
                  final Uri url = Uri(scheme: 'tel', path: "025488584");
                  if (await canLaunchUrl(url)) {
                    await launchUrl(url);
                  }
                },
                title: Text(
                  "전화 문의",
                  style: TextItems.body1.copyWith(
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                      color: ColorItems.spaceCadet),
                ),
                trailing: Images.getIcon('Icon_angle.png')),
          )
        ],
      ),
    );
  }
}
