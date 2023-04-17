import 'package:flutter/material.dart';
import 'package:flutter_switch/flutter_switch.dart';
import 'package:intl/intl.dart';
import 'package:provider/provider.dart';
import 'package:weddynew/common/widget_factory.dart';
import 'package:weddynew/resources/Text.dart';
import 'package:weddynew/screen/home/young_timeline/bloc/timeline_bloc.dart';

import '../../../resources/Colors.dart';
import '../../home/young_timeline/bloc/timeline_state.dart';
import '../../profile/update/model/agree_model.dart';

class AlarmSettingScreen extends StatefulWidget {
  final BuildContext bloccontext;
  final TimeLineState state;
  const AlarmSettingScreen(
      {super.key, required this.bloccontext, required this.state});

  @override
  State<AlarmSettingScreen> createState() => _AlarmSettingScreenState();
}

class _AlarmSettingScreenState extends State<AlarmSettingScreen> {
  bool? activity;

  @override
  initState() {
    super.initState();
    activity = false;
  }

  String yyyydateFormat() {
    final now = DateTime.now();
    final f = DateFormat('yyyy.MM.dd');

    return f.format(now);
  }

  final allChoiceAgrees = [
    AgreeServiceModel(
        text: '앱 푸시', isRequired: false, story: "푸시 알림 수신에 동의하셨습니다. "),
    AgreeServiceModel(
        text: 'SMS', isRequired: false, story: "SMS 수신에 동의하셨습니다. "),
    AgreeServiceModel(
        text: '이메일', isRequired: false, story: "이메일 수신에 동의하셨습니다. "),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: WidgetFactory().createDefaultAppBar(context, title: "알림설정"),
      body: Column(children: [
        const SizedBox(
          height: 30,
        ),
        Container(
            padding: const EdgeInsets.only(left: 24.0, right: 24),
            alignment: Alignment.centerLeft,
            child: Text('활동 알림',
                style: TextItems.title8.copyWith(
                    fontSize: 16,
                    fontWeight: FontWeight.w700,
                    color: ColorItems.spaceCadet))),
        SizedBox(height: 8),
        Padding(
          padding: const EdgeInsets.only(left: 24.0, right: 24),
          child: Row(
            children: [
              Text('타임라인, 문의 답변 관련 알림 설정',
                  style: TextItems.body2.copyWith(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      color: ColorItems.spaceCadet)),
              Spacer(),
              FlutterSwitch(
                  value: activity!,
                  activeColor: ColorItems.primary,
                  inactiveColor: Colors.white,
                  activeToggleColor: ColorItems.white,
                  height: 30,
                  toggleSize: 30,
                  padding: 1,
                  inactiveToggleColor: ColorItems.secondarySpanishGray,
                  switchBorder: Border.all(
                    color: activity == true ? Colors.transparent : Colors.black,
                    width: 1.0,
                  ),
                  onToggle: (val) {
                    setState(() => activity = val);
                  })
            ],
          ),
        ),
        const SizedBox(
          height: 30,
        ),
        Container(
            padding: const EdgeInsets.only(left: 24.0, right: 24),
            alignment: Alignment.centerLeft,
            child: Text('마케팅 정보 수신',
                style: TextItems.title8.copyWith(
                    fontSize: 16,
                    fontWeight: FontWeight.w700,
                    color: ColorItems.spaceCadet))),
        const SizedBox(height: 20),
        ...allChoiceAgrees.map((e) => radioButton(e))
      ]),
    );
  }

  Widget radioButton(AgreeServiceModel model) {
    return Padding(
      padding: const EdgeInsets.only(left: 24.0, right: 24, top: 8, bottom: 8),
      child: Row(
        children: [
          Text(model.text,
              style: TextItems.body2.copyWith(
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                  color: ColorItems.spaceCadet)),
          const Spacer(),
          FlutterSwitch(
              value: model.isChecked ?? false,
              activeColor: ColorItems.primary,
              inactiveColor: Colors.white,
              activeToggleColor: ColorItems.white,
              height: 30,
              toggleSize: 30,
              padding: 1,
              inactiveToggleColor: ColorItems.secondarySpanishGray,
              switchBorder: Border.all(
                color:
                    model.isChecked == true ? Colors.transparent : Colors.black,
                width: 1.0,
              ),
              onToggle: (val) {
                setState(() {
                  model.isChecked = val;
                });
                String text = model.story ?? '${model.text} 알림 수신에 동의하셨습니다';

                showSnackbar(context, text + yyyydateFormat());
              })
        ],
      ),
    );
  }

  showSnackbar(context, text) {
    ScaffoldMessenger.of(context).showSnackBar(
        //SnackBar 구현하는법 context는 위에 BuildContext에 있는 객체를 그대로 가져오면 됨.
        SnackBar(
      backgroundColor: ColorItems.spaceCadet,
      content: Container(
          height: 48,
          padding: const EdgeInsets.only(bottom: 10),
          child: Center(
              child: Text(
            text,
            style: TextItems.title5.copyWith(
                fontSize: 14, fontWeight: FontWeight.w500, color: Colors.white),
          ))),
      duration: const Duration(seconds: 2), //올라와있는 시간
    ));
  }
}
