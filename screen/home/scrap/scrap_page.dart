import 'package:flutter/material.dart';

import 'package:weddynew/screen/home/scrap/scrap_list_layout.dart';

import '../../../base/base_bloc_page.dart';
import 'bloc/scrap_bloc.dart';
import 'bloc/scrap_event.dart';
import 'bloc/scrap_statey.dart';

class ScrapPage extends BaseBlocPage<ScrapBlocY, ScrapStateY> {
  ScrapPage({super.key});

  @override
  Widget buildPage(BuildContext context, Widget blocBody) {
    return Scaffold(
      body: blocBody,
    );
  }

  @override
  Widget buildWidget(BuildContext context, ScrapStateY state) {
    return SafeArea(child: ScrapTabView(state: state));
  }

  @override
  initEvent() => InitScrapEventY();
}
