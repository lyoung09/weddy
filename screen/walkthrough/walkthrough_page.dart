import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
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
  final _sheetPageController = PageController(initialPage: 0);
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
        _sheetPageController.jumpTo(_backgroundPageController.offset);
        _progressProvider
            .setValue((_start + _backgroundPageController.offset) / _end);
      }
    });
    _sheetPageController.addListener(() {
      if (!_isBackgroundTouchControlled) {
        _backgroundPageController.jumpTo(_sheetPageController.offset);
        _progressProvider
            .setValue((_start + _sheetPageController.offset) / _end);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    WidgetFactory widgetFactory = WidgetFactory();
    _start = MediaQuery.of(context).size.width;
    _end = MediaQuery.of(context).size.width * 3;
    _progressProvider.setValue((_start + 0.0) / _end);

    return Scaffold(
        backgroundColor: Colors.white,
        body: Stack(
          children: <Widget>[
            GestureDetector(
              onHorizontalDragDown: (details) {
                _isBackgroundTouchControlled = true;
              },
              child: PageView(
                controller: _backgroundPageController,
                children: [
                  createBackground('beautiful_wedding_details_1'),
                  createBackground('beautiful_wedding_details_2'),
                  createBackground('elegant_wedding_couple_1'),
                ],
                onPageChanged: (index) {
                  _currentPageNotifier.value = index;
                  _currentPageProvider.setValue(index);
                },
              ),
            ),
            // top background gradient
            widgetFactory.createBottomSheetContainer(
                context, createBottomWidget(),
                height: 362, margin: const EdgeInsets.fromLTRB(0, 43, 0, 36))
          ],
        ));
  }

  @override
  void dispose() {
    super.dispose();
    _backgroundPageController.dispose();
    _sheetPageController.dispose();
    _currentPageNotifier.dispose();
    _currentPageProvider.dispose();
    _progressProvider.dispose();
  }

  Widget createBackground(String image) {
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/background/$image.png'),
              fit: BoxFit.fitWidth,
              alignment: Alignment.topCenter)),
    );
  }

  Widget createBottomWidget() {
    return Stack(
      fit: StackFit.passthrough,
      children: [
        GenericProvider.createWidget<int>(
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
        createBottomSheetPage(),
        createPageControllerWidget(),
        Positioned(
          left: 25,
          bottom: 0,
          child: GenericProvider.createWidget<int>(
            provider: _currentPageProvider,
            (state) => state.value == 0
                ? const SizedBox()
                : GestureDetector(
                    onTap: () {
                      previous();
                    },
                    child:
                        Images.getIcon('icon_arrow', color: ColorItems.salmon),
                  ),
          ),
        ),
        Positioned(
          right: 25,
          bottom: 0,
          child: GenericProvider.createWidget<int>(
            provider: _currentPageProvider,
            (state) => state.value == 2
                ? const SizedBox()
                : GestureDetector(
                    onTap: () {
                      skip();
                    },
                    child: const AutoSizeText('SKIP', style: TextItems.title5),
                  ),
          ),
        ),
      ],
    );
  }

  Widget createBottomSheetPage() {
    return SizedBox(
        width: MediaQuery.of(context).size.width,
        child: GestureDetector(
            onHorizontalDragDown: (details) {
              _isBackgroundTouchControlled = false;
            },
            child: PageView(
              controller: _sheetPageController,
              children: [
                createWalkthrough("Start planning with us!",
                    "Weddy is the all-in-one app that you need to plan your dream Wedding."),
                createWalkthrough("Everything you need",
                    "Plan easy and simple with our Wedding Timeline,\nChecklist and find the best suppliers."),
                createLastWidget()
              ],
            )));
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
                        strokeWidth: 4,
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
      padding: const EdgeInsets.only(left: 24, top: 38, right: 24),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AutoSizeText(subject, style: TextItems.heading2),
          const SizedBox(height: 8),
          AutoSizeText(description, style: TextItems.body2)
        ],
      ),
    );
  }

  Widget createLastWidget() {
    WidgetFactory widgetFactory = WidgetFactory();
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 62),
      child: Column(
        children: [
          const AutoSizeText("Welcome to Weddy!", style: TextItems.heading2),
          const SizedBox(height: 15),
          createSignupButton(widgetFactory),
          const SizedBox(height: 12),
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
