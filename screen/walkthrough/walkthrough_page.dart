import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:page_view_indicators/circle_page_indicator.dart';

import '../../common/widget_factory.dart';
import '../../provider/generic_provider.dart';
import '../../resources/Colors.dart';
import '../../resources/Images.dart';
import '../../resources/Text.dart';
import '../auth/signin/signin_page.dart';
import '../auth/signup/signup_page.dart';

class WalkthroughPage extends StatefulWidget {
  const WalkthroughPage({super.key});

  @override
  State<StatefulWidget> createState() => WalkthroughState();
}

class WalkthroughState extends State<WalkthroughPage> {
  final _backgroundPageController = PageController(initialPage: 0);
  final _currentPageNotifier = ValueNotifier<int>(0);
  final _currentPageProvider = GenericProvider<int>(initValue: 0);
  final _progressProvider = GenericProvider<double>(initValue: 0.0);
  late double _start;
  late double _end;
  var _isBackgroundTouchControlled = true;

  @override
  void initState() {
    super.initState();

    _backgroundPageController.addListener(() {
      if (_isBackgroundTouchControlled) {
        _progressProvider
            .setValue((_start + _backgroundPageController.offset) / _end);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    _start = MediaQuery.of(context).size.width;
    _end = MediaQuery.of(context).size.width * 3;
    _progressProvider.setValue((_start + 0.0) / _end);
    return Scaffold(
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            Expanded(
                child: GestureDetector(
                    onHorizontalDragDown: (details) {
                      _isBackgroundTouchControlled = true;
                    },
                    child: PageView(
                      controller: _backgroundPageController,
                      children: [
                        onboarding(
                            'onboarding_picture1',
                            'Start planning with us!',
                            'Weddy is the all-in-one app that you need to plan your dream Wedding.'),
                        onboarding('onboarding_picture2', 'Everything you need',
                            'Plan easy and simple with our Wedding Timeline,\nChecklist and find the best suppliers.'),
                        createBackground('onboarding_picture3'),
                      ],
                      onPageChanged: (index) {
                        _currentPageNotifier.value = index;
                        _currentPageProvider.setValue(index);
                      },
                    ))),
            SizedBox(
              height: 50,
              child: GenericProvider.createWidget<int>(
                provider: _currentPageProvider,
                (state) => state.value == 2
                    ? const SizedBox()
                    : CirclePageIndicator(
                        size: 10,
                        selectedSize: 10,
                        dotSpacing: 24,
                        dotColor: ColorItems.mysticRose,
                        selectedDotColor: ColorItems.salmon,
                        currentPageNotifier: _currentPageNotifier,
                        itemCount: 3),
              ),
            ),
            Row(
              children: [
                const Spacer(),
                SizedBox(
                    height: 50,
                    child: GenericProvider.createWidget<int>(
                      provider: _currentPageProvider,
                      (state) => state.value == 2
                          ? const SizedBox()
                          : GestureDetector(
                              behavior: HitTestBehavior.translucent,
                              onTap: () {
                                skip();
                              },
                              child: const AutoSizeText('SKIP',
                                  style: TextItems.title5),
                            ),
                    )),
                const SizedBox(
                  width: 20,
                )
              ],
            ),
          ],
        ),
      )),
    );
  }

  @override
  void dispose() {
    super.dispose();
    _backgroundPageController.dispose();
    _currentPageNotifier.dispose();
    _currentPageProvider.dispose();
    _progressProvider.dispose();
  }

  Widget onboarding(String image, String title, String subTitle) {
    return Column(
      children: [
        const SizedBox(
          height: 55,
        ),
        Container(
          width: 266,
          height: 380,
          decoration: BoxDecoration(
              border: Border.all(width: 1, color: ColorItems.spaceCadet),
              borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(120),
                  topRight: Radius.circular(120)),
              image: DecorationImage(
                  image: AssetImage('assets/Onboarding_pictures/$image.png'),
                  fit: BoxFit.fitHeight,
                  alignment: Alignment.topCenter)),
        ),
        Padding(
            padding: const EdgeInsets.only(
              left: 20,
              top: 15,
            ),
            child: GestureDetector(
              onHorizontalDragDown: (details) {
                _isBackgroundTouchControlled = false;
              },
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const SizedBox(height: 15),
                  AutoSizeText(title,
                      style: TextItems.heading2.copyWith(
                          fontSize: 24,
                          fontWeight: FontWeight.w800,
                          color: ColorItems.spaceCadet)),
                  const SizedBox(height: 15),
                  AutoSizeText(subTitle,
                      style: TextItems.body3.copyWith(
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          color: ColorItems.spaceCadet))
                ],
              ),
            ))
      ],
    );
  }

  Widget createBackground(String image) {
    return Column(
      children: [
        const SizedBox(height: 20.0),
        Images.getIcon('Logo_weddy.png'),
        const SizedBox(height: 20.0),
        Padding(
          padding: const EdgeInsets.only(bottom: 5.0),
          child: Center(
            child: Container(
              width: 266,
              height: 280,
              decoration: BoxDecoration(
                  border: Border.all(width: 1, color: ColorItems.spaceCadet),
                  borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(120),
                      topRight: Radius.circular(120)),
                  image: DecorationImage(
                      image:
                          AssetImage('assets/Onboarding_pictures/$image.png'),
                      fit: BoxFit.fitHeight,
                      alignment: Alignment.topCenter)),
            ),
          ),
        ),
        createLastWidget()
      ],
    );
  }

  Widget createPageControllerWidget() {
    return Align(
        alignment: Alignment.bottomCenter,
        widthFactor: 92,
        heightFactor: 92,
        child: Stack(
          alignment: Alignment.center,
          children: [
            SizedBox(
                width: 92,
                height: 92,
                child: GenericProvider.createWidget<double>(
                    provider: _progressProvider,
                    (state) => CircularProgressIndicator(
                        backgroundColor: ColorItems.mysticRose,
                        color: ColorItems.salmon,
                        strokeWidth: 2,
                        value: state.value))),
            GenericProvider.createWidget<int>(
                provider: _currentPageProvider,
                (state) => Images.getIcon('logo_w',
                    color: state.value == 2
                        ? ColorItems.salmon
                        : ColorItems.mysticRose))
          ],
        ));
  }

  Widget createWalkthrough(String subject, String description) {
    return Padding(
      padding: const EdgeInsets.only(
        left: 20,
        top: 15,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(height: 15),
          AutoSizeText(subject,
              style: TextItems.heading2.copyWith(
                  fontSize: 24,
                  fontWeight: FontWeight.w800,
                  color: ColorItems.spaceCadet)),
          const SizedBox(height: 15),
          AutoSizeText(description,
              style: TextItems.body3.copyWith(
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                  color: ColorItems.spaceCadet))
        ],
      ),
    );
  }

  Widget createLastWidget() {
    WidgetFactory widgetFactory = WidgetFactory();
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 32,
      ),
      child: Column(
        children: [
          //const AutoSizeText("Welcome to Weddy!", style: TextItems.heading2),
          const SizedBox(height: 40),
          Text(
            '마이 웨딩 디자인',
            style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.w800,
                color: HexColor('#3C3B62')),
          ),
          const SizedBox(height: 30),
          createSignupButton(widgetFactory),

          const SizedBox(height: 20),
          createLoginButton(widgetFactory)
        ],
      ),
    );
  }

  Widget createSignupButton(WidgetFactory widgetFactory) {
    return widgetFactory.createDefaultButton(context, text: '회원 가입',
        onPressed: () {
      Navigator.pushNamed(context, SignupPage.routeName);
    });
  }

  Widget createLoginButton(WidgetFactory widgetFactory) {
    return widgetFactory.createDefaultButton(context,
        text: '로그인',
        textColor: ColorItems.spaceCadet,
        border: ColorItems.spaceCadet,
        background: ColorItems.white, onPressed: () {
      Navigator.pushReplacementNamed(context, SignInPage.routeName);
    });
  }

  void skip() {
    _isBackgroundTouchControlled = true;
    _backgroundPageController.animateToPage(2,
        duration: const Duration(milliseconds: 150), curve: Curves.linear);
  }

  void previous() {
    _isBackgroundTouchControlled = true;
    _backgroundPageController.animateToPage(_currentPageNotifier.value - 1,
        duration: const Duration(milliseconds: 150), curve: Curves.linear);
  }
}

  // @override
  // Widget build(BuildContext context) {
  //   WidgetFactory widgetFactory = WidgetFactory();
  //   _start = MediaQuery.of(context).size.width;
  //   _end = MediaQuery.of(context).size.width * 3;
  //   _progressProvider.setValue((_start + 0.0) / _end);

  //   return Scaffold(
  //       backgroundColor: Colors.white,
  //       body: Column(
  //         children: <Widget>[
  //           Expanded(
  //             child: GestureDetector(
  //               onHorizontalDragDown: (details) {
  //                 _isBackgroundTouchControlled = true;
  //               },
  //               child: Container(
  //                 child: PageView(
  //                   controller: _backgroundPageController,
  //                   children: [
  //                     onboarding(
  //                         'onboarding_picture1',
  //                         'Start planning with us!',
  //                         'Weddy is the all-in-one app that you need to plan your dream Wedding.'),
  //                     onboarding('onboarding_picture2', 'Everything you need',
  //                         'Plan easy and simple with our Wedding Timeline,\nChecklist and find the best suppliers.'),
  //                     Column(
  //                       //mainAxisAlignment: MainAxisAlignment.center,
  //                       children: [
  //                         const SizedBox(
  //                           height: 100,
  //                         ),
  //                         Images.getIcon('Logo_weddy.png'),
  //                         const SizedBox(
  //                           height: 12,
  //                         ),
  //                         createBackground('onboarding_picture3'),
  //                       ],
  //                     ),
  //                   ],
  //                   onPageChanged: (index) {
  //                     _currentPageNotifier.value = index;
  //                     _currentPageProvider.setValue(index);
  //                   },
  //                 ),
  //               ),
  //             ),
  //           ),
  //           createBottomWidget()
  //         ],
  //       ));
  // }