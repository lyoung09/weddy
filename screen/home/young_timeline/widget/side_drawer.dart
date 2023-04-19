import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:provider/provider.dart';
import 'package:weddynew/di/di_module.dart';
import 'package:weddynew/resources/Text.dart';
import 'package:weddynew/screen/app/bloc/app_bloc.dart';
import 'package:weddynew/screen/app/bloc/app_event.dart';
import 'package:weddynew/screen/app/bloc/app_state.dart';
import 'package:weddynew/screen/auth/bloc/auth_bloc.dart';
import 'package:weddynew/screen/auth/bloc/auth_state.dart';
import 'package:weddynew/screen/drawer/screen/privacy_policy.dart';
import 'package:weddynew/screen/home/young_timeline/bloc/timeline_event.dart';
import 'package:weddynew/screen/home/young_timeline/bloc/timeline_state.dart';
import 'package:weddynew/utils/package.dart';

import '../../../../common/widget_factory.dart';
import '../../../../repository/auth_repository.dart';
import '../../../../resources/Colors.dart';
import '../../../../resources/Images.dart';
import '../../../auth/signin/signin_page.dart';

import '../../../drawer/screen/profile.dart';
import '../../../drawer/screen/alarm_setting.dart';
import '../../../drawer/screen/customer_center.dart';
import '../../../drawer/screen/oss_license.dart';
import '../../../drawer/screen/terms_conditions.dart';
import '../bloc/timeline_bloc.dart';

class SlideDrawer extends StatelessWidget {
  final widgetFactory = WidgetFactory();

