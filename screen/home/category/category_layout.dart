import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:iconsax/iconsax.dart';
import 'package:weddynew/screen/home/category/widget/search_category.dart';
import 'package:weddynew/screen/home/category/widget/search_history_widget.dart';
import 'package:weddynew/screen/home/home.dart';

import '../../../base/base_stateless_widget.dart';
import '../../../model/search_history.dart';
import '../../../resources/Colors.dart';
import '../../../resources/Images.dart';
import '../../../resources/Text.dart';
import '../../bookmark/do_vendor.dart';
import 'bloc/category_bloc.dart';
import 'bloc/category_event.dart';
import 'bloc/category_state.dart';
import 'category_list_layout.dart';

class CategoryLayout extends BaseStatelessWidget {
  CategoryLayout({Key? key}) : super(key: key);

  int? selectedId;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CategoryBloc, CategoryState>(builder: (context, state) {
      return Scaffold(
        body: SingleChildScrollView(
            child: Container(
                color: Colors.white,
                child: Column(children: [
                  BlocProvider.value(
                    value: BlocProvider.of<CategoryBloc>(context),
                    child: SearchWidget(
                      context: context,
                      index: 1,
                      state: state,
                    ),
                  ),
                  const SizedBox(height: 10),
                  BlocProvider.value(
                      value: BlocProvider.of<CategoryBloc>(context),
                      child:
                          SearchHistoryWidget(context: context, state: state)),
                  const SizedBox(height: 10),
                  buttonRow(context),
                  const SizedBox(height: 10),
                  CategoryListLayout(state: state)
                ]))),
      );
    });
  }

  Widget buttonRow(context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SizedBox(
          width: 12,
        ),
        Expanded(
          flex: 5,
          child: twoBigCustomRowItem("다양한\n가격대의 상품을", "추천받고 싶다면?", '시뮬레이션',
              'Graph_Simulation.png', ColorItems.spanishPink, 1, context),
        ),
        SizedBox(
          width: 10,
        ),
        Expanded(
            flex: 5,
            child: twoBigCustomRowItem("내가 선택한", "판매사 바로가기", 'MY 좋아요',
                'Graph_likeBunny.png', ColorItems.purpleNavy, 2, context)),
        SizedBox(
          width: 12,
        ),
      ],
    );
  }

  Widget twoBigCustomRowItem(String first, String second, String eleButton,
      String icon, Color background, int index, BuildContext context) {
    return Container(
      height: 162,
      width: 124,
      decoration: BoxDecoration(
          borderRadius: const BorderRadius.all(
            Radius.circular(24),
          ),
          color: background),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 12,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 12.0),
                child: Text(
                  first,
                  style: TextItems.title7.copyWith(color: Colors.white),
                ),
              ),
              SizedBox(
                height: 2,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 12.0, bottom: 6),
                child: Text(
                  second,
                  style: TextItems.title7.copyWith(color: Colors.white),
                ),
              ),
              SizedBox(
                height: 4,
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.white,
                    fixedSize: const Size(100, 30),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(24))),
                onPressed: () {
                  index == 2
                      ? Navigator.pushNamed(context, '/likeVendor')
                      : Navigator.pushNamed(context, HomePage.routeName,
                          arguments: 1);
                },
                child: Text(eleButton,
                    style: TextItems.heading4
                        .copyWith(color: ColorItems.spaceCadet, fontSize: 14)),
              ),
            ],
          ),
          SizedBox(
            width: 8,
          ),
          Images.getIcon(icon),
        ],
      ),
    );
  }
}
