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
import 'package:convex_bottom_bar/convex_bottom_bar.dart';
import 'package:flutter/services.dart';

import 'package:weddy_ceres/common/widget_factory.dart';

import 'package:weddy_ceres/screen/budget/budget_simulator.dart';
import 'package:weddy_ceres/screen/drawer/memo.dart';
import 'package:weddy_ceres/screen/drawer/notices.dart';
import 'package:weddy_ceres/screen/drawer/profile.dart';
import 'package:weddy_ceres/screen/drawer/push_messages.dart';
import 'package:weddy_ceres/screen/drawer/settings.dart';
import 'package:weddy_ceres/screen/dress/dress_showroom.dart';
import 'package:weddy_ceres/screen/product/category_menu.dart';
import 'checklist/check_list.dart';
import 'home/timeline.dart';
import 'package:iconsax/iconsax.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:badges/badges.dart';

class BottomNavigationPage extends StatefulWidget {
  const BottomNavigationPage({Key? key}) : super(key: key);

  @override
  BottomNavigationPageState createState() => BottomNavigationPageState();
}

class BottomNavigationPageState extends State<BottomNavigationPage> {
  //late PageController tabPageController;
  final widgetFactory = WidgetFactory();

  int tabIndex = 0;
  late String appBarTitle;
  final List<String> appBarTitleItems = [
    '웨딩 타임라인',
    '예산 시뮬레이션',
    '웨딩 체크리스트',
    '판매사 상품 검색',
    '드레스 쇼룸'
  ];

  // todo 고객유형에 따라 분리된
  final List<Widget> contentPages = <Widget>[
    const TimelineScreen(),
    const BudgetSimulatorScreen(),
    const CheckListScreen(),
    const CategoryMenuScreen(),
    const DressShowroomScreen(),
  ];

  @override
  void initState() {
    // set initial pages for navigation to home page
    // tabPageController = PageController(initialPage: 0);
    // tabPageController.addListener(handleTabSelection);
    appBarTitle = appBarTitleItems[0];

    super.initState();
  }

  @override
  void dispose() {
    //tabPageController.dispose();
    super.dispose();
  }

  void handleTabSelection() {
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      backgroundColor: Colors.transparent,
      drawerEnableOpenDragGesture: false,
      appBar: createAppBar(),
      drawer: createDrawer(),
      body: contentPages.elementAt(tabIndex),
      bottomNavigationBar: ConvexAppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        style: TabStyle.react,
        activeColor: Theme.of(context).colorScheme.primary,
        color: Theme.of(context).colorScheme.secondary,
        items: const [
          TabItem(icon: Iconsax.home5),
          TabItem(icon: Iconsax.calculator5),
          TabItem(icon: Iconsax.note5),
          TabItem(icon: Iconsax.shop5),
          TabItem(icon: Iconsax.gallery_favorite5),
        ],
        initialActiveIndex: 0, //optional, default as 0
        onTap: (int i) {
          tapNavigateToTaget(i);
        },
      ),
    );
  }

  PreferredSizeWidget createAppBar() {
    return AppBar(
      iconTheme: IconThemeData(color: Theme.of(context).colorScheme.primary),
      actions: <Widget>[
        // Badge(
        //   badgeColor: Colors.redAccent,
        //   position: BadgePosition.topEnd(top: 10, end: 10),
        //   child: IconButton(
        //       iconSize: 24,
        //       icon: Icon(
        //         Iconsax.notification,
        //         color: Theme.of(context).colorScheme.primary,
        //       ),
        //       onPressed: () => {}),
        // )
      ],
      elevation: 0,
      backgroundColor: Colors.transparent,
      systemOverlayStyle: SystemUiOverlayStyle.dark,
      centerTitle: true,
      title: AutoSizeText(appBarTitle,
          style: widgetFactory.styler.tabAppbarTitleStyle),
    );
  }

  Drawer createDrawer() {
    return Drawer(
        backgroundColor: Colors.white,
        child: ListView(padding: EdgeInsets.zero, children: [
          DrawerHeader(
              decoration: const BoxDecoration(
                color: Colors.white,
                image: DecorationImage(
                    fit: BoxFit.scaleDown,
                    image: AssetImage('assets/images/drawer_back.png')),
              ),
              child: Stack(children: const [
                CircleAvatar(
                  backgroundColor: Colors.white,
                  maxRadius: 32,
                  backgroundImage: AssetImage('assets/images/logo.png'),
                ),
              ])),
          ListTile(
            title: Center(
              child: widgetFactory.createTextButton(
                  text: '내 프로필',
                  onPressed: () => {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const ProfileScreen()))
                      }),
            ),
          ),
          ListTile(
            title: Center(
              child: widgetFactory.createTextButton(
                  text: '알림 메시지',
                  onPressed: () => {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    const PushMessageScreen()))
                      }),
            ),
          ),
          ListTile(
            title: Center(
              child: widgetFactory.createTextButton(
                  text: '나의 메모',
                  onPressed: () => {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const MemoScreen()))
                      }),
            ),
          ),
          ListTile(
            title: Center(
              child: widgetFactory.createTextButton(
                  text: '앱 설정',
                  onPressed: () => {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const SettingsScreen()))
                      }),
            ),
          ),
          ListTile(
            title: Center(
              child: widgetFactory.createTextButton(
                  text: '공지사항',
                  onPressed: () => {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const NoticeScreen()))
                      }),
            ),
          ),
          ListTile(
              title: Center(
            child: widgetFactory.createTextButton(
                text: '오픈소스 라이센스',
                onPressed: () => {
                      showLicensePage(
                          context: context,
                          useRootNavigator: true,
                          applicationName: 'Weddy App',
                          applicationVersion: '1.0.0',
                          applicationLegalese: '\u{a9} 2022, Weddy')
                    }),
          )),
          const SizedBox(height: 4),
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              AutoSizeText(
                'My Wedding Design',
                style: Theme.of(context).textTheme.headline6,
              ),
            ],
          ),
        ]));
  }

  void tapNavigateToTaget(index) {
    setState(() {
      tabIndex = index;
      appBarTitle = appBarTitleItems[tabIndex];
    });
    //tabPageController.jumpToPage(index);

    // this unfocus is to prevent show keyboard in the text field
    FocusScope.of(context).unfocus();
  }
}
