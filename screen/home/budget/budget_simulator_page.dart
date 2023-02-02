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
import 'package:weddynew/screen/home/budget/bloc/budget_event.dart';
import '../../../base/base_bloc_listener_page.dart';
import 'bloc/budget_bloc.dart';
import 'bloc/budget_state.dart';
import 'budget_header_widget.dart';
import 'budget_vendor_layout.dart';

class BudgetSimulatorPage
    extends BaseBlocListenerPage<BudgetBloc, BudgetState> {
  BudgetSimulatorPage({Key? key}) : super(key: key);

  static const String routeName = "/budget_simulator";

  @override
  Widget buildPage(BuildContext context, Widget blocBody) {
    return Scaffold(
        floatingActionButton: buildFloatingButton(context),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
        backgroundColor: Colors.white,
        appBar: widgetFactory.createEmptyAppBar(context),
        body: blocBody);
  }

  @override
  Widget buildWidget() {
    return SingleChildScrollView(
        child: Container(
      color: widgetFactory.styler.tabScreenBackgroundColor,
      child: Column(
        children: [
          const SizedBox(height: 10),
          BudgetHeaderWidget(),
          BudgetVendorLayout()
        ],
      ),
    ));
  }

  @override
  void onStateChanged(BuildContext context, BudgetState state) {}

  @override
  initEvent() => InitBudgetEvent();

  Widget buildFloatingButton(context) {
    return FloatingActionButton(
        onPressed: () {
          screenCommonWidget.showConfirmDialog(context,
              message: '체크리스트에 추가하시겠습니까?');
        },
        backgroundColor: Colors.white,
        foregroundColor: Colors.white,
        elevation: 5,
        splashColor: Colors.grey,
        child: widgetFactory.styler.floatingButtonAddIcon);
  }
}
