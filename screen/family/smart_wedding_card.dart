import 'dart:async';

import 'package:flutter/material.dart';
import 'package:weddynew/common/shimmer_loading.dart';

import 'package:weddynew/common/widget_factory.dart';
import 'package:weddynew/model/notice.dart';
import 'package:iconsax/iconsax.dart';
import 'package:auto_size_text/auto_size_text.dart';

class SmartCardScreen extends StatefulWidget {
  const SmartCardScreen({Key? key}) : super(key: key);

  @override
  SmartCardScreenState createState() => SmartCardScreenState();
}

class SmartCardScreenState extends State<SmartCardScreen> {
  final widgetFactory = WidgetFactory();

  final shimmerLoading = ShimmerLoading();

  bool loading = true;
  Timer? _timerDummy;

  List<Notice> items = [];

  @override
  void initState() {
    _getData();
    super.initState();
  }

  @override
  void dispose() {
    _timerDummy?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      extendBody: true,
      backgroundColor: Colors.white,
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/invitation.png'),
            fit: BoxFit.cover,
          ),
        ),
        child: Stack(
          children: [
            Positioned(
              top: 30,
              right: 10,
              child: IconButton(
                  iconSize: 48,
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: Icon(Iconsax.close_circle,
                      color: Colors.redAccent, size: 24)),
            ),
            Center(
                child: Container(
              margin: const EdgeInsets.all(10),
              height: MediaQuery.of(context).size.width,
              child: Card(
                elevation: 10,
                child: Padding(
                    padding: EdgeInsets.fromLTRB(10, 30, 10, 0),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(Iconsax.man),
                                AutoSizeText('신랑 홍길동'),
                                SizedBox(width: 10),
                                AutoSizeText('父 홍길수, 母 홍길녀'),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Container(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(Iconsax.woman),
                                AutoSizeText('신부 김순이'),
                                SizedBox(width: 10),
                                AutoSizeText('父 홍길수, 母 홍길녀'),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          AutoSizeText(
                              '두 사람이 사랑으로 만나 진실과 이해로써 하나를 이루려 합니다.이 두 사람을 지성으로 아끼고 돌봐주신 여러 어른과 친지를 모시고 서약을 맺고자 하오니 바쁘신 가운데 두 사람의 앞날을 가까이에서 축복해 주시면 고맙겠습니다.'),
                          SizedBox(
                            height: 20,
                          ),
                          Container(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(Iconsax.location),
                                AutoSizeText('서울시 웨디 웨딩홀 개나리홀 오후 2시'),
                              ],
                            ),
                          ),
                          SizedBox(height: 10),
                          widgetFactory.createDefaultButton(context,
                              text: '보내기',
                              onPressed: () {},
                              icon: Iconsax.send1)
                        ])),
              ),
            ))
          ],
        ),
      ),
    );
  }

  Widget buildItem(Notice item) {
    return Container();
  }

  Future refreshData() async {
    setState(() {
      items.clear();
      loading = true;
      _getData();
    });
  }

  void _getData() {
    _timerDummy = Timer(const Duration(seconds: 1), () {
      setState(() {
        loading = false;
      });
    });
  }
}
