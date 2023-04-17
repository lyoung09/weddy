// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:weddynew/screen/profile/bloc/profile_bloc.dart';
// import 'package:weddynew/screen/profile/bloc/profile_event.dart';

// import '../../../../provider/boolean_provider.dart';
// import '../../../../provider/generic_provider.dart';
// import '../../../../resources/Colors.dart';

// // ignore: must_be_immutable
// class AgreeServiceWidget extends StatefulWidget {
//   final TextEditingController controller;
//   final BuildContext bloccontext;
//   final ProfileBloc bloc;
//   AgreeServiceWidget({
//     super.key,
//     required this.controller,
//     required this.bloc,
//     required this.bloccontext,
//   });

//   @override
//   State<AgreeServiceWidget> createState() => _AgreeServiceWidgetState();
// }

// class _AgreeServiceWidgetState extends State<AgreeServiceWidget> {
//   bool value = false;

//   final allAgree = AgreeServiceModel(text: '전체 약관 동의', isRequired: false);
//   final agreeServices = [
//     AgreeServiceModel(text: '(필수) 이용약관 동의', isRequired: true),
//     AgreeServiceModel(text: '(필수) 개인정보 수집 및 이용 동의', isRequired: true),
//     AgreeServiceModel(text: '(필수) 만 14세 이상입니다.', isRequired: true),
//   ];

//   final allChoiceAgree =
//       AgreeServiceModel(text: '(선택) 마케팅 정보 수신', isRequired: false);
//   final allChoiceAgrees = [
//     AgreeServiceModel(text: 'SMS', isRequired: false),
//     AgreeServiceModel(text: '이메일', isRequired: false),
//   ];

//   @override
//   Widget build(BuildContext context) {
//     final theme = Theme.of(context);
//     final oldCheckboxTheme = theme.checkboxTheme;

//     final newCheckBoxTheme = oldCheckboxTheme.copyWith(
//       shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
//     );

//     if (agreeServices.every((element) => element.isChecked == true) ||
//         allAgree.isChecked == true) {
//       if (allChoiceAgrees.first.isChecked == true) {
//         widget.bloc.add(RegionNameService(1));
//         widget.bloccontext.read<ProfileBloc>().add(RegionNameService(1));
//       } else if (allChoiceAgrees.last.isChecked == true) {
//         widget.bloc.add(RegionNameService(2));
//         widget.bloccontext.read<ProfileBloc>().add(RegionNameService(2));
//       } else {
//         widget.bloc.add(RegionNameService(0));
//         widget.bloccontext.read<ProfileBloc>().add(RegionNameService(0));
//       }
//     } else {
//       widget.bloc.add(RegionNameService(-1));
//       widget.bloccontext.read<ProfileBloc>().add(RegionNameService(-1));
//     }

//     return Column(
//       children: [
//         allCheckText(allAgree, newCheckBoxTheme, theme),
//         ListView(
//           padding: EdgeInsets.zero,
//           shrinkWrap: true,
//           physics: const NeverScrollableScrollPhysics(),
//           children: [
//             ...agreeServices
//                 .map((e) => checkText(model: e, newCheckBoxTheme, theme))
//                 .toList()
//           ],
//         ),

//         allCheckText(allChoiceAgree, newCheckBoxTheme, theme),
//         const SizedBox(
//           height: 8,
//         ),
//         Row(
//           mainAxisAlignment: MainAxisAlignment.start,
//           children: [
//             Expanded(
//                 child: checkText(
//                     model: allChoiceAgrees.first, newCheckBoxTheme, theme)),
//             Expanded(
//                 child: checkText(
//                     model: allChoiceAgrees.last, newCheckBoxTheme, theme)),
//             const SizedBox(
//               width: 80,
//             )
//           ],
//         ),
//         //)
//       ],
//     );
//   }

//   Widget checkText(CheckboxThemeData newCheckBoxTheme, ThemeData theme,
//       {required AgreeServiceModel model}) {
//     return Theme(
//       data: theme.copyWith(checkboxTheme: newCheckBoxTheme),
//       child: CheckboxListTile(
//         controlAffinity: ListTileControlAffinity.leading,
//         value: model.isChecked,
//         onChanged: (value) {
//           if (agreeServices.contains(model)) {
//             setState(() {
//               this.value = value!;
//               final newValue = !model.isChecked!;
//               model.isChecked = newValue;

//               if (!newValue) {
//                 allAgree.isChecked = false;
//               } else {
//                 final allow =
//                     agreeServices.every((element) => element.isChecked!);
//                 if (allow == allChoiceAgree.isChecked) {
//                   allAgree.isChecked = allow;
//                 }
//               }
//             });
//           } else {
//             setState(() {
//               this.value = value!;
//               final newValue = !model.isChecked!;
//               model.isChecked = newValue;
//               if (model.isChecked == true) {
//                 allChoiceAgree.isChecked = true;
//               }
//               if (allChoiceAgrees
//                   .every((element) => element.isChecked == false)) {
//                 allChoiceAgree.isChecked = false;
//               }
//             });
//           }
//         },
//         title: Text(model.text),
//       ),
//     );
//   }

//   Widget allCheckText(AgreeServiceModel model,
//       CheckboxThemeData newCheckBoxTheme, ThemeData theme) {
//     return Theme(
//       data: theme.copyWith(checkboxTheme: newCheckBoxTheme),
//       child: CheckboxListTile(
//           checkColor: ColorItems.white,
//           controlAffinity: ListTileControlAffinity.leading,
//           title: Text(model.text),
//           value: model.isChecked,
//           onChanged: (value) {
//             if (model.text == allAgree.text) {
//               this.value = value!;
//               final newValue = !model.isChecked!;
//               setState(() {
//                 allAgree.isChecked = newValue;
//                 agreeServices.forEach((element) {
//                   element.isChecked = newValue;
//                 });
//                 // allChoiceAgree.isChecked = newValue;
//                 // allChoiceAgrees.forEach((element) {
//                 //   element.isChecked = newValue;
//                 // });
//               });
//             } else {
//               this.value = value!;
//               final newValue = !model.isChecked!;
//               setState(() {
//                 allChoiceAgree.isChecked = newValue;
//                 allChoiceAgrees.forEach((element) {
//                   element.isChecked = newValue;
//                 });
//               });
//             }
//           }),
//     );
//   }
// }

class AgreeServiceModel {
  final String text;
  bool? isChecked;
  final bool isRequired;
  String? story;
  AgreeServiceModel(
      {required this.text,
      required this.isRequired,
      this.isChecked = false,
      this.story});
}

// leading: Checkbox(
//   onChanged: (value) => () {
//     final newValue = !model.isChecked!;
//     setState(() {
//       allAgree.isChecked = newValue;
//       agreeServices.forEach((element) {
//         element.isChecked = newValue;
//       });
//     });
//   },
//   value: value,
//   activeColor: ColorItems.primary,
// ),
