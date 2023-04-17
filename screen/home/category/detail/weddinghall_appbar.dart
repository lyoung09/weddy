import 'package:flutter/material.dart';

import 'package:scroll_to_index/scroll_to_index.dart';

class WeddingHallAppbar extends SliverAppBar {
  final BuildContext context;
  final bool isCollapsed;
  final double expandedHeight;
  final double collapsedHeight;
  final AutoScrollController scrollController;
  final TabController tabController;
  final int index;
  final void Function(bool isCollapsed) onCollapsed;
  final void Function(int index) onTap;

  WeddingHallAppbar({
    required this.index,
    required this.context,
    required this.isCollapsed,
    required this.expandedHeight,
    required this.collapsedHeight,
    required this.scrollController,
    required this.onCollapsed,
    required this.onTap,
    required this.tabController,
  }) : super(elevation: 4.0, pinned: true, forceElevated: true);

  @override
  Color? get backgroundColor => Colors.amber;

  // @override
  // Widget? get leading {
  //   return Center(
  //     child: IconButton(
  //       onPressed: () {},
  //       icon: Icon(Icons.arrow_back),
  //     ),
  //   );
  // }

  // @override
  // List<Widget>? get actions {
  //   return [
  //     IconButton(
  //       onPressed: () {},
  //       icon: Icon(
  //         Icons.share_outlined,
  //         color: isCollapsed ? Colors.black : Colors.blue,
  //       ),
  //     ),
  //   ];
  // }
  @override
  bool get automaticallyImplyLeading => false;

  @override
  AppBarTheme get appbarTheme {
    return AppBarTheme(
      iconTheme: IconThemeData(color: Colors.black),
      color: Colors.deepPurpleAccent, //<-- SEE HERE
    );
  }

  @override
  PreferredSizeWidget? get bottom {
    return PreferredSize(
      preferredSize: const Size.fromHeight(48),
      child: Container(
        // color: Colors.green,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TabBar(
              isScrollable: true,
              controller: tabController,
              indicatorPadding: const EdgeInsets.symmetric(horizontal: 16.0),
              // indicatorColor: Colors.black,
              // labelColor: Colors.yellow,
              // unselectedLabelColor: Colors.teal,
              indicatorWeight: 3.0,

              tabs: [
                Tab(
                  child: Container(
                    padding: const EdgeInsets.symmetric(horizontal: 8),
                    color: Colors.white,
                    child: const Text(
                      "상품 정보",
                    ),
                  ),
                ),
                Tab(
                  child: Container(
                    padding: const EdgeInsets.symmetric(horizontal: 8),
                    color: Colors.white,
                    child: const Text(
                      "상세 설명",
                    ),
                  ),
                ),
              ],
              onTap: onTap,
            ),
          ],
        ),
      ),
    );
  }

  // @override
  // Widget? get flexibleSpace {
  //   return LayoutBuilder(
  //     builder: (
  //       BuildContext context,
  //       BoxConstraints constraints,
  //     ) {
  //       final top = constraints.constrainHeight();
  //       final collapsedHight =
  //           MediaQuery.of(context).viewPadding.top + kToolbarHeight + 48;
  //       WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
  //         onCollapsed(collapsedHight != top);
  //       });

  //       return FlexibleSpaceBar(
  //         centerTitle: true,
  //         collapseMode: CollapseMode.parallax,
  //         background: Column(
  //           children: [
  //             Stack(
  //               children: [
  //                 // PromoText(title: data.bannerText),
  //                 // const PandaHead(),
  //                 // Column(
  //                 //   children: [
  //                 //     HeaderClip(data: data, context: context),
  //                 //     const SizedBox(height: 110),
  //                 //   ],
  //                 // ),
  //                 Text("a"),
  //                 Text("a"),
  //                 Text("a"),
  //                 Text("a"),
  //               ],
  //             ),
  //             // DiscountCard(
  //             //   title: data.optionalCard.title,
  //             //   subtitle: data.optionalCard.subtitle,
  //             // ),
  //             Text("good night")
  //           ],
  //         ),
  //       );
  //     },
  //   );
  // }
}
