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


import '../../../base/base_bloc_page.dart';
import 'bloc/category_bloc.dart';
import 'bloc/category_event.dart';
import 'bloc/category_state.dart';
import 'category_layout.dart';

class CategoryPage extends BaseBlocPage<CategoryBloc, CategoryState> {
   CategoryPage({Key? key}) : super(key: key);

  static const String routeName = "/category";

  @override
  Widget buildPage(BuildContext context, Widget blocBody) {
    return Scaffold(
      appBar: widgetFactory.createEmptyAppBar(context),
      backgroundColor: Colors.white,
      body: blocBody);
  }

  @override
  Widget buildWidget(BuildContext context, CategoryState state) =>
       CategoryLayout();

  @override
  initEvent() => InitCategoryEvent();
}