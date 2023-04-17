import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:provider/provider.dart';
import 'package:weddynew/di/di_module.dart';
import 'package:weddynew/screen/home/young_timeline/bloc/timeline_bloc.dart';

import '../../../../resources/Colors.dart';
import '../../../../resources/Images.dart';
import '../../../../resources/Text.dart';
import '../../../drawer/screen/alarm_setting.dart';
import '../../home.dart';
import '../bloc/timeline_state.dart';

class AlarmRecevier extends StatefulWidget {
  const AlarmRecevier({super.key});

  @override
  State<AlarmRecevier> createState() => _AlarmRecevierState();
}

class _AlarmRecevierState extends State<AlarmRecevier> {
  @override
  Widget build(BuildContext context) {
    return Provider(
        create: (_) =>
            TimeLineBloc(repository: getIt.get(), userRepository: getIt.get()),
        child:
            BlocBuilder<TimeLineBloc, TimeLineState>(builder: (context, state) {
          return Scaffold(
              appBar: PreferredSize(
                  preferredSize: const Size.fromHeight(52),
                  child: AppBar(
                    leading: IconButton(
                      icon: Images.getIcon('icon_arrow',
                          color: ColorItems.salmon),
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                    ),
                    automaticallyImplyLeading: false,
                    title: AutoSizeText(
                      "알림 수신함",
                      style: TextItems.heading3.copyWith(
                          fontSize: 18,
                          fontWeight: FontWeight.w700,
                          color: ColorItems.spaceCadet),
                    ),
                    actions: [
                      GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => AlarmSettingScreen(
                                        bloccontext: context, state: state)));
                          },
                          child: Image.asset(
                            'assets/icons/LogIn/Home Timeline _Guidebook/Icon_settings.png',
                          ))
                    ],
                    elevation: 0,
                  )),
              body: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Center(
                      child:
                          Images.getIcon('Graph_notFound_notifications.png')),
                  Text(
                    '새로운 알림이 없어요.',
                    style: TextItems.body2.copyWith(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        color: ColorItems.spaceCadet),
                  )
                ],
              ));
        }));
  }
}
