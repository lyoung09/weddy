import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:weddynew/apis/preferences.dart';
import 'package:weddynew/dao/user_profile_dao.dart';
import 'package:weddynew/model/search_history.dart';
import 'package:weddynew/resources/Colors.dart';
import 'package:weddynew/screen/home/category/bloc/category_event.dart';
import 'package:weddynew/screen/home/category/bloc/category_state.dart';
import 'package:weddynew/screen/home/category/search/search_screen.dart';

import '../../../../dao/search_history.dart';
import '../../../../resources/Images.dart';
import '../../../../resources/Text.dart';
import '../bloc/category_bloc.dart';

class SearchWidget extends StatefulWidget {
  final int index;
  final BuildContext context;
  final CategoryState state;
  String? historyText;
  SearchWidget(
      {super.key,
      required this.index,
      required this.context,
      required this.state,
      this.historyText});

  @override
  State<SearchWidget> createState() => _SearchWidgetState();
}

class _SearchWidgetState extends State<SearchWidget> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController controller = TextEditingController();
  String text = '';
  FocusNode focusnode = FocusNode();
  @override
  void initState() {
    super.initState();
    controller.text = widget.context.watch<CategoryBloc>().state.searchText;

    text = controller.text;

    if (widget.historyText != null && widget.historyText!.isNotEmpty) {
      text = widget.historyText!;
    }
  }

  saveSearch(String text) async {
    try {
      await SQLHelper.createItem(text, widget.state.user!.name!);

      //await DatabaseHelper.instance.add(SearchHistory(name: text,id:uid));
    } catch (e) {
      debugPrint(e.toString());
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      // height: 60,
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        children: [
          Expanded(
            child: Form(
              key: _formKey,
              child: TextFormField(
                focusNode: focusnode,
                controller: controller,
                textInputAction: TextInputAction.search,
                onFieldSubmitted: (value) {
                  if (value.isNotEmpty) {
                    text = value;
                    controller.text = text;
                    if (text.isNotEmpty) {
                      context.read<CategoryBloc>().add(
                            SearchCategoryEvent(searchText: controller.text),
                          );

                      saveSearch(text);

                      widget.index == 1
                          ? Navigator.pushNamed(context, SearchScreen.routeName,
                              arguments: context)
                          : null;
                    }
                  }
                },
                onChanged: (value) {
                  setState(() {
                    text = value;
                  });
                },
                decoration: InputDecoration(
                  enabledBorder: const OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(18)),
                      borderSide: BorderSide(color: ColorItems.silverSand)),
                  focusedBorder: const OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(18.0)),
                      borderSide: BorderSide(color: ColorItems.silverSand)),
                  isDense: true,
                  hintText: "판매사 이름을 검색해주세요",
                  hintStyle: TextItems.body1.copyWith(
                      color: ColorItems.secondarySpanishGray, fontSize: 16),
                  suffixIcon: Row(
                    mainAxisAlignment:
                        MainAxisAlignment.spaceBetween, // added line
                    mainAxisSize: MainAxisSize.min, // added line
                    children: <Widget>[
                      controller.text.isNotEmpty
                          ? IconButton(
                              icon: Images.getIcon('Button_delete.png'),
                              focusColor: ColorItems.primary,
                              onPressed: () {
                                controller.text = '';
                                text = '';
                                setState(() {});
                              },
                            )
                          : SizedBox(),
                      controller.text.isNotEmpty
                          ? Images.getIcon('Line.png')
                          : SizedBox(),
                      IconButton(
                        icon: Images.getIcon('Button_search.png',
                            color: controller.text.isNotEmpty
                                ? ColorItems.primary
                                : ColorItems.spaceCadet),
                        onPressed: () {
                          if (text.isNotEmpty) {
                            controller.text = text;

                            context.read<CategoryBloc>().add(
                                  SearchCategoryEvent(
                                    searchText: controller.text,
                                  ),
                                );
                            saveSearch(controller.text);
                            if (widget.index == 1) {
                              Navigator.pushNamed(
                                  context, SearchScreen.routeName,
                                  arguments: SearchScreen(
                                    blocContext: context,
                                    state: widget.state,
                                  ));
                            }
                          }
                          focusnode.unfocus();
                        },
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          // BlocBuilder<SearchBloc, SearchState>(
          //   bloc: searchBloc,
          //   builder: (context, state) {
          //     if (state.query.isNotEmpty) {
          //       return GestureDetector(
          //         onTap: () {
          // searchBloc.add(const OnChangeQuery(""));
          // searchBloc.searchTextCtrl.text = "";
          // searchBloc.debounce?.cancel();
          // searchBloc.add(const OnChangeResults([]));
          //         },
          //         child: const Icon(Icons.close),
          //       );
          //     }
          //     return const SizedBox();
          //   },
          // ),
        ],
      ),
    );
  }
}
