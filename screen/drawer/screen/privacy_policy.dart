import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:weddynew/common/widget_factory.dart';

class PrivacyPolicy extends StatelessWidget {
  const PrivacyPolicy({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: WidgetFactory().createDefaultAppBar(context, title: '이용약관'),
      body: SingleChildScrollView(
        physics: const AlwaysScrollableScrollPhysics(),
        child: Column(),
      ),
    );
  }
}
