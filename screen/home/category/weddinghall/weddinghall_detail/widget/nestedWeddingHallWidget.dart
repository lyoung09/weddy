import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:weddynew/screen/home/category/weddinghall/weddinghall_detail/widget/weddinghall_infomation.dart';
import 'package:weddynew/screen/home/category/weddinghall/weddinghall_detail/widget/weddinghall_item.dart';

import '../../../detail/widget/vendor_detail.dart';
import '../bloc/weddinghall_bloc.dart';
import '../bloc/weddinghall_event.dart';
import '../bloc/weddinghall_state.dart';

class NestedWeddingHallWidget extends StatefulWidget {
  final WeddingHallDetailState state;
  final BuildContext bloccontext;
  final int id;
  const NestedWeddingHallWidget(
      {super.key,
      required this.state,
      required this.bloccontext,
      required this.id});

  @override
  State<NestedWeddingHallWidget> createState() =>
      _NestedWeddingHallWidgetState();
}

class _NestedWeddingHallWidgetState extends State<NestedWeddingHallWidget>
    with SingleTickerProviderStateMixin {
  ScrollController scrollController = ScrollController();
  PageController pageController = PageController(initialPage: 0);
  int pageIndex = 0;

  @override
  initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        body: NestedScrollView(
          headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
            return <Widget>[
              SliverOverlapAbsorber(
                handle:
                    NestedScrollView.sliverOverlapAbsorberHandleFor(context),
                sliver: SliverAppBar(
                  pinned: false,
                  expandedHeight: 380.0,
                  floating: false,
                  forceElevated: innerBoxIsScrolled,
                  automaticallyImplyLeading: false,
                  flexibleSpace: FlexibleSpaceBar(
                    background: widget.state.weddinghallHallResponse != null
                        ? Padding(
                            padding: const EdgeInsets.only(bottom: 12.0),
                            child: VendorDetailWidget().weddingHallDetail(
                                context,
                                widget.state,
                                widget.state.weddinghallHallResponse!),
                          )
                        : const SizedBox(),
                  ),
                ),
              ),
              SliverPersistentHeader(
                  pinned: true,
                  delegate: TabBarDelegate(
                      bloccontext: context,
                      vendorProfileId: widget
                          .state.weddinghallHallResponse!.searchVendorProfile.id
                          .toInt())),
            ];
          },
          body: TabBarView(children: [
            tabview(
              InfomationWidget(
                  bloccontext: context,
                  blocstate: widget.state,
                  id: widget
                      .state.weddinghallHallResponse!.searchVendorProfile.id
                      .toInt()),
            ),
            tabview(
              ItemWidget(
                  bloccontext: context,
                  blocstate: widget.state,
                  id: widget
                      .state.weddinghallHallResponse!.searchVendorProfile.id
                      .toInt()),
            ),
            // SafeArea(
            //   top: false,
            //   bottom: false,
            //   child: Builder(
            //     builder: (BuildContext context) {
            //       return CustomScrollView(
            //         slivers: <Widget>[
            //           SliverOverlapInjector(
            //             handle: NestedScrollView.sliverOverlapAbsorberHandleFor(
            //                 context),
            //           ),
            //           SliverPadding(
            //             padding: const EdgeInsets.all(8.0),
            //             sliver: SliverList(
            //               delegate: SliverChildBuilderDelegate(
            //                   (BuildContext context, int index) {
            //                 return BlocProvider.value(
            //                   value: BlocProvider.of<WeddingHallDetailBloc>(
            //                       context),
            //                   child: InfomationWidget(
            //                       bloccontext: context,
            //                       blocstate: widget.state,
            //                       id: widget.state.weddinghallHallResponse!
            //                           .searchVendorProfile.id
            //                           .toInt()),
            //                 );
            //               }, childCount: 1),
            //             ),
            //           ),
            //         ],
            //       );
            //     },
            //   ),
            // ),
            // SafeArea(
            //   top: false,
            //   bottom: false,
            //   child: Builder(
            //     builder: (BuildContext context) {
            //       return CustomScrollView(
            //         slivers: <Widget>[
            //           SliverOverlapInjector(
            //             handle: NestedScrollView.sliverOverlapAbsorberHandleFor(
            //                 context),
            //           ),
            //           SliverPadding(
            //             padding: const EdgeInsets.all(8.0),
            //             sliver: SliverList(
            //               delegate: SliverChildBuilderDelegate(
            //                 (BuildContext context, int index) {
            //                   return BlocProvider.value(
            //                     value: BlocProvider.of<WeddingHallDetailBloc>(
            //                         context),
            //                     child: ItemWidget(
            //                         bloccontext: context,
            //                         blocstate: widget.state,
            //                         id: widget.state.weddinghallHallResponse!
            //                             .searchVendorProfile.id
            //                             .toInt()),
            //                   );
            //                 },
            //                 childCount: 1,
            //               ),
            //             ),
            //           ),
            //         ],
            //       );
            //     },
            //   ),
            // )
          ]),
        ),
      ),
    );
  }

  Widget tabview(Widget detail) {
    return SafeArea(
      top: false,
      bottom: false,
      child: Builder(
        builder: (BuildContext context) {
          return CustomScrollView(
            slivers: <Widget>[
              SliverOverlapInjector(
                handle:
                    NestedScrollView.sliverOverlapAbsorberHandleFor(context),
              ),
              SliverPadding(
                padding: const EdgeInsets.all(8.0),
                sliver: SliverList(
                  delegate: SliverChildBuilderDelegate(
                      (BuildContext context, int index) {
                    return BlocProvider.value(
                      value: BlocProvider.of<WeddingHallDetailBloc>(context),
                      child: detail,
                    );
                  }, childCount: 1),
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}

class TabBarDelegate extends SliverPersistentHeaderDelegate {
  final BuildContext bloccontext;
  final int vendorProfileId;
  const TabBarDelegate(
      {required this.bloccontext, required this.vendorProfileId});

  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    return Container(
      color: Colors.white,
      padding: const EdgeInsets.only(top: 10),
      child: TabBar(
        onTap: (value) {
          bloccontext.read<WeddingHallDetailBloc>().add(
              TabChangeWeddinghallDetailEvent(
                  tabIndex: value, vendorProfileId: vendorProfileId));
        },
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
        indicatorWeight: 2,
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        unselectedLabelColor: Colors.grey,
        labelColor: Colors.black,
        indicatorColor: Colors.black,
        indicatorSize: TabBarIndicatorSize.label,
      ),
    );
  }

  @override
  double get maxExtent => 48;

  @override
  double get minExtent => 48;

  @override
  bool shouldRebuild(covariant SliverPersistentHeaderDelegate oldDelegate) {
    return false;
  }
}
