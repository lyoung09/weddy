import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_switch/flutter_switch.dart';
import 'package:get/get.dart';

import 'package:shared_preferences/shared_preferences.dart';
import 'package:syncfusion_flutter_sliders/sliders.dart';
import 'package:weddynew/dao/user_profile_dao.dart';
import 'package:weddynew/screen/home/category/detail/vendor_detail_page.dart';

import 'package:weddynew/screen/home/simulation/bloc/simulation_bloc.dart';
import 'package:weddynew/utils/custom_slider_color.dart';
import 'package:weddynew/utils/custom_string.dart';

import '../../../model/user_profile.dart';
import '../../../resources/Colors.dart';
import '../../../resources/Images.dart';
import '../../../resources/Text.dart';
import 'bloc/simulation_event.dart';
import 'bloc/simulation_state.dart';
import 'model/notification_simulation.dart';

class SimulationList extends StatefulWidget {
  final SimulationState state;
  const SimulationList({Key? key, required this.state}) : super(key: key);

  @override
  State<SimulationList> createState() => _SimulationListState();
}

class _SimulationListState extends State<SimulationList> {
  double? slidePercent;
  List<String>? simulation;
  int? totalPrice;
  bool? allCheck;
  final TextEditingController _mybudgetController = TextEditingController();
  @override
  initState() {
    //_mybudgetController.text = widget.state.myBudget.toString();

    check();
    super.initState();
  }

