import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../common/widget_factory.dart';

class TermsAndCondition extends StatelessWidget {
  const TermsAndCondition({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: WidgetFactory().createDefaultAppBar(context, title: '개인정보 처리방침'),
      body: SingleChildScrollView(
        physics: const AlwaysScrollableScrollPhysics(),
        child: Column(),
      ),
    );
  }
}
