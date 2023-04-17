import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:weddynew/dao/user_profile_dao.dart';
import 'package:weddynew/screen/home/category/bloc/category_bloc.dart';
import 'package:weddynew/screen/home/category/bloc/category_event.dart';
import 'package:weddynew/screen/home/category/bloc/category_state.dart';
import 'package:weddynew/screen/home/category/search/search_screen.dart';

import '../../../../dao/search_history.dart';
import '../../../../model/search_history.dart';
import '../../../../resources/Colors.dart';
import '../../../../resources/Images.dart';
import '../../../../resources/Text.dart';

class SearchHistoryWidget extends StatefulWidget {
  final BuildContext context;
  final CategoryState state;
  const SearchHistoryWidget(
      {super.key, required this.context, required this.state});

  @override
  State<SearchHistoryWidget> createState() => _SearchHistoryWidgetState();
}

class _SearchHistoryWidgetState extends State<SearchHistoryWidget> {
  String? name;
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return widget.state.user == null
        ? const SizedBox()
        : FutureBuilder(
            future: SQLHelper.getItem(widget.state.user!.name ?? ""),
            builder: (context, AsyncSnapshot<List<SearchHistory>> snapshot) {
              if (!snapshot.hasData || snapshot.data!.isEmpty) {
                return const SizedBox(
                  height: 0,
                );
              }
              return Container(
                height: 100,
                padding: const EdgeInsets.all(8),
                child: Column(
                  children: [
                    SizedBox(
                      height: 20,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                              padding: EdgeInsets.only(left: 12),
                              child: Text(
                                '최근 검색어',
                                style: TextItems.heading4.copyWith(
                                    fontSize: 14, color: ColorItems.spaceCadet),
                              )),
                          GestureDetector(
                            onTap: () {
                              setState(() {
                                SQLHelper.deleteAll(widget.state.user!.name!);
                              });
                            },
                            child: Padding(
                              padding: EdgeInsets.only(right: 12),
                              child: Text(
                                '전체 삭제',
                                style: TextItems.title6.copyWith(
                                    color: ColorItems.secondarySpanishGray,
                                    fontSize: 12),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 6,
                    ),
                    Container(
                      height: 50,
                      width: MediaQuery.of(context).size.width,
                      child: Row(
                        children: [
                          const SizedBox(
                            width: 12,
                          ),
                          Flexible(
                              flex: 7,
                              child: Align(
                                  alignment: Alignment.centerLeft,
                                  child: ListView.builder(
                                      reverse: true,
                                      shrinkWrap: true,
                                      padding: EdgeInsets.zero,
                                      scrollDirection: Axis.horizontal,
                                      itemCount: snapshot.data!.length > 10
                                          ? 10
                                          : snapshot.data!.length,
                                      itemBuilder: (context, count) {
                                        return Padding(
                                          padding: const EdgeInsets.only(
                                              right: 10, top: 6),
                                          child: Chip(
                                            padding: const EdgeInsets.only(
                                                left: 10,
                                                right: 10,
                                                top: 6,
                                                bottom: 6),
                                            shape: const RoundedRectangleBorder(
                                                borderRadius: BorderRadius.all(
                                                    Radius.circular(18)),
                                                side: BorderSide(
                                                    color:
                                                        ColorItems.spaceCadet)),
                                            backgroundColor: Colors.white,
                                            key: UniqueKey(),
                                            label: GestureDetector(
                                              onTap: () {
                                                context
                                                    .read<CategoryBloc>()
                                                    .add(SearchCategoryEvent(
                                                        searchText: snapshot
                                                            .data![count]
                                                            .name));
                                                Navigator.pushNamed(context,
                                                    SearchScreen.routeName,
                                                    arguments: SearchScreen(
                                                      blocContext:
                                                          widget.context,
                                                      state: widget.state,
                                                    ));
                                              },
                                              child: Text(
                                                snapshot.data![count].name,
                                                style: TextItems.title6
                                                    .copyWith(
                                                        color: ColorItems
                                                            .spaceCadet,
                                                        fontSize: 12),
                                              ),
                                            ),
                                            deleteIcon: Images.getIcon(
                                                'Icon_cross.png'),
                                            onDeleted: () async {
                                              debugPrint('search delete');
                                              setState(() {
                                                SQLHelper.deleteId(
                                                    snapshot.data![count].id,
                                                    widget.state.user!.name!);
                                              });
                                            },
                                          ),
                                        );
                                      })
                                  //     ListView(
                                  //   shrinkWrap: true,
                                  //   padding: EdgeInsets.zero,
                                  //   scrollDirection: Axis.horizontal,
                                  //   children: snapshot.data!
                                  //       .map((e) => Padding(
                                  //             padding: const EdgeInsets.only(
                                  //                 right: 10, top: 6),
                                  //             child: Chip(
                                  //               padding: const EdgeInsets.only(
                                  //                   left: 10,
                                  //                   right: 10,
                                  //                   top: 6,
                                  //                   bottom: 6),
                                  //               shape:
                                  //                   const RoundedRectangleBorder(
                                  //                       borderRadius:
                                  //                           BorderRadius.all(
                                  //                               Radius.circular(
                                  //                                   18)),
                                  //                       side: BorderSide(
                                  //                           color: ColorItems
                                  //                               .spaceCadet)),
                                  //               backgroundColor: Colors.white,
                                  //               key: UniqueKey(),
                                  //               label: Text(
                                  //                 e.name,
                                  //                 style: TextItems.title6
                                  //                     .copyWith(
                                  //                         color: ColorItems
                                  //                             .spaceCadet,
                                  //                         fontSize: 12),
                                  //               ),
                                  //               deleteIcon: Images.getIcon(
                                  //                   'Icon_cross.png'),
                                  //               onDeleted: () async {
                                  //                 SQLHelper.deleteId(e.id,
                                  //                     widget.state.user!.name!);
                                  //               },
                                  //             ),
                                  //           ))
                                  //       .toList(),
                                  // ),
                                  ))
                        ],
                      ),
                    )
                  ],
                ),
              );
            });
  }
}