  check() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    slidePercent = prefs.getDouble('slide') ?? 50.0;
    simulation = prefs.getStringList('simulation') ?? [];
    allCheck = prefs.getBool('allCheck') ?? false;
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider.value(
      value: BlocProvider.of<SimulationBloc>(context),
      child: Column(
        children: [
          simulationHeader(context),
          const SizedBox(
            height: 30,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 12.0, right: 12),
            child: slide(),
          ),
          const SizedBox(
            height: 8,
          ),
          Images.getIcon('Divider.png'),
          const SizedBox(
            height: 8,
          ),
          selectedText(
              widget.state.notificationCategory
                  .where((element) => element.value == true)
                  .length,
              widget.state.notificationCategory),
          Container(
            alignment: Alignment.center,
            padding: const EdgeInsets.only(
              left: 12,
              right: 12,
            ),
            child: selectedListView(widget.state.notificationCategory.toList()),
          ),
          unSelectedText(widget.state.notificationCategory
              .where((element) => element.value == false)
              .length),
          Container(
              alignment: Alignment.center,
              padding: const EdgeInsets.only(
                left: 12,
                right: 12,
              ),
              child: unSelectedListView(widget.state.notificationCategory
                  .where((element) => element.value == false)
                  .toList())),
        ],
      ),
    );
  }

  Widget simulationHeader(BuildContext context2) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.9,
      height: 140,
      alignment: Alignment.center,
      child: Card(
        elevation: 4,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(42),
        ),
        child: Column(
          children: [
            const SizedBox(
              height: 10,
            ),
            SizedBox(
              height: 60,
              child: Row(
                children: [
                  const SizedBox(
                    width: 45,
                  ),
                  Text("My 예산",
                      style: TextItems.heading4.copyWith(
                          fontSize: 14,
                          fontWeight: FontWeight.w700,
                          color: ColorItems.spaceCadet)),
                  const Spacer(),
                  Text(
                      context2.read<SimulationBloc>().state.myBudget == 0
                          ? '0'
                          : '${CustomString().pirceToStringKorean(context2.read<SimulationBloc>().state.myBudget)}',
                      style: TextItems.heading4.copyWith(
                          fontSize: 14,
                          fontWeight: FontWeight.w700,
                          color: ColorItems.spaceCadet)),
                  const SizedBox(
                    width: 8,
                  ),
                  GestureDetector(
                      onTap: () {
                        showDialog(
                            context: context,
                            builder: (context) => BlocProvider.value(
                                  value:
                                      BlocProvider.of<SimulationBloc>(context2),
                                  child: _showDialog(context2),
                                ));
                      },
                      child: Images.getIcon('Icon_modify.png', width: 17.5)),
                  const SizedBox(
                    width: 45,
                  ),
                ],
              ),
            ),
            Container(
              height: 50,
              width: MediaQuery.of(context).size.width * .8,
              alignment: Alignment.center,
              decoration: const BoxDecoration(
                  color: ColorItems.cultured,
                  borderRadius: BorderRadius.all(
                    Radius.circular(18),
                  )),
              child: Row(
                children: [
                  const SizedBox(
                    width: 32,
                  ),
                  Text("현재 제안가",
                      style: TextItems.heading3.copyWith(
                          fontSize: 18,
                          fontWeight: FontWeight.w700,
                          color: ColorItems.spaceCadet)),
                  const Spacer(),
                  Text(
                      widget.state.totalAmount == 0
                          ? ''
                          : '${CustomString().pirceToStringKorean(widget.state.totalAmount)}',
                      style: TextItems.heading3.copyWith(
                          fontSize: 18,
                          fontWeight: FontWeight.w700,
                          color: ColorItems.spaceCadet)),
                  const SizedBox(
                    width: 32,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget slide() {
    return SliderTheme(
      data: SliderThemeData(
        trackHeight: 12.0,
        thumbShape: const ThumbShape(),
        trackShape: const GradientRectSliderTrackShape(),
        valueIndicatorColor: ColorItems.rhythm,
        valueIndicatorTextStyle: TextItems.title7.copyWith(
            fontSize: 16, fontWeight: FontWeight.w700, color: ColorItems.white),
      ),
      child: Slider(
        label:
            slidePercent == null ? '' : '${slidePercent!.toStringAsFixed(1)}%',
        value: slidePercent ?? 50,
        inactiveColor: ColorItems.primary,
        thumbColor: Colors.white,
        //activeColor: ColorItems.wildBlueYonder,
        min: 0,
        max: 100,
        onChangeEnd: (value) {
          saveSlide(value);
          context
              .read<SimulationBloc>()
              .add(ChangeSimulationEvent(pricerate: slidePercent!));
        },
        onChanged: (value) {
          setState(() {
            slidePercent = value;
          });
        },
      ),
    );
  }

  Widget selectedText(int select, List<NotifySimulation> list) {
    return Container(
        height: 68,
        padding: const EdgeInsets.only(left: 24, right: 24),
        child: Row(
          children: [
            Text('선택된 카테고리 ($select/20)',
                style: TextItems.title8.copyWith(
                    fontWeight: FontWeight.w700,
                    fontSize: 16,
                    color: ColorItems.spaceCadet)),
            const Spacer(),
            ElevatedButton(
                style: ElevatedButton.styleFrom(
                    fixedSize: const Size(95, 32),
                    backgroundColor: allCheck == true
                        ? ColorItems.spaceCadet
                        : ColorItems.primary,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(24))),
                onPressed: () async {
                  setState(() {
                    allCheck = !allCheck!;
                  });
                  allCheckMethod(allCheck!, list);

                  context
                      .read<SimulationBloc>()
                      .add(AllCheckSimulationEvent(value: allCheck!));
                },
                child: Text(allCheck == true ? '선택 초기화' : '전체 선택',
                    style: TextItems.title7.copyWith(
                        fontWeight: FontWeight.w700,
                        fontSize: 12,
                        color: Colors.white)))
          ],
        ));
  }

  Widget selectedListView(List<NotifySimulation> notifySimulationList) {
    return Card(
        shape: RoundedRectangleBorder(
          side: BorderSide(
            color: ColorItems.grayx11,
          ),
          borderRadius: BorderRadius.circular(20.0), //<-- SEE HERE
        ),
        child: Padding(
          padding:
              const EdgeInsets.only(top: 16.0, bottom: 16, right: 8, left: 8),
          child: notifySimulationList
                  .where((element) => element.value == true)
                  .isEmpty
              ? Padding(
                  padding: const EdgeInsets.only(left: 12.0, right: 12),
                  child: Center(
                    child: Text(
                      "아직 선택된 카테고리가 없습니다.\n원하는 카테고리의 스위치를 켜 시뮬레이션을 진행해 보세요.",
                      maxLines: 3,
                      style: TextItems.body2.copyWith(
                          color: ColorItems.spaceCadet,
                          fontSize: 14,
                          fontWeight: FontWeight.w400),
                    ),
                  ),
                )
              : ListView.builder(
                  itemCount: notifySimulationList
                      .where((element) => element.value == true)
                      .length,
                  physics: const NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemBuilder: (context, count) {
                    List<NotifySimulation> ns = notifySimulationList
                        .where((element) => element.value == true)
                        .toList();

                    return Container(
                      height: ns[count].category.vendorServiceCode == 1100
                          ? 110
                          : 80,
                      margin: const EdgeInsets.symmetric(
                          vertical: 5, horizontal: 8),
                      decoration: const BoxDecoration(
                          color: ColorItems.platinum,
                          borderRadius: BorderRadius.all(Radius.circular(18))),
                      child: Row(children: [
                        const SizedBox(
                          width: 10,
                        ),
                        ClipRRect(
                          borderRadius:
                              const BorderRadius.all(Radius.circular(12)),
                          child: widget.state.simulationList.firstWhereOrNull(
                                          (element) =>
                                              element.vendorServiceCode ==
                                              ns[count]
                                                  .category
                                                  .vendorServiceCode) ==
                                      null ||
                                  widget.state.simulationList
                                      .firstWhereOrNull((element) =>
                                          element.vendorServiceCode ==
                                          ns[count].category.vendorServiceCode)!
                                      .itemImageUrl
                                      .isEmpty
                              ? Image.asset(
                                  'assets/icons/Graph_preparingPicture.png',
                                  width: 80,
                                  height: 60,
                                  fit: BoxFit.cover,
                                )
                              : Image.network(
                                  widget.state.simulationList
                                      .firstWhereOrNull((element) =>
                                          element.vendorServiceCode ==
                                          ns[count].category.vendorServiceCode)!
                                      .itemImageUrl,
                                  width: 80,
                                  height: 60,
                                  fit: BoxFit.cover,
                                  errorBuilder: (context, error, stackTrace) =>
                                      Image.asset(
                                    'assets/icons/Graph_preparingPicture.png',
                                    width: 80,
                                    height: 60,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                        ),
                        const SizedBox(
                          width: 12,
                        ),
                        Expanded(
                            flex: 8,
                            child: GestureDetector(
                              behavior: HitTestBehavior.translucent,
                              onTap: () {
                                Navigator.pushNamed(
                                    context, CategoryDetail.routeName,
                                    arguments: CategoryDetail(
                                      popIndex: 1,
                                      indexId: widget.state.simulationList
                                          .firstWhere((element) =>
                                              element.vendorServiceCode ==
                                              ns[count]
                                                  .category
                                                  .vendorServiceCode)
                                          .vendorProfileId
                                          .toInt(),
                                      category: context
                                          .read<SimulationBloc>()
                                          .state
                                          .cateogryList
                                          .firstWhere((element) =>
                                              element.vendorServiceCode ==
                                              ns[count]
                                                  .category
                                                  .vendorServiceCode),
                                    ));
                              },
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  const SizedBox(
                                    height: 3,
                                  ),
                                  widget.state.simulationList.firstWhereOrNull(
                                              (element) =>
                                                  element.vendorServiceCode ==
                                                  ns[count]
                                                      .category
                                                      .vendorServiceCode) ==
                                          null
                                      ? Text(
                                          ns[count].category.vendorServiceText,
                                          style: TextItems.body4.copyWith(
                                              color: ColorItems.spaceCadet,
                                              fontSize: 12,
                                              fontWeight: FontWeight.w400),
                                        )
                                      : Text(
                                          '${ns[count].category.vendorServiceText}- ${widget.state.simulationList.firstWhere((element) => element.vendorServiceCode == ns[count].category.vendorServiceCode).vendorName}',
                                          overflow: TextOverflow.ellipsis,
                                          style: TextItems.body4.copyWith(
                                              color: ColorItems.spaceCadet,
                                              fontSize: 12,
                                              fontWeight: FontWeight.w400),
                                        ),
                                  const SizedBox(
                                    height: 3,
                                  ),
                                  widget.state.simulationList.firstWhereOrNull(
                                                  (element) =>
                                                      element
                                                          .vendorServiceCode ==
                                                      ns[count]
                                                          .category
                                                          .vendorServiceCode) ==
                                              null ||
                                          ns[count]
                                                  .category
                                                  .vendorServiceCode ==
                                              1100
                                      ? const SizedBox(
                                          height: 0,
                                        )
                                      : Text(
                                          widget.state.simulationList
                                              .firstWhere((element) =>
                                                  element.vendorServiceCode ==
                                                  ns[count]
                                                      .category
                                                      .vendorServiceCode)
                                              .itemTitle,
                                          overflow: TextOverflow.ellipsis,
                                          style: TextItems.title7.copyWith(
                                              color: ColorItems.spaceCadet,
                                              fontSize: 12,
                                              fontWeight: FontWeight.w700)),
                                  const SizedBox(
                                    height: 3,
                                  ),
                                  ns[count].category.vendorServiceCode == 1100
                                      ? Text(
                                          CustomString().pirceToString(widget
                                                  .state.simulationList
                                                  .firstWhere((element) =>
                                                      element.vendorServiceCode ==
                                                      ns[count]
                                                          .category
                                                          .vendorServiceCode)
                                                  .itemPrice
                                                  .toInt() *
                                              200),
                                          style: TextItems.body4.copyWith(
                                              color: ColorItems.spaceCadet,
                                              fontSize: 12,
                                              fontWeight: FontWeight.w700))
                                      : widget.state.simulationList.firstWhereOrNull((element) => element.vendorServiceCode == ns[count].category.vendorServiceCode) ==
                                              null
                                          ? const SizedBox()
                                          : Text(CustomString().pirceToString(widget.state.simulationList.firstWhere((element) => element.vendorServiceCode == ns[count].category.vendorServiceCode).itemPrice.toInt()),
                                              style: TextItems.body4.copyWith(
                                                  color: ColorItems.spaceCadet,
                                                  fontSize: 12,
                                                  fontWeight: FontWeight.w700)),
                                  ns[count].category.vendorServiceCode == 1100
                                      ? Padding(
                                          padding:
                                              const EdgeInsets.only(top: 8.0),
                                          child: Wrap(
                                            children: [
                                              Text(
                                                '1인 식대 X 보증인원 200명\n보증인원은 200명으로 자동 책정됩니다.',
                                                style: TextItems.body2.copyWith(
                                                    fontSize: 9,
                                                    fontWeight: FontWeight.w400,
                                                    color:
                                                        ColorItems.spaceCadet),
                                              )
                                            ],
                                          ),
                                        )
                                      : const SizedBox(
                                          height: 3,
                                        ),
                                ],
                              ),
                            )),
                        const Spacer(),
                        FlutterSwitch(
                          activeColor: ColorItems.primary,
                          inactiveColor: Colors.white,
                          activeToggleColor: ColorItems.white,
                          height: 30,
                          inactiveToggleColor: ColorItems.secondarySpanishGray,
                          onToggle: (val) {
                            setState(() {
                              ns[count].value = val;
                            });

                            saveToggle(
                              ns[count].value,
                              ns[count].category.vendorServiceText,
                            );
                            widget.state.notificationCategory
                                .firstWhere((element) =>
                                    element.category.vendorServiceText ==
                                    ns[count].category.vendorServiceText)
                                .value = notifySimulationList[count].value;

                            context.read<SimulationBloc>().add(
                                ToggleSimulationEvent(
                                    vendorcode: notifySimulationList[count]
                                        .category
                                        .vendorServiceCode,
                                    value: notifySimulationList[count].value,
                                    notifylist:
                                        widget.state.notificationCategory));
                          },
                          value: ns[count].value,
                        ),
                        const SizedBox(
                          width: 12,
                        ),
                      ]),
                    );
                  }),
        ));
  }

  Widget unSelectedText(int unselect) {
    return Container(
        height: 60,
        padding: const EdgeInsets.only(left: 24, right: 24),
        child: Row(
          children: [
            Text('미선택 카테고리 (${unselect}/20)',
                style: TextItems.title8.copyWith(
                    fontWeight: FontWeight.w700,
                    fontSize: 16,
                    color: ColorItems.spaceCadet)),
            const Spacer()
          ],
        ));
  }

  Widget unSelectedListView(
    List<NotifySimulation> notifySimulationList,
  ) {
    return Card(
        shape: RoundedRectangleBorder(
          side: BorderSide(
            color: ColorItems.grayx11,
          ),
          borderRadius: BorderRadius.circular(20.0), //<-- SEE HERE
        ),
        child: Padding(
            padding:
                const EdgeInsets.only(top: 16.0, bottom: 16, right: 8, left: 8),
            child: ListView.builder(
                itemCount: notifySimulationList.length,
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemBuilder: (context, count) {
                  return Container(
                    height: 60,
                    margin:
                        const EdgeInsets.symmetric(vertical: 5, horizontal: 8),
                    decoration: const BoxDecoration(
                        color: ColorItems.platinum,
                        borderRadius: BorderRadius.all(Radius.circular(18))),
                    child: Row(children: [
                      const SizedBox(
                        width: 10,
                      ),
                      Text(
                          notifySimulationList[count]
                              .category
                              .vendorServiceText,
                          style: TextItems.title5.copyWith(
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                              color: ColorItems.spaceCadet)),
                      const Spacer(),
                      FlutterSwitch(
                        height: 30,
                        activeColor: ColorItems.primary,
                        inactiveColor: Colors.white,
                        activeToggleColor: ColorItems.white,
                        inactiveToggleColor: ColorItems.secondarySpanishGray,
                        onToggle: (val) {
                          setState(() {
                            notifySimulationList[count].value = val;
                          });

                          saveToggle(
                            notifySimulationList[count].value,
                            notifySimulationList[count]
                                .category
                                .vendorServiceText,
                          );

                          widget.state.notificationCategory
                              .firstWhere((element) =>
                                  element.category.vendorServiceText ==
                                  notifySimulationList[count]
                                      .category
                                      .vendorServiceText)
                              .value = notifySimulationList[count].value;
                          context.read<SimulationBloc>().add(
                              ToggleSimulationEvent(
                                  vendorcode: notifySimulationList[count]
                                      .category
                                      .vendorServiceCode,
                                  value: notifySimulationList[count].value,
                                  notifylist:
                                      widget.state.notificationCategory));
                        },
                        value: notifySimulationList[count].value,
                      ),
                      const SizedBox(
                        width: 12,
                      ),
                    ]),
                  );
                })));
  }

  saveToggle(bool value, String text) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    List<String> ns = prefs.getStringList('simulation') ?? [];
    if (value) {
      ns.add(text);
    } else {
      debugPrint("hello");
      ns.removeWhere((element) => element == text);
      prefs.setBool('allCheck', false);
      setState(() {
        allCheck = false;
      });
    }
    prefs.setStringList('simulation', ns);
  }

  allCheckMethod(bool value, List<NotifySimulation> list) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    List<String> ns = prefs.getStringList('simulation') ?? [];
    if (allCheck == true) {
      list.forEach((element) {
        element.value = true;
        ns.add(element.category.vendorServiceText);
      });

      widget.state.notificationCategory.forEach((element) {
        element.value = true;
      });

      prefs.setBool('allCheck', true);
      prefs.setStringList('simulation', ns);
    } else {
      widget.state.notificationCategory.forEach((element) {
        element.value = false;
      });
      prefs.setStringList('simulation', []);
      prefs.setBool('allCheck', false);
    }
  }

  saveSlide(double price) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setDouble('slide', price);
  }

  _showDialog(BuildContext context2) {
    if (context2.read<SimulationBloc>().state.myBudget > 10000) {
      _mybudgetController.text = context2
          .read<SimulationBloc>()
          .state
          .myBudget
          .toString()
          .substring(
              0,
              context2.read<SimulationBloc>().state.myBudget.toString().length -
                  4);
    } else {
      _mybudgetController.text =
          context2.read<SimulationBloc>().state.myBudget.toString();
    }
    return AlertDialog(
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(18.0))),
        content: SizedBox(
          width: 260,
          height: 250,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              const SizedBox(
                height: 12,
              ),
              Container(
                width: 232,
                height: 34,
                padding: const EdgeInsets.only(left: 12, right: 12),
                child: Center(
                  child: Text(
                    '예산 수정하기',
                    textAlign: TextAlign.center,
                    style: TextItems.heading3.copyWith(
                        color: ColorItems.spaceCadet,
                        fontSize: 18,
                        fontWeight: FontWeight.w700),
                  ),
                ),
              ),
              Container(
                height: 60,
                alignment: Alignment.center,
                width: MediaQuery.of(context).size.width * 0.6,
                child: Row(
                  children: [
                    Expanded(
                      child: TextFormField(
                        controller: _mybudgetController,
                        textAlign: TextAlign.end,
                        decoration: const InputDecoration(
                          enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(
                                color: ColorItems.secondarySpanishGray),
                          ),
                          focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(
                                color: ColorItems.secondarySpanishGray),
                          ),
                        ),
                        keyboardType: TextInputType.number,
                        validator: (String? value) {
                          setState(() {
                            _mybudgetController.text = value!;
                          });
                          return null;
                        },
                      ),
                    ),
                    Text('만원',
                        style: TextItems.heading4.copyWith(
                            color: ColorItems.spaceCadet,
                            fontSize: 14,
                            fontWeight: FontWeight.w700))
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                  alignment: Alignment.center,
                  height: 55,
                  child: Text('수정하신 결혼식 예산 금액은 ‘나의 프로필’에도 자동 적용됩니다.',
                      maxLines: 2,
                      style: TextItems.title5.copyWith(
                          color: ColorItems.spaceCadet,
                          fontSize: 14,
                          fontWeight: FontWeight.w500))),
              Row(
                children: [
                  const SizedBox(
                    width: 20,
                  ),
                  ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          backgroundColor: ColorItems.secondarySpanishGray,
                          fixedSize: const Size(100, 32),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(18))),
                      child: Text(
                        '취소',
                        style: TextItems.title5.copyWith(
                            color: ColorItems.spaceCadet, fontSize: 14),
                      ),
                      onPressed: () {
                        setState(() {
                          _mybudgetController.text = '';
                        });
                        Navigator.of(context).pop();
                      }),
                  const SizedBox(
                    width: 10,
                  ),
                  ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          backgroundColor: ColorItems.primary,
                          fixedSize: const Size(100, 32),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(18))),
                      child: Text(
                        '확인',
                        style: TextItems.title5
                            .copyWith(color: ColorItems.white, fontSize: 14),
                      ),
                      onPressed: () {
                        if (int.parse(_mybudgetController.text) <= 1) {
                          Navigator.pop(context);
                          showDialog(
                            context: context,
                            builder: (context) => AlertDialog(
                              shape: const RoundedRectangleBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(18.0))),
                              content: SizedBox(
                                width: 260,
                                height: 130,
                                child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  children: <Widget>[
                                    const SizedBox(
                                      height: 12,
                                    ),
                                    Container(
                                      width: 232,
                                      height: 54,
                                      padding: const EdgeInsets.only(
                                          left: 12, right: 12),
                                      child: Center(
                                        child: Text(
                                          "예산은 1만원 이상 입력 가능합니다. 금액을 다시 입력해주세요.",
                                          textAlign: TextAlign.center,
                                          style: TextItems.title7.copyWith(
                                              color: ColorItems.spaceCadet,
                                              fontSize: 14),
                                        ),
                                      ),
                                    ),
                                    const SizedBox(
                                      height: 10,
                                    ),
                                    ElevatedButton(
                                        style: ElevatedButton.styleFrom(
                                            backgroundColor:
                                                ColorItems.spaceCadet,
                                            fixedSize: const Size(72, 28),
                                            shape: RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(18))),
                                        child: Text(
                                          '확인',
                                          style: TextItems.title5.copyWith(
                                              color: ColorItems.white,
                                              fontSize: 14),
                                        ),
                                        onPressed: () {
                                          Navigator.of(context).pop();
                                        }),
                                  ],
                                ),
                              ),
                            ),
                          );
                        } else {
                          int t = int.parse(_mybudgetController.text) * 10000;

                          context2
                              .read<SimulationBloc>()
                              .add(BudgetChangeSimulationEvent(mybudget: t));

                          Navigator.of(context).pop();
                        }
                      }),
                  const SizedBox(
                    width: 20,
                  ),
                ],
              ),
            ],
          ),
        ));
  }
}

LinearGradient gradient = LinearGradient(colors: <Color>[
  ColorItems.primary,

  ColorItems.primary,
  // Colors.green,
  // Colors.blue,
  // Colors.pink,
  // Colors.purple
]);
