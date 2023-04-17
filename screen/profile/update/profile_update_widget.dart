import 'dart:ffi';

import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_rounded_date_picker/flutter_rounded_date_picker.dart';
import 'package:flutter_tags_x/flutter_tags_x.dart';

import 'package:intl/intl.dart';
import 'package:table_calendar/table_calendar.dart';
import 'package:weddynew/common/widget_extensions.dart';
import 'package:weddynew/screen/profile/update/profile_update_page.dart';
import 'package:weddynew/screen/profile/update/model/agree_model.dart';
import 'package:weddynew/screen/profile/update/widget/region_modal.dart';

import '../../../base/base_stateless_widget.dart';
import '../../../common/dummy_data.dart';

import '../../../model/division.dart';
import '../../../model/user_profile.dart';
import '../../../provider/boolean_provider.dart';
import '../../../provider/generic_provider.dart';
import '../../../resources/Colors.dart';
import '../../../resources/Images.dart';
import '../../../resources/Text.dart';
import '../bloc/profile_bloc.dart';
import '../bloc/profile_display_type.dart';
import '../bloc/profile_event.dart';

class ProfileUpdateWidget extends BaseStatelessWidget {
  final ProfileUpdateArgs args;
  ProfileUpdateWidget(this.displayType, {Key? key, required this.args})
      : super(key: key);

  final ProfileDisplayType displayType;
  final nameProvider = GenericProvider<String>();
  final buttonEnableProvider = BooleanProvider();

  final TextEditingController scheduleEditingController =
      TextEditingController();

  final TextEditingController placeEditingController = TextEditingController();

  final TextEditingController budgetEditingController = TextEditingController();

  final TextEditingController guestEditingController = TextEditingController();

  final TextEditingController weddingStyleEditingController =
      TextEditingController();

  final TextEditingController marketingController = TextEditingController();

  final genderProvider = GenericProvider<int>(initValue: 0);
  final marketingProvider = GenericProvider<int>(initValue: -1);

  bool value = false;

  final allAgree = AgreeServiceModel(text: '전체 약관 동의', isRequired: false);
  final agreeServices = [
    AgreeServiceModel(text: '(필수) 이용약관 동의', isRequired: true),
    AgreeServiceModel(text: '(필수) 개인정보 수집 및 이용 동의', isRequired: true),
    AgreeServiceModel(text: '(필수) 만 14세 이상입니다.', isRequired: true),
  ];

  final allChoiceAgree =
      AgreeServiceModel(text: '(선택) 마케팅 정보 수신', isRequired: false);
  final allChoiceAgrees = [
    AgreeServiceModel(text: 'SMS', isRequired: false),
    AgreeServiceModel(text: '이메일', isRequired: false),
  ];

