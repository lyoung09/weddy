import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rounded_date_picker/flutter_rounded_date_picker.dart';
import 'package:intl/intl.dart';
import 'package:table_calendar/table_calendar.dart';
import 'package:weddynew/common/widget_factory.dart';
import 'package:weddynew/screen/drawer/bloc/update_state.dart';
import 'package:weddynew/screen/home/young_timeline/bloc/timeline_state.dart';

import '../../../common/dummy_data.dart';
import '../../../model/division.dart';
import '../../../provider/generic_provider.dart';
import '../../../resources/Colors.dart';
import '../../../resources/Images.dart';
import '../../../resources/Text.dart';
import '../../profile/update/widget/region_modal.dart';

class UpdateScreen extends StatefulWidget {
  final TimeLineState state;
  const UpdateScreen({super.key, required this.state});

  @override
  State<UpdateScreen> createState() => _UpdateScreenState();
}

class _UpdateScreenState extends State<UpdateScreen> {
  final TextEditingController scheduleEditingController =
      TextEditingController();

  final TextEditingController placeEditingController = TextEditingController();

  final TextEditingController budgetEditingController = TextEditingController();

  final TextEditingController guestEditingController = TextEditingController();
  final genderProvider = GenericProvider<int>();
  DateTime? dt;
  List<Division> cityList = DummyData.getDivisions();
  void onStateChanged(BuildContext context, UpdateState state) {}

