/*
 *
 * Weddy CONFIDENTIAL
 * _____________________________________________________________________
 *
 * [2021] - [2030] Weddy
 *  All Rights Reserved.
 *
 * NOTICE:  All information contained herein is, and remains
 * the property of Weddy and its suppliers,
 * if any.  The intellectual and technical concepts contained
 * herein are proprietary to Weddy and its suppliers and
 * may be covered by Korea and Foreign Patents,
 * patents in process, and are protected by trade secret or copyright law.
 * Dissemination of this information or reproduction of this material
 * is strictly forbidden unless prior written permission is obtained
 * from Weddy.
 */
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:provider/provider.dart';
import 'package:weddynew/common/widget_factory.dart';
import 'package:weddynew/model/vendor_service_detail.dart';
import 'package:weddynew/repository/auth_repository.dart';
import 'package:weddynew/screen/app/bloc/app_bloc.dart';
import 'package:weddynew/screen/auth/signin/signin_page.dart';

import 'package:weddynew/screen/drawer/screen/password_update.dart';
import 'package:weddynew/screen/drawer/screen/user_update.dart';
import 'package:weddynew/screen/home/young_timeline/bloc/timeline_state.dart';

import '../../apis/preferences.dart';
import '../../di/di_module.dart';
import '../../resources/Colors.dart';
import '../../resources/Images.dart';
import '../../resources/Text.dart';
import '../app/bloc/app_state.dart';
import '../home/young_timeline/bloc/timeline_bloc.dart';
import '../home/young_timeline/bloc/timeline_event.dart';
import '../walkthrough/walkthrough_page.dart';

class ProfileScreen extends StatefulWidget {
  final BuildContext bloccontext;
  final TimeLineState state;
  const ProfileScreen(
      {Key? key, required this.state, required this.bloccontext})
      : super(key: key);

  @override
  ProfileScreenState createState() => ProfileScreenState();
}

class ProfileScreenState extends State<ProfileScreen> {
  final widgetFactory = WidgetFactory();

  late VendorServiceDetail serviceProductDetail;

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  String dateFormat() {
    return DateFormat("yyyy.MM.dd(E)", 'ko')
        .format(widget.state.userProfile.ceremonyDate!);
  }

  @override
  Widget build(BuildContext context) {
    // Add logout, withdraw
    return Scaffold(
      appBar: widgetFactory.createDefaultAppBar(context, title: '기본정보 수정'),
      backgroundColor: Colors.white,
      body: Column(
        children: [
          header(),
          Images.getIcon('Divider.png'),
          tileWithArrow('기본 정보 수정',
              onpress: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) =>
                          UpdateScreen(state: widget.state)))),
          tileWithArrow('비밀번호 변경',
              onpress: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const PasswordUpdatePage()))),
          tile(
            context,
            '로그아웃',
            1,
          ),
          tile(
            context,
            '회원탈되',
            2,
          ),
        ],
      ),
    );
  }

  Widget header() {
    return Container(
      height: 122,
      padding: const EdgeInsets.only(left: 20),
      child: Row(
        children: [
          widget.state.userProfile.relationShipCode == 1
              ? Images.getIcon('graph_bride', width: 60, height: 60)
              : Images.getIcon('graph_groom', width: 60, height: 60),
          const SizedBox(
            width: 20,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                widget.state.userProfile.name ?? '',
                style: TextItems.title8.copyWith(
                    fontSize: 16,
                    fontWeight: FontWeight.w700,
                    color: ColorItems.spaceCadet),
              ),
              const SizedBox(
                height: 15,
              ),
              Text('결혼 예정일 ${dateFormat()}',
                  style: TextItems.body1.copyWith(
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                      color: ColorItems.spaceCadet))
            ],
          )
        ],
      ),
    );
  }

  Widget tileWithArrow(String text, {Function? onpress}) {
    return Container(
      padding: const EdgeInsets.only(left: 20.0, right: 20),
      height: 60,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(text,
              style: TextItems.body1.copyWith(
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                  color: ColorItems.spaceCadet)),
          IconButton(
            icon: Images.getIcon('Icon_angle.png'),
            onPressed: () {
              onpress!();
            },
          )
        ],
      ),
    );
  }

  Widget tile(BuildContext thiscontext, String text, int num,
      {Function? result}) {
    return InkWell(
      onTap: () {
        num == 1 ? alertLogout(thiscontext) : delete();
      },
      child: Container(
        height: 60,
        padding: const EdgeInsets.only(left: 20.0, right: 20),
        child: Row(
          children: [
            Text(text,
                style: TextItems.body1.copyWith(
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                    color: ColorItems.spaceCadet)),
          ],
        ),
      ),
    );
  }

  void alertLogout(BuildContext context) {
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
                        ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                backgroundColor: ColorItems.secondarySpaceCadet,
                                fixedSize: const Size(72, 28),
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(24))),
                            onPressed: () {
                              AuthRepository(
                                      dao: getIt.get(),
                                      service: getIt.get(),
                                      bizService: getIt.get(),
                                      preference: getIt.get())
                                  .logout();
                              Navigator.pushNamed(
                                  context, SignInPage.routeName);
                            },
                            child: Text('확인',
                                style: TextItems.title4.copyWith(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.white))),
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

  delete() {
    showDialog(
        context: context,
        builder: (_) => AlertDialog(
              shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(18.0))),
              content: Container(
                width: MediaQuery.of(context).size.width * .6,
                height: MediaQuery.of(context).size.height * .15,
                padding: const EdgeInsets.only(left: 22, right: 22),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Spacer(),
                    Center(
                      child: Text(
                        '정말 탈퇴하시겠습니까?',
                        style: TextItems.title7.copyWith(
                            fontSize: 12,
                            fontWeight: FontWeight.w700,
                            color: ColorItems.spaceCadet),
                      ),
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    Center(
                      child: Text(
                        '삭제된 정보는 복구가 불가능합니다',
                        style: TextItems.title7.copyWith(
                            fontSize: 12,
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
                        ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                backgroundColor: ColorItems.secondarySpaceCadet,
                                fixedSize: const Size(72, 28),
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(24))),
                            onPressed: () {
                              String? password;
                              AuthRepository(
                                      dao: getIt.get(),
                                      service: getIt.get(),
                                      bizService: getIt.get(),
                                      preference: getIt.get())
                                  .deleteAll(password!);
                              Navigator.pushNamed(
                                  context, SignInPage.routeName);
                            },
                            child: Text('확인',
                                style: TextItems.title4.copyWith(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.white))),
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