  @override
  Widget build(BuildContext context) {
    final bloc = context.read<ProfileBloc>();
    final theme = Theme.of(context);
    final oldCheckboxTheme = theme.checkboxTheme;

    final newCheckBoxTheme = oldCheckboxTheme.copyWith(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
    );

    return Center(
      child: Padding(
          padding: const EdgeInsets.fromLTRB(18, 20, 18, 20),
          child: ListView(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              children: <Widget>[
                createNameTextWidget(context),
                const SizedBox(height: 14),
                decidingText(context),
                const SizedBox(height: 30),
                createGenderWidget(context, bloc),
                const SizedBox(height: 30),
                createScheduleTextField(context),
                const SizedBox(height: 20),
                createPlaceTextField(context, bloc),
                const SizedBox(height: 20),
                createBudgetTextField(context),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 8.0, right: 8, top: 10, bottom: 10),
                  child: Images.getIcon('Divider.png', width: 2),
                ),
                GenericProvider.createWidget<int>(
                  provider: marketingProvider,
                  (state) => StatefulBuilder(
                      builder: (BuildContext context, StateSetter setState) {
                    return Column(
                      children: [
                        allCheckText(
                            allAgree, newCheckBoxTheme, theme, setState),
                        ListView(
                          padding: EdgeInsets.zero,
                          shrinkWrap: true,
                          physics: const NeverScrollableScrollPhysics(),
                          children: [
                            ...agreeServices
                                .map((e) => checkText(
                                    model: e,
                                    newCheckBoxTheme,
                                    theme,
                                    setState))
                                .toList()
                          ],
                        ),

                        allCheckText(
                            allChoiceAgree, newCheckBoxTheme, theme, setState),
                        const SizedBox(
                          height: 8,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Expanded(
                                child: checkText(
                                    model: allChoiceAgrees.first,
                                    newCheckBoxTheme,
                                    theme,
                                    setState)),
                            Expanded(
                                child: checkText(
                                    model: allChoiceAgrees.last,
                                    newCheckBoxTheme,
                                    theme,
                                    setState)),
                            const SizedBox(
                              width: 80,
                            )
                          ],
                        ),
                        //)
                      ],
                    );
                  }),
                ),
                const SizedBox(height: 15),
                introduction('(선택) 항목에 동의하지 않아도 서비스 이용이 가능합니다.'),
                const SizedBox(height: 6),
                introduction('예약 및 결제 관련 정보는 수신 동의 여부와 관계없이 발송됩니다.'),
                const SizedBox(height: 6),
                introduction('App Push 수신 동의 상태는 앱 내 설정 메뉴에서 변경할 수 있습니다.'),
                const SizedBox(height: 20),
                BlocProvider.value(
                    value: BlocProvider.of<ProfileBloc>(context),
                    child: createCompleteButton(context))
              ])),
    );
  }

  void updateMarketing() async {
    int? x;
    if (agreeServices.every((element) => element.isChecked == true)) {
      x = 0;
      if (allChoiceAgrees.every((element) => element.isChecked == true)) {
        x = 1;
      } else {
        allChoiceAgrees
            .where((element) => element.isChecked == true)
            .forEach((element) {
          if (element.text == "SMS") {
            x = 2;
          } else if (element.text == "이메일") {
            x = 3;
          } else {
            x = -1;
          }
        });
      }
    } else {
      x = -1;
    }

    marketingProvider.setValue(x);
    buttonEnableProvider.setValue(availableCheck());
  }

  void updateData(UserProfile profile) async {
    if (profile.name != null && profile.name!.isNotEmpty) {
      nameProvider.setValue(profile.name!);
    }

    if (profile.ceremonyDate != null) {
      DateFormat formatter = DateFormat('yyyy-MM-dd');
      scheduleEditingController.text = formatter.format((DateTime(
          profile.ceremonyDate!.year,
          profile.ceremonyDate!.month,
          profile.ceremonyDate!.day)));
    }

    if (profile.divisionCode != null &&
        profile.divisionCode! > 0 &&
        profile.divisionCode! < 99) {
      placeEditingController.text =
          DummyData.getDivisions()[profile.divisionCode! - 1].displayName;
    }

    if (profile.weddingBudget > 0) {
      budgetEditingController.text = "${profile.weddingBudget ~/ 10000}";
    }
    if (profile.hasPush) {}

    buttonEnableProvider.setValue(availableCheck());
  }

  Widget createNameTextWidget(context) {
    return Row(children: [
      AutoSizeText(args.name ?? '',
          style: TextItems.heading3.copyWith(
              fontSize: 18,
              fontWeight: FontWeight.w700,
              color: ColorItems.spaceCadet)),
      Text("님 기본 정보를 입력해주세요.",
          style: TextItems.body1.copyWith(
              fontSize: 16,
              fontWeight: FontWeight.w400,
              color: ColorItems.spaceCadet))
    ]);
  }

  Widget decidingText(context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          '확정된 정보가 아니어도 괜찮아요.',
          style: TextItems.body2.copyWith(
              fontSize: 14,
              fontWeight: FontWeight.w400,
              color: ColorItems.spaceCadet),
        ),
        const SizedBox(
          height: 6,
        ),
        Text('나의 프로필에서 언제든지 변경할 수 있어요',
            style: TextItems.body2.copyWith(
                fontSize: 14,
                fontWeight: FontWeight.w400,
                color: ColorItems.spaceCadet)),
      ],
    );
  }

  Widget createScheduleTextField(context) {
    return widgetFactory.createDisabledTextField(context,
        suffix: Images.getIcon('icon_calendar',
            color: ColorItems.secondarySpanishGray),
        labelText: '결혼식 예정일 (필수)', onTap: () {
      showWeddingDatePicker(context);
    }, onChanged: (text) {
      buttonEnableProvider.setValue(availableCheck());
    }, textEditingController: scheduleEditingController);
  }

  Widget createPlaceTextField(BuildContext context, ProfileBloc bloc) {
    return widgetFactory.createDisabledTextField(context,
        suffix:
            Images.getIcon('icon_geo', color: ColorItems.secondarySpanishGray),
        labelText: placeEditingController.text.isEmpty
            ? '결혼식 지역 (필수)'
            : placeEditingController.text, onTap: () {
      showPlaceTags(context);
    }, onChanged: (text) {
      buttonEnableProvider.setValue(availableCheck());
    }, textEditingController: placeEditingController);
  }

  Widget createBudgetTextField(context) {
    return widgetFactory.createDefaultTextField(context,
        labelText: '결혼식 예산 금액 (필수)',
        suffix: Text(
          '만원',
          style: TextItems.title8.copyWith(
              color: ColorItems.secondarySpanishGray,
              fontWeight: FontWeight.w700,
              fontSize: 16),
        ),
        inputType: TextInputType.number, onChanged: (text) {
      buttonEnableProvider.setValue(availableCheck());
    }, textEditingController: budgetEditingController);
  }

  void updateGender(int genderCode) {
    genderProvider.setValue(genderCode);
    buttonEnableProvider.setValue(availableCheck());
  }

  Widget createGenderWidget(BuildContext context, ProfileBloc bloc) {
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

  Widget introduction(String text) {
    return Padding(
      padding: const EdgeInsets.only(left: 12.0, right: 12),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            '*',
            style: TextItems.title7.copyWith(
                fontSize: 12,
                fontWeight: FontWeight.w700,
                color: ColorItems.primary),
          ),
          const SizedBox(
            width: 12,
          ),
          Expanded(
            child: Text(
              text,
              style: TextItems.heading5.copyWith(
                  fontSize: 12,
                  fontWeight: FontWeight.w400,
                  color: ColorItems.spaceCadet),
            ),
          )
        ],
      ),
    );
    ;
  }

  Widget createCompleteButton(BuildContext context) {
    return BooleanProvider.createWidget(provider: buttonEnableProvider,
        (state) {
      return Padding(
        padding: const EdgeInsets.only(left: 42.0, right: 42),
        child: widgetFactory.createDefaultButton(context,
            text: '웨디 시작하기',
            onPressed: state.value
                ? () {
                    ProfileBloc bloc = context.read<ProfileBloc>();
                    String division = placeEditingController.text;
                    int? divisionCode = bloc.state.profile.divisionCode;
                    String guestCount = guestEditingController.text;
                    String budget = budgetEditingController.text;

                    DummyData.getDivisions().forEach((element) {
                      if (element.displayName == division) {
                        divisionCode = element.code;
                      }
                    });
                    // String dateTime = scheduleEditingController.text
                    //     .replaceAll(RegExp('[^0-9]'), '');
                    // debugPrint(dateTime);
                    bloc.add(UpdateProfileEvent(
                        email: args.email!,
                        name: args.name!,
                        id: args.id!,
                        password: args.password!,
                        phoneNumber: args.phoneNumber,
                        relationshipCode: genderProvider.value,
                        userProfile: bloc.state.profile.copyWith(
                          // hasPush: marketingProvider.value,

                          name: args.name,
                          ceremonyDate: dt,
                          divisionCode: divisionCode,
                          relationShipCode: genderProvider.value,
                          weddingBudget:
                              budget.isNotEmpty ? int.parse(budget) * 10000 : 0,
                        ),
                        displayType: displayType));
                  }
                : null),
      );
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
                        SizedBox(
                          width: MediaQuery.of(context).size.width * .95,
                          height: MediaQuery.of(context).size.height * .4,
                          child:
                              // Text("hello world"),
                              TableCalendar(
                            locale: 'ko_KR',
                            selectedDayPredicate: (day) => isSameDay(day, dt),
                            shouldFillViewport: true,
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
                                  DateFormat formatter = DateFormat('yy.MM.dd');
                                  dt = focusedDay;
                                  selectedDay = selectedDay;

                                  scheduleEditingController.text =
                                      formatter.format(dt!);
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

  DateTime? dt;
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

  void showTags(context, String title, int itemCount,
      TextEditingController controller, GetTagName tagName) {
    screenCommonWidget.showBottomSheet(context,
        title: title,
        contents: Tags(
          itemCount: itemCount,
          itemBuilder: (index) {
            return ItemTags(
              index: index,
              title: tagName.call(index),
              onPressed: (item) {
                if (item.title != null) {
                  controller.text = item.title!;
                }
                Navigator.pop(context);
              },
            );
          },
        ));
  }

  bool availableCheck() {
    if (scheduleEditingController.text.trim().isEmpty) return false;
    if (placeEditingController.text.trim().isEmpty) return false;
    if (budgetEditingController.text.trim().isEmpty ||
        int.parse(budgetEditingController.text) == 0) return false;
    if (genderProvider.value == 0) return false;
    if (marketingProvider.value == -1) return false;

    return true;
  }

//updateMarketing
  Widget checkText(
      CheckboxThemeData newCheckBoxTheme, ThemeData theme, StateSetter setState,
      {required AgreeServiceModel model}) {
    return Theme(
      data: theme.copyWith(checkboxTheme: newCheckBoxTheme),
      child: CheckboxListTile(
        controlAffinity: ListTileControlAffinity.leading,
        value: model.isChecked,
        onChanged: (value) {
          if (agreeServices.contains(model)) {
            setState(() {
              this.value = value!;
              final newValue = !model.isChecked!;
              model.isChecked = newValue;

              if (!newValue) {
                allAgree.isChecked = false;
              } else {
                final allow =
                    agreeServices.every((element) => element.isChecked == true);
                debugPrint(allow.toString());
                if (allow) {
                  allAgree.isChecked = allow;
                }
              }
            });
          } else {
            setState(() {
              this.value = value!;
              final newValue = !model.isChecked!;
              model.isChecked = newValue;
              if (model.isChecked == true) {
                allChoiceAgree.isChecked = true;
              }
              if (allChoiceAgrees
                  .every((element) => element.isChecked == false)) {
                allChoiceAgree.isChecked = false;
              }
            });
          }
          updateMarketing();
        },
        title: Text(model.text),
      ),
    );
  }

  Widget allCheckText(
      AgreeServiceModel model,
      CheckboxThemeData newCheckBoxTheme,
      ThemeData theme,
      StateSetter setState) {
    return Theme(
      data: theme.copyWith(checkboxTheme: newCheckBoxTheme),
      child: CheckboxListTile(
          checkColor: ColorItems.white,
          controlAffinity: ListTileControlAffinity.leading,
          title: Text(model.text),
          value: model.isChecked,
          onChanged: (value) {
            if (model.text == allAgree.text) {
              this.value = value!;
              final newValue = !model.isChecked!;
              setState(() {
                allAgree.isChecked = newValue;
                agreeServices.forEach((element) {
                  element.isChecked = newValue;
                });

                // allChoiceAgree.isChecked = newValue;
                // allChoiceAgrees.forEach((element) {
                //   element.isChecked = newValue;
              });
              // });
            } else {
              this.value = value!;
              final newValue = !model.isChecked!;
              setState(() {
                allChoiceAgree.isChecked = newValue;
                allChoiceAgrees.forEach((element) {
                  element.isChecked = newValue;
                });
              });
            }
            updateMarketing();
          }),
    );
  }
}