  @override
  initState() {
    super.initState();

    DateFormat formatter = DateFormat('yyyy.MM.dd');
    scheduleEditingController.text =
        formatter.format(widget.state.userProfile.ceremonyDate!);
    dt = widget.state.userProfile.ceremonyDate!;
    placeEditingController.text = cityList
        .firstWhere(
            (element) => element.code == widget.state.userProfile.divisionCode)
        .displayName;
    if (widget.state.userProfile.weddingBudget.toString().length > 5) {
      budgetEditingController.text = widget.state.userProfile.weddingBudget
          .toString()
          .substring(
              0, widget.state.userProfile.weddingBudget.toString().length - 4);
    } else {
      budgetEditingController.text =
          widget.state.userProfile.weddingBudget.toString();
    }
    genderProvider.setValue(widget.state.userProfile.relationShipCode);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: WidgetFactory().createDefaultAppBar(context, title: "기본 정보 수정"),
      body: SingleChildScrollView(
        physics: const AlwaysScrollableScrollPhysics(),
        child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 18,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 32.0),
                child: Text(
                  "계정 정보",
                  style: TextItems.title8.copyWith(
                      fontSize: 16,
                      fontWeight: FontWeight.w700,
                      color: ColorItems.spaceCadet),
                ),
              ),
              const SizedBox(
                height: 18,
              ),
              notChangeText('이름', widget.state.userProfile.name ?? ''),
              const SizedBox(
                height: 16,
              ),
              notChangeText('아이디', widget.state.userProfile.userId ?? ''),
              const SizedBox(
                height: 16,
              ),
              notChangeText(
                  '휴대폰번호',
                  widget.state.userProfile.phoneNumber == null
                      ? ''
                      : '${widget.state.userProfile.phoneNumber!}'),
              const SizedBox(
                height: 16,
              ),
              notChangeText('이메일', widget.state.userProfile.userEmail ?? ''),
              const SizedBox(height: 28),
              Padding(
                padding: const EdgeInsets.only(left: 32.0),
                child: Text(
                  "기본 정보(필수)",
                  style: TextItems.title8.copyWith(
                      fontSize: 16,
                      fontWeight: FontWeight.w700,
                      color: ColorItems.spaceCadet),
                ),
              ),
              const SizedBox(height: 24),
              createGenderWidget(context),
              const SizedBox(height: 24),
              Row(
                children: [
                  const SizedBox(
                    width: 20,
                  ),
                  Text(
                    "결혼 예정일",
                    style: TextItems.body2.copyWith(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        color: ColorItems.spaceCadet),
                  ),
                  const SizedBox(
                    width: 12,
                  ),
                  Expanded(child: createScheduleTextField(context)),
                ],
              ),
              const SizedBox(
                height: 18,
              ),
              Row(
                children: [
                  const SizedBox(
                    width: 20,
                  ),
                  Text("결혼식 지역",
                      style: TextItems.body2.copyWith(
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          color: ColorItems.spaceCadet)),
                  const SizedBox(
                    width: 12,
                  ),
                  Expanded(child: createPlaceTextField(context)),
                ],
              ),
              const SizedBox(
                height: 18,
              ),
              Row(
                children: [
                  const SizedBox(
                    width: 20,
                  ),
                  Text("총 예산 금액",
                      style: TextItems.body2.copyWith(
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          color: ColorItems.spaceCadet)),
                  const SizedBox(
                    width: 12,
                  ),
                  Expanded(child: createBudgetTextField(context)),
                ],
              ),
              budgetEditingController.text.isEmpty ||
                      budgetEditingController.text == '0'
                  ? Text("예산을 적어주세요")
                  : const SizedBox(),
              const SizedBox(
                height: 40,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Center(
                  child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          backgroundColor: ColorItems.spaceCadet,
                          padding: const EdgeInsets.only(
                              top: 14, bottom: 14, left: 40, right: 40),
                          fixedSize: const Size(268, 58),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(100))),
                      onPressed: () {},
                      child: Text(
                        "수정 완료",
                        style: TextItems.body3.copyWith(
                            fontSize: 18,
                            fontWeight: FontWeight.w700,
                            color: Colors.white),
                      )),
                ),
              )
            ]),
      ),
    );
  }

  Widget notChangeText(String noun, String text) {
    return Padding(
      padding: const EdgeInsets.only(left: 24.0, right: 24),
      child: Row(
        children: [
          const SizedBox(
            width: 30,
          ),
          Expanded(
            flex: 3,
            child: Text(
              noun,
              style: TextItems.body2.copyWith(
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                  color: ColorItems.spaceCadet),
            ),
          ),
          Expanded(
            flex: 7,
            child: Text(
              text,
              style: TextItems.title5.copyWith(
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                  color: ColorItems.spaceCadet),
            ),
          )
        ],
      ),
    );
  }

  Widget createScheduleTextField(context) {
    return WidgetFactory().createDefaultTextField(context,
        disable: true,
        suffix: Images.getIcon('icon_calendar',
            color: ColorItems.secondarySpanishGray), onTap: () {
      showWeddingDatePicker2(context);
    }, onChanged: (text) {}, textEditingController: scheduleEditingController);
  }

  Widget createPlaceTextField(
    BuildContext context,
  ) {
    return WidgetFactory().createDefaultTextField(context,
        disable: true,
        suffix:
            Images.getIcon('icon_geo', color: ColorItems.secondarySpanishGray),
        onTap: () {
      showPlaceTags(context);
    }, onChanged: (text) {}, textEditingController: placeEditingController);
  }

  Widget createBudgetTextField(context) {
    return WidgetFactory().createDefaultTextField(context,
        suffix: Text(
          '만원',
          style: TextItems.title8.copyWith(
              color: ColorItems.secondarySpanishGray,
              fontWeight: FontWeight.w700,
              fontSize: 16),
        ),
        inputType: TextInputType.number,
        onChanged: (text) {},
        textEditingController: budgetEditingController);
  }

  void updateGender(int genderCode) {
    genderProvider.setValue(genderCode);
  }

  Widget createGenderWidget(
    BuildContext context,
  ) {
    return GenericProvider.createWidget<int>(
        provider: genderProvider,
        (state) => Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Spacer(),
                GestureDetector(
                    onTap: () => updateGender(2),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        state.value == 2
                            ? Images.getIcon('graph_bride')
                            : Images.getIcon('graph_bride_gray'),
                        const SizedBox(height: 6),
                        AutoSizeText('신부',
                            style: TextItems.title7.copyWith(
                                color: state.value == 2
                                    ? ColorItems.spaceCadet
                                    : ColorItems.secondarySpanishGray))
                      ],
                    )),
                const Spacer(),
                GestureDetector(
                    onTap: () => updateGender(1),
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          state.value == 1
                              ? Images.getIcon('graph_groom')
                              : Images.getIcon('graph_groom_gray'),
                          const SizedBox(height: 6),
                          AutoSizeText('신랑',
                              style: TextItems.title7.copyWith(
                                  color: state.value == 1
                                      ? ColorItems.spaceCadet
                                      : ColorItems.secondarySpanishGray))
                        ])),
                const Spacer(),
              ],
            ));
  }

  void showPlaceTags(BuildContext context) async {
    showModalBottomSheet(
        context: context,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
            top: Radius.circular(25.0),
          ),
        ),
        builder: (_) {
          return RegionModal(controller: placeEditingController);
        });
  }

  void showWeddingDatePicker(context) async {
    DateTime now = DateTime.now();

    await showRoundedDatePicker(
      context: context,
      locale: const Locale("ko", "KR"),
      initialDate: now,
      firstDate: now,
      lastDate: DateTime(now.year + 10, 12),
      theme: ThemeData(
          primaryColor: ColorItems.white,
          accentColor: ColorItems.primary,
          colorScheme: const ColorScheme.light(
              primary: ColorItems.primary,
              onPrimary: ColorItems.primary,
              onSurface: ColorItems.primary)),
      styleDatePicker: MaterialRoundedDatePickerStyle(
          textStyleDayButton:
              const TextStyle(fontSize: 36, color: Colors.white),
          textStyleYearButton: const TextStyle(
            fontSize: 0,
            color: Colors.transparent,
          ),
          textStyleCurrentDayOnCalendar: TextStyle(color: ColorItems.primary)),
      borderRadius: 22,
      height: MediaQuery.of(context).size.height * .4,
    ).then((date) {
      if (date != null) {
        dt = date;
        DateFormat formatter = DateFormat('yy.MM.dd');
        scheduleEditingController.text = formatter.format(date);
      }
    });
  }

  void showWeddingDatePicker2(context) async {
    DateTime now = DateTime.now();
    showDialog(
        context: context,
        builder: (_) => StatefulBuilder(builder: (context, setstate) {
              return AlertDialog(
                shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(18.0))),
                content: SizedBox(
                    width: MediaQuery.of(context).size.width * .95,
                    height: MediaQuery.of(context).size.height * .5,
                    child: Column(
                      children: [
                        // click == true
                        //     ? SizedBox(
                        //         height: 300,
                        //         child: CupertinoDatePicker(
                        //           minimumYear: DateTime.now().year,
                        //           maximumYear: dt!.year + 10,
                        //           initialDateTime: dt,
                        //           maximumDate: DateTime(now.year + 10, 12),
                        //           onDateTimeChanged: (val) {
                        //             setstate(() {
                        //               setState(() {
                        //                 DateFormat formatter =
                        //                     DateFormat('yy.MM.dd');
                        //                 dt = val;

                        //                 scheduleEditingController.text =
                        //                     formatter.format(dt!);
                        //               });
                        //             });
                        //           },
                        //           mode: CupertinoDatePickerMode.date,
                        //         ),
                        //       )
                        //     :
                        SizedBox(
                          width: MediaQuery.of(context).size.width * .95,
                          height: MediaQuery.of(context).size.height * .4,
                          child:
                              // Text("hello world"),
                              TableCalendar(
                            locale: 'ko_KR',
                            selectedDayPredicate: (day) => isSameDay(day, dt),

                            shouldFillViewport: true,
                            // headerVisible: false,
                            focusedDay: dt!,
                            firstDay: now,
                            lastDay: DateTime(dt!.year + 10, 12),

                            headerStyle: HeaderStyle(
                                leftChevronIcon: Images.getIcon(
                                    'Icon_previousmonth_arrow.png'),
                                rightChevronIcon:
                                    Images.getIcon('Icon_nextmonth_arrow.png'),
                                leftChevronMargin: EdgeInsets.zero,
                                leftChevronPadding:
                                    const EdgeInsets.only(left: 5),
                                rightChevronMargin: EdgeInsets.zero,
                                rightChevronPadding:
                                    const EdgeInsets.only(right: 5),
                                titleCentered: true,
                                titleTextStyle: TextItems.title3.copyWith(
                                    color: ColorItems.primary,
                                    fontSize: 20,
                                    fontWeight: FontWeight.w700),
                                formatButtonVisible: false,
                                headerPadding:
                                    const EdgeInsets.only(bottom: 25)),

                            calendarStyle: CalendarStyle(
                              canMarkersOverflow: true,
                              disabledTextStyle: TextItems.title5.copyWith(
                                  color: ColorItems.secondarySpanishGray,
                                  fontSize: 14),
                              weekendTextStyle: TextItems.title5.copyWith(
                                  color: ColorItems.imperialRed, fontSize: 12),
                              holidayTextStyle: TextItems.title5.copyWith(
                                  color: ColorItems.imperialRed, fontSize: 12),
                              todayTextStyle: TextItems.title5.copyWith(
                                  color: ColorItems.spaceCadet, fontSize: 12),
                              defaultTextStyle: TextItems.title5.copyWith(
                                  color: ColorItems.spaceCadet, fontSize: 12),
                              selectedTextStyle: TextItems.title5.copyWith(
                                  color: ColorItems.spaceCadet, fontSize: 12),

                              // cellMargin: const EdgeInsets.only(
                              //     left: 4, right: 4, bottom: 4, top: 4),

                              selectedDecoration: const BoxDecoration(
                                color: ColorItems.primary,
                                shape: BoxShape.circle,
                              ),
                              todayDecoration: const BoxDecoration(
                                color: ColorItems.primary,
                                shape: BoxShape.circle,
                              ),
                            ),

                            onDaySelected: (selectedDay, focusedDay) {
                              if (!isSameDay(dt, selectedDay)) {
                                setstate(() {
                                  setState(() {
                                    DateFormat formatter =
                                        DateFormat('yy.MM.dd');
                                    dt = focusedDay;
                                    selectedDay = selectedDay;

                                    scheduleEditingController.text =
                                        formatter.format(dt!);
                                  });
                                });
                              }
                            },
                            calendarBuilders: CalendarBuilders(
                              dowBuilder: (context, day) {
                                if (day.weekday == DateTime.sunday ||
                                    day.weekday == DateTime.saturday) {
                                  return SizedBox(
                                    child: Center(
                                      child: Text(
                                        DateFormat.E('ko_KR').format(day),
                                        style: TextItems.body1.copyWith(
                                            color: ColorItems.imperialRed,
                                            fontSize: 13),
                                      ),
                                    ),
                                  );
                                } else {
                                  return Center(
                                    child: Text(
                                      DateFormat.E('ko_KR').format(day),
                                      style: TextItems.body1.copyWith(
                                          color: ColorItems.spaceCadet,
                                          fontSize: 13),
                                    ),
                                  );
                                }
                              },
                            ),
                          ),
                        ),
                        SizedBox(
                          height: MediaQuery.of(context).size.height * .08,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              TextButton(
                                  onPressed: () {
                                    setstate(() {
                                      setState(() {
                                        DateFormat formatter =
                                            DateFormat('yyyy.MM.dd');
                                        scheduleEditingController.text =
                                            formatter.format(widget.state
                                                .userProfile.ceremonyDate!);
                                        dt = widget
                                            .state.userProfile.ceremonyDate!;
                                      });
                                    });
                                    Navigator.pop(context);
                                  },
                                  child: const Text(
                                    '취소',
                                    style: TextStyle(
                                        color: ColorItems.primary,
                                        fontSize: 16,
                                        fontWeight: FontWeight.w600),
                                  )),
                              TextButton(
                                  onPressed: () {
                                    Navigator.pop(context);
                                  },
                                  child: const Text('확인',
                                      style: TextStyle(
                                          color: ColorItems.spaceCadet,
                                          fontSize: 16,
                                          fontWeight: FontWeight.w600))),
                            ],
                          ),
                        ),
                      ],
                    )),
              );
            }));
  }
}
