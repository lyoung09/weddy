import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_rounded_date_picker/flutter_rounded_date_picker.dart';
import 'package:flutter_tags_x/flutter_tags_x.dart';

import 'package:intl/intl.dart';
import 'package:weddynew/common/widget_extensions.dart';
import 'package:weddynew/screen/profile/update/profile_update_page.dart';

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
  ProfileUpdateWidget(this.displayType, {Key? key}) : super(key: key);

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

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.fromLTRB(24, 86, 24, 92),
        child: Stack(
          children: [
            Column(mainAxisSize: MainAxisSize.max, children: <Widget>[
              createNameTextWidget(context),
              const SizedBox(height: 30),
              createScheduleTextField(context),
              const SizedBox(height: 20),
              createPlaceTextField(context),
              const SizedBox(height: 20),
              createBudgetTextField(context),
              const SizedBox(height: 20).visibleOrGone(displayType.isUpdate),
              createGuestTextField(context).visibleOrGone(displayType.isUpdate),
              const Spacer(),
              createCompleteButton(context)
            ])
          ],
        ));
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

    if (profile.numberOfGuest > 0) {
      guestEditingController.text = "${profile.numberOfGuest}";
    }

    if (profile.weddingBudget > 0) {
      budgetEditingController.text = "${profile.weddingBudget ~/ 10000}";
    }

    buttonEnableProvider.setValue(availableCheck());
  }

  Widget createNameTextWidget(context) {
    final theme = Theme.of(context);
    return GenericProvider.createWidget<String>(provider: nameProvider,
        (state) {
      return state.value != null
          ? Row(children: [
              AutoSizeText(state.value!, style: theme.textTheme.headline3),
              Text("님 기본 정보를 입력해주세요.", style: theme.textTheme.bodyText1)
            ])
          : const SizedBox();
    });
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

  Widget createPlaceTextField(context) {
    return widgetFactory.createDisabledTextField(context,
        suffix:
            Images.getIcon('icon_geo', color: ColorItems.secondarySpanishGray),
        labelText: '결혼식 지역 (필수)', onTap: () {
      showPlaceTags(context);
    }, onChanged: (text) {
      buttonEnableProvider.setValue(availableCheck());
    }, textEditingController: placeEditingController);
  }

  Widget createBudgetTextField(context) {
    return widgetFactory.createDefaultTextField(context,
        labelText: '결혼식 예산 금액 (필수)',
        suffixText: '만원',
        inputType: TextInputType.number, onChanged: (text) {
      buttonEnableProvider.setValue(availableCheck());
    }, textEditingController: budgetEditingController);
  }

  Widget createGuestTextField(context) {
    return widgetFactory.createDefaultTextField(context,
        labelText: '예상 하객 수',
        inputType: TextInputType.number,
        textEditingController: guestEditingController);
  }

  Widget createCompleteButton(BuildContext context) {
    return BooleanProvider.createWidget(provider: buttonEnableProvider,
        (state) {
      return widgetFactory.createDefaultButton(context,
          text: '입력 완료',
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

                  bloc.add(UpdateProfileEvent(
                      userProfile: bloc.state.profile.copyWith(
                        ceremonyDate:
                            DateTime.parse(scheduleEditingController.text),
                        divisionCode: divisionCode,
                        numberOfGuest:
                            guestCount.isNotEmpty ? int.parse(guestCount) : 0,
                        weddingBudget:
                            budget.isNotEmpty ? int.parse(budget) * 10000 : 0,
                      ),
                      displayType: displayType));
                }
              : null);
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

      // builder: (context, child) => Theme(
      //     data: Theme.of(context).copyWith(
      //         colorScheme: const ColorScheme.light(
      //             primary: ColorItems.primary,
      //             onPrimary: ColorItems.secondarySpaceCadet,
      //             onSurface: ColorItems.secondarySpaceCadet)),
      //     child: child!),
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
        DateFormat formatter = DateFormat('yy.MM.dd');
        scheduleEditingController.text = formatter.format(date);
      }
    });
  }

  void showPlaceTags(context) async {
    List<Division> cityList = DummyData.getDivisions();

    screenCommonWidget.showBottomSheet(context,
        visibleTopController: false,
        contents: SizedBox(
            height: 270,
            child: CupertinoPicker(
              diameterRatio: 10.0,
              itemExtent: 38,
              looping: true,
              squeeze: 1.3,
              selectionOverlay: CupertinoPickerDefaultSelectionOverlay(
                  background: ColorItems.salmon.withOpacity(0.3)),
              onSelectedItemChanged: (value) {
                placeEditingController.text = cityList[value].displayName;
              },
              children: cityList
                  .map((e) => Container(
                      height: 30,
                      margin: const EdgeInsets.symmetric(vertical: 10),
                      child: Center(
                          child: AutoSizeText(e.displayName,
                              style: TextItems.title3))))
                  .toList(),
            )));
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

    return true;
  }
}
