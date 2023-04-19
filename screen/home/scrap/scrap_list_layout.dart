import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:provider/provider.dart';

import 'package:weddynew/screen/home/scrap/model/notify.dart';
import 'package:weddynew/screen/home/scrap/inquire/inquire_list.dart';
import 'package:weddynew/screen/home/scrap/scrap/scrap_view.dart';

import '../../../resources/Colors.dart';
import '../../../resources/Images.dart';
import '../../../resources/Text.dart';
import 'bloc/scrap_bloc.dart';
import 'bloc/scrap_event.dart';
import 'bloc/scrap_statey.dart';

class ScrapTabView extends StatefulWidget {
  final ScrapStateY state;
  const ScrapTabView({super.key, required this.state});

  @override
  State<ScrapTabView> createState() => _ScrapTabViewState();
}

class _ScrapTabViewState extends State<ScrapTabView>
    with TickerProviderStateMixin {
  late TabController _tabController;
  @override
  void initState() {
    _tabController = TabController(
      length: 2,
      vsync: this, //vsync에 this 형태로 전달해야 애니메이션이 정상 처리됨
    );

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    if (widget.state.tabIndex != 0) {
      _tabController.animateTo(widget.state.tabIndex);
    }
    return DefaultTabController(
      length: 2,
      initialIndex: widget.state.tabIndex,
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text('스크랩',
              style: TextItems.heading3.copyWith(
                  fontWeight: FontWeight.w700,
                  fontSize: 18,
                  color: ColorItems.spaceCadet)),
          automaticallyImplyLeading: false,
          elevation: 0,
          bottom: PreferredSize(
            preferredSize: const Size.fromHeight(85),
            child: Padding(
              padding: const EdgeInsets.only(bottom: 18.0, top: 18),
              child: tabBar(context),
            ),
          ),
          backgroundColor: ColorItems.white,
        ),
        body: TabBarView(
          controller: _tabController,
          children: [
            widget.state.categoryTabLength != 0
                // ? BlocProvider.value(
                //     value: BlocProvider.of<ScrapBlocY>(context),
                //     child: ScrapList(
                //         state: widget.state,
                //         categoryLength: widget.state.categoryTabLength))
                ? const ScrapWidgetState()
                : SizedBox(),
            const InquireView()
          ],
        ),
        //floatingActionButton: widget.state.tabIndex == 0 ? fab() : null,
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      ),
    );
  }

  Widget tabBar(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.75,
      height: 58,
      alignment: Alignment.center,
      child: TabBar(
        controller: _tabController,
        unselectedLabelColor: ColorItems.spaceCadet,
        indicatorSize: TabBarIndicatorSize.label,
        indicator: BoxDecoration(
            borderRadius: BorderRadius.circular(100),
            color: ColorItems.spaceCadet),
        onTap: (index) {
          context.read<ScrapBlocY>().add(TabScrapEventY(tabIndex: index));
        },
        indicatorColor: ColorItems.primary,
        labelColor: ColorItems.white,
        labelStyle: TextItems.heading4
            .copyWith(fontWeight: FontWeight.w700, fontSize: 14),
        tabs: [tabs('리스트'), tabs("상담 신청 내역")],
      ),
    );
  }

  Widget tabs(String text) {
    return Container(
      height: 32,
      width: 104,
      alignment: Alignment.center,
      child: Tab(
        text: text,
      ),
    );
  }

  Widget fab() {
    return SizedBox(
      width: 268,
      height: 54,
      child: FittedBox(
        child: FloatingActionButton.extended(
          onPressed: () {
            if (context.read<ScrapBlocY>().state.isScraped == false) {
            } else {
              int totalPrice = 0;
              if (context
                  .read<ScrapBlocY>()
                  .state
                  .notifiyModelList
                  .where((element) => element.vendorCode == 1100)
                  .isNotEmpty) {
                totalPrice += context
                    .read<ScrapBlocY>()
                    .state
                    .notifiyModelList
                    .firstWhere((element) => element.vendorCode == 1100)
                    .scrapItem
                    .totalPrice
                    .toInt();
              }
              context
                  .read<ScrapBlocY>()
                  .state
                  .notifiyModelList
                  .where((element) => element.value == true)
                  .forEach((element) {
                totalPrice += element.scrapItem.vendorItem.price.toInt();
              });

              List<NotifiyModel> nmList = context
                  .read<ScrapBlocY>()
                  .state
                  .notifiyModelList
                  .where((element) => element.value == true)
                  .toList();
              // showModalBottomSheet(
              //     shape: const RoundedRectangleBorder(
              //         borderRadius:
              //             BorderRadius.vertical(top: Radius.circular(25.0))),
              //     backgroundColor: Colors.white,
              //     context: context,
              //     useSafeArea: true,
              //     isScrollControlled: true,
              //     builder: (_) => BlocProvider.value(
              //           value: BlocProvider.of<ScrapBlocY>(context),
              //           child: ScrapBottomModalFirst(
              //               totalPrice: totalPrice, nmList: nmList),
              //         ));
            }
          },
          label: Text(
            '견적 확인하기',
            style: TextItems.heading3.copyWith(color: Colors.white),
          ),
          icon: SizedBox(
              width: 55,
              height: 55,
              child: Center(
                child: Images.getIcon('Icon_scrap.png'),
              )),
          backgroundColor: context.read<ScrapBlocY>().state.isScraped
              ? ColorItems.primary
              : ColorItems.mistyRose,
          extendedPadding:
              const EdgeInsets.only(left: 40, right: 40, top: 20, bottom: 20),
        ),
      ),
    );
  }
}