  SlideDrawer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) =>
          TimeLineBloc(repository: getIt.get(), userRepository: getIt.get())
            ..add(GetTimeLineEvent()),
      child:
          BlocBuilder<TimeLineBloc, TimeLineState>(builder: (context, state) {
        return Drawer(
            backgroundColor: Colors.white,
            child: Column(children: [
              DrawerHeader(
                margin: EdgeInsets.zero,
                child: Container(
                  padding: const EdgeInsets.only(left: 15),
                  alignment: Alignment.topLeft,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(
                        height: 6,
                      ),
                      Text('MY 웨디',
                          style: TextItems.heading3.copyWith(
                              fontSize: 18,
                              fontWeight: FontWeight.w700,
                              color: ColorItems.spaceCadet)),
                      const SizedBox(
                        height: 6,
                      ),
                      Row(
                        children: [
                          state.userProfile.relationShipCode == 1
                              ? Images.getIcon('graph_bride',
                                  width: 80, height: 80)
                              : Images.getIcon('graph_groom',
                                  width: 80, height: 80),
                          const SizedBox(
                            width: 20,
                          ),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                state.userProfile.name == null
                                    ? Text('')
                                    : SizedBox(
                                        width: 120,
                                        child: Text(
                                            state.userProfile.name! + "님의",
                                            style: TextItems.title8.copyWith(
                                                fontSize: 16,
                                                fontWeight: FontWeight.w700,
                                                color: ColorItems.spaceCadet)),
                                      ),
                                const SizedBox(height: 4),
                                Text('웨딩 디자인',
                                    style: TextItems.body1.copyWith(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w400,
                                        color: ColorItems.spaceCadet)),
                                Align(
                                  alignment: Alignment.centerLeft,
                                  child: Provider.value(
                                    value: Provider.of<TimeLineBloc>(context),
                                    child: TextButton(
                                      onPressed: () {
                                        Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) =>
                                                    ProfileScreen(
                                                        bloccontext: context,
                                                        state: state)));
                                      },
                                      child: Text('내 프로필 관리 >',
                                          style: TextItems.body1.copyWith(
                                              fontSize: 16,
                                              fontWeight: FontWeight.w400,
                                              color: ColorItems.carolinaBlue)),
                                    ),
                                  ),
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              Images.getIcon('Divider.png', color: ColorItems.cultured),
              Container(
                  padding: EdgeInsets.only(
                      left: MediaQuery.of(context).size.width * .05,
                      right: MediaQuery.of(context).size.width * .2),
                  alignment: Alignment.centerLeft,
                  child: BlocProvider.value(
                    value: BlocProvider.of<TimeLineBloc>(context),
                    child: ListTile(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => AlarmSettingScreen(
                                    bloccontext: context, state: state)));
                      },
                      leading:
                          Image.asset('assets/icons/drawer/Icon_settings.png'),
                      title: widgetFactory.createTextButton(
                          text: '알림 설정',
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => AlarmSettingScreen(
                                        bloccontext: context, state: state)));
                          },
                          style: TextItems.title5.copyWith(
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                              color: ColorItems.spaceCadet)),
                    ),
                  )),
              listtile(context, '고객 센터',
                  Image.asset('assets/icons/drawer/Icon_customer_center.png'),
                  onpress: () => {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    const CustomerSettingScreen()))
                      }),
              listtile(
                  context,
                  '이용약관',
                  Image.asset(
                      'assets/icons/drawer/Icon_terms_&_conditions.png'),
                  onpress: () => Navigator.of(context).push(MaterialPageRoute(
                      builder: (_) => const PrivacyPolicy()))),
              listtile(context, '개인정보 처리방침',
                  Image.asset('assets/icons/drawer/Icon_privacy_policy.png'),
                  onpress: () => Navigator.of(context).push(MaterialPageRoute(
                      builder: (_) => const TermsAndCondition()))),
              listtile(context, '오픈소스 라이선스',
                  Image.asset('assets/icons/drawer/Icon_open_Source.png'),
                  onpress: () => Navigator.of(context)
                      .push(MaterialPageRoute(builder: (_) => OssLicenses()))),
              Container(
                  padding: EdgeInsets.only(
                    left: MediaQuery.of(context).size.width * .05,
                  ),
                  alignment: Alignment.centerLeft,
                  child: ListTile(
                    leading: Image.asset(
                        'assets/icons/drawer/Icon_app_version_info.png'),
                    title: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('버전정보',
                            style: TextItems.title5.copyWith(
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                                color: ColorItems.spaceCadet)),
                        FutureBuilder(
                            future: MyPackage().myPackageVersion(),
                            builder: (context, AsyncSnapshot<String> snapshot) {
                              if (!snapshot.hasData) {
                                return Text('');
                              }
                              return Text(snapshot.data.toString(),
                                  style: TextItems.body4.copyWith(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w400,
                                      color: ColorItems.spaceCadet));
                            })
                      ],
                    ),
                    trailing: Text(
                      '최신 버전입니다',
                      style: TextItems.body6.copyWith(
                          fontSize: 10,
                          fontWeight: FontWeight.w400,
                          color: ColorItems.imperialRed),
                    ),
                  )),
              const Spacer(),
              GestureDetector(
                onTap: () {
                  alertLogout(context);
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset('assets/icons/drawer/Icon_log_out.png'),
                    const SizedBox(
                      width: 25,
                    ),
                    Text(
                      '로그아웃',
                      style: TextItems.title5.copyWith(
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                          color: ColorItems.spaceCadet),
                    ),
                    const SizedBox(
                      width: 25,
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 45,
              )
            ]));
      }),
    );
  }

  Widget listtile(BuildContext context, String name, Widget icon,
      {Function? onpress}) {
    return Container(
        padding: EdgeInsets.only(
            left: MediaQuery.of(context).size.width * .05,
            right: MediaQuery.of(context).size.width * .2),
        alignment: Alignment.centerLeft,
        child: ListTile(
          onTap: () => onpress!(),
          leading: icon,
          title: widgetFactory.createTextButton(
              text: name,
              onPressed: () => onpress!(),
              style: TextItems.title5.copyWith(
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                  color: ColorItems.spaceCadet)),
        ));
  }

  void alertLogout(context) {
    showDialog(
        context: context,
        builder: (_) => AlertDialog(
              shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(18.0))),
              content: Container(
                width: MediaQuery.of(context).size.width * .6,
                height: MediaQuery.of(context).size.height * .15,
                padding: const EdgeInsets.only(left: 36, right: 36),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Spacer(),
                    Center(
                      child: Text(
                        '로그아웃 하시겠습니까?',
                        style: TextItems.heading4.copyWith(
                            fontSize: 14,
                            fontWeight: FontWeight.w700,
                            color: ColorItems.spaceCadet),
                      ),
                    ),
                    const Spacer(),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                backgroundColor:
                                    ColorItems.secondarySpanishGray,
                                fixedSize: const Size(72, 28),
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(24))),
                            onPressed: () {
                              Navigator.pop(context, true);
                            },
                            child: Text('취소',
                                style: TextItems.title4.copyWith(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w500,
                                    color: ColorItems.spaceCadet))),
                        const SizedBox(
                          width: 30,
                        ),
                        Provider(
                          create: (_) => AppBloc(),
                          child: BlocBuilder<AppBloc, AppState>(
                              builder: (context, state) {
                            return ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                    backgroundColor:
                                        ColorItems.secondarySpaceCadet,
                                    fixedSize: const Size(72, 28),
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(24))),
                                onPressed: () {
                                  AuthRepository(
                                          dao: getIt.get(),
                                          service: getIt.get(),
                                          bizService: getIt.get(),
                                          preference: getIt.get())
                                      .logout();
                                  context.read<AppBloc>().add(LogoutAppEvent());
                                  Navigator.pushNamedAndRemoveUntil(context,
                                      SignInPage.routeName, (route) => false);
                                },
                                child: Text('확인',
                                    style: TextItems.title4.copyWith(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w500,
                                        color: Colors.white)));
                          }),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                  ],
                ),
              ),
            ));
  }
}
