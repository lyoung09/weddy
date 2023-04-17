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
import 'package:flutter/services.dart';

import 'package:weddynew/common/widget_factory.dart';

import 'package:weddynew/screen/home/scrap/scrap_page.dart';
import 'package:weddynew/screen/home/simulation/simulation_page.dart';
import 'package:weddynew/screen/home/timeline/timeline_page.dart';
import 'package:weddynew/screen/home/young_timeline/timelineScreenYoung.dart';
import 'package:weddynew/screen/home/young_timeline/timelineYoung.dart';
import 'package:weddynew/screen/product/category_menu.dart';
import '../../resources/Colors.dart';
import '../checklist/check_list.dart';
import 'budget/budget_simulator_page.dart';
import 'category/category_page.dart';
import 'category/detail/vendor_detail_page.dart';
import 'dress/dress_showroom_page.dart';
import 'timeline/timeline.dart';
import 'package:iconsax/iconsax.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:badges/badges.dart';

class HomePage extends StatefulWidget {
  HomePage({Key? key, this.index}) : super(key: key);
  static const String routeName = "/home_page";
  int? index;

  @override
  HomePageState createState() => HomePageState();
}

class HomePageState extends State<HomePage> {
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
    TimelineYoung(),
    const SimulationPage(),
    ScrapPage(),
    CategoryPage(),
    DressShowroomPage(),
  ];

  @override
  void initState() {
    // set initial pages for navigation to home page
    // tabPageController = PageController(initialPage: 0);
    // tabPageController.addListener(handleTabSelection);
    debugPrint(widget.index.toString());
    widget.index != null || widget.index != 0
        ? appBarTitle = appBarTitleItems[widget.index!]
        : appBarTitle = appBarTitleItems[0];
    // appBarTitle = appBarTitleItems[0];

    widget.index != null || widget.index != 0
        ? tabIndex = widget.index!
        : tabIndex = 0;
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
    return WillPopScope(
      onWillPop: () async => false,
      child: Scaffold(
        extendBodyBehindAppBar: true,
        backgroundColor: Colors.transparent,
        drawerEnableOpenDragGesture: false,
        //appBar:createAppBar(),
        //drawer: createDrawer(),
        body: contentPages.elementAt(tabIndex),
        bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Colors.white,
          elevation: 0,
          //style: TabStyle.react,
          //activeColor: Theme.of(context).colorScheme.primary,
          selectedItemColor: ColorItems.spaceCadet,
          unselectedItemColor: ColorItems.secondarySpanishGray,
          showSelectedLabels: true,
          showUnselectedLabels: true,
          selectedFontSize: 10,
          currentIndex: tabIndex,
          unselectedFontSize: 10,
          items: const [
            BottomNavigationBarItem(icon: Icon(Iconsax.home5), label: '홈'),
            BottomNavigationBarItem(
                icon: Icon(Iconsax.calculator5), label: '시뮬레이션'),
            BottomNavigationBarItem(icon: Icon(Iconsax.note5), label: '스크랩'),
            BottomNavigationBarItem(icon: Icon(Iconsax.shop5), label: '판매사'),
            BottomNavigationBarItem(
                icon: Icon(Iconsax.gallery_favorite5), label: '쇼룸'),
          ],
          onTap: (int i) {
            setState(() {
              tabIndex = i;
            });
          },
        ),
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
