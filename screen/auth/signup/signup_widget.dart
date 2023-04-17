/*
 *
 * Weddy CONFIDENTIAL
 * _____________________________________________________________________
 *
 * [2021] - [2030] Weddy
 *  All Rights Reserved.
 *
 * NOTICE:  All information contained herein is, and remains
 * the property of Weddy and its suppliers,
 * if any.  The intellectual and technical concepts contained
 * herein are proprietary to Weddy and its suppliers and
 * may be covered by Korea and Foreign Patents,
 * patents in process, and are protected by trade secret or copyright law.
 * Dissemination of this information or reproduction of this material
 * is strictly forbidden unless prior written permission is obtained
 * from Weddy.
 */

import 'package:auto_size_text/auto_size_text.dart';
import 'package:email_validator/email_validator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../base/base_stateless_widget.dart';
import '../../../common/widget_factory.dart';
import '../../../provider/boolean_provider.dart';
import '../../../provider/generic_provider.dart';
import '../../../repository/auth_repository.dart';
import '../../../resources/Colors.dart';
import '../../../resources/Images.dart';
import '../../../resources/Text.dart';
import '../../profile/bloc/profile_display_type.dart';
import '../../profile/update/profile_update_page.dart';
import '../verification/pin_code_verification_page.dart';
import 'bloc/signup_bloc.dart';
import 'bloc/signup_event.dart';

class SignupWidget extends StatefulWidget {
  const SignupWidget({super.key});

  @override
  State<SignupWidget> createState() => _SignupWidgetState();
}

class _SignupWidgetState extends State<SignupWidget> {
  final WidgetFactory widgetFactory = WidgetFactory();
  int? focusNum;
  @override
  Widget build(BuildContext context) {
    final bloc = context.read<SignupBloc>();

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        const SizedBox(height: 20),
        Row(
          children: [
            Expanded(
                flex: 1,
                child: Focus(
                    onFocusChange: (hasFocus) {
                      if (hasFocus) {
                        setState(() {
                          focusNum = 1;
                        });
                      }
                    },
                    child: createUserIdTextField(context, bloc))),
            createDuplicatedIdButton(context, bloc)
          ],
        ),
        GenericProvider.createWidget<int>(provider: bloc.duplicatedIdProvider,
            (state) {
          return state.value == 2
              ? const SizedBox()
              : Padding(
                  padding: const EdgeInsets.only(left: 24, top: 6),
                  child: AutoSizeText('6~13자리 이내의 영문과 숫자를 조합.',
                      style: TextItems.body6.copyWith(
                          color: state.value == 0
                              ? ColorItems.secondarySpanishGray
                              : state.value == 1
                                  ? ColorItems.imperialRed
                                  : Colors.transparent)));
        }),
        const SizedBox(height: 12),
        Focus(
            onFocusChange: (hasFocus) {
              if (hasFocus) {
                setState(() {
                  focusNum = 2;
                });
              }
            },
            child: createPasswordTextField(context, bloc)),
        GenericProvider.createWidget<bool>(provider: bloc.passwordReg, (state) {
          return state.value == true
              ? const SizedBox()
              : Padding(
                  padding: const EdgeInsets.only(left: 24, top: 6, right: 32),
                  child: AutoSizeText(
                      '비밀번호는 영문 소문자/대문자/숫자/특수문자 포함 8~15자 입력해주세요.',
                      style: TextItems.body6.copyWith(
                          color: state.value == false && focusNum == 2
                              ? ColorItems.imperialRed
                              : ColorItems.spaceCadet)));
        }),
        const SizedBox(height: 12),
        Focus(
            onFocusChange: (hasFocus) {
              if (hasFocus) {
                setState(() {
                  focusNum = 3;
                });
              }
            },
            child: createConfirmPasswordTextField(context, bloc)),
        GenericProvider.createWidget<bool>(provider: bloc.checkPassword,
            (state) {
          return state.value == true
              ? const SizedBox()
              : Padding(
                  padding: const EdgeInsets.only(left: 24, top: 6, right: 32),
                  child: AutoSizeText('동일한 비밀번호 입력',
                      style: TextItems.body6.copyWith(
                          color: state.value == false && focusNum == 3
                              ? ColorItems.imperialRed
                              : ColorItems.secondarySpaceCadet)));
        }),
        const SizedBox(height: 12),
        Focus(
            onFocusChange: (hasFocus) {
              if (hasFocus) {
                setState(() {
                  focusNum = 4;
                });
              }
            },
            child: GenericProvider.createWidget<bool>(provider: bloc.name,
                (state) {
              return widgetFactory.createDefaultTextField(context,
                  hintText: '이름',
                  textEditingController: bloc.nameEditingController,
                  suffix: state.value == true && focusNum == 4
                      ? GestureDetector(
                          onTap: () {
                            bloc.nameEditingController.text = '';
                            bloc.onTextChangedName('');
                          },
                          child: Images.getIcon('Icon_cross.png'))
                      : null,
                  onChanged: bloc.onTextChangedName);
            })),
        const SizedBox(height: 20),
        Focus(
            onFocusChange: (hasFocus) {
              if (hasFocus) {
                setState(() {
                  focusNum = 5;
                });
              }
            },
            child: GenericProvider.createWidget<bool>(provider: bloc.email,
                (state) {
              return widgetFactory.createDefaultTextField(context,
                  hintText: '이메일',
                  inputType: TextInputType.emailAddress,
                  textEditingController: bloc.emailEditingController,
                  suffix: state.value == true && focusNum == 5
                      ? GestureDetector(
                          onTap: () {
                            bloc.emailEditingController.text = '';
                            bloc.onTextChangedEmail('');
                          },
                          child: Images.getIcon('Icon_cross.png'))
                      : null,
                  onChanged: bloc.onTextChangedEmail);
            })),
        const SizedBox(height: 20),
        Focus(
            onFocusChange: (hasFocus) {
              if (hasFocus) {
                setState(() {
                  focusNum = 6;
                });
              }
            },
            child: GenericProvider.createWidget<bool>(provider: bloc.mobilenum,
                (state) {
              return widgetFactory.createDefaultTextField(context,
                  hintText: '휴대폰 번호를 입력해주세요 (-제외)',
                  textEditingController: bloc.phoneEditingController,
                  inputType: TextInputType.phone,
                  suffix: state.value == true && focusNum == 6
                      ? GestureDetector(
                          onTap: () {
                            bloc.phoneEditingController.text = '';
                            bloc.onTextChangedMobile('');
                          },
                          child: Images.getIcon('Icon_cross.png'))
                      : null,
                  onChanged: bloc.onTextChangedMobile);
            })),
        const SizedBox(height: 20),
        notice('해당 정보는 판매사 방문예약 및 상품 구매 등에 사용되므로, 반드시정확하게 입력해주세요.'),
        const SizedBox(height: 12),
        notice('타인의 개인정보를 도용하여 가입 시, 서비스 이용 제한 및 법적 제재를 받으실 수 있습니다.'),
        const SizedBox(height: 30),
        createSignupButton(context, bloc),
      ],
    );
  }

  Widget createUserIdTextField(BuildContext context, SignupBloc bloc) {
    return Container(
        height: 42,
        padding: const EdgeInsets.only(left: 16, right: 12),
        child: GenericProvider.createWidget<int>(
            provider: bloc.duplicatedIdProvider, (state) {
          return TextField(
              decoration: InputDecoration(
                contentPadding:
                    const EdgeInsets.only(left: 18, right: 18, bottom: 5),
                focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(18)),
                    borderSide: BorderSide(
                        color: state.value == 2
                            ? ColorItems.primary
                            : ColorItems.secondarySpaceCadet)),
                enabledBorder: const OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(18)),
                    borderSide:
                        BorderSide(color: ColorItems.secondarySpanishGray)),
                hintText: '아이디',
                hintStyle: TextItems.title4
                    .copyWith(color: ColorItems.secondarySpanishGray),
                suffix: state.value == 1 && focusNum == 1
                    ? GestureDetector(
                        onTap: () {
                          bloc.accountEditingController.text = '';
                          bloc.onTextChangedId('');
                        },
                        child: Images.getIcon('Icon_cross.png'))
                    : state.value == 2
                        ? Images.getIcon('Icon_check.png',
                            color: ColorItems.primary)
                        : null,
              ),
              style: TextItems.title4.copyWith(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                  color: ColorItems.spaceCadet),
              controller: bloc.accountEditingController,
              onChanged: bloc.onTextChangedId);
        }));
  }

  String? validateId(String value) {
    RegExp regex = RegExp(r"^[A-Za-z]+\d+.*$");
    if (value.isEmpty) {
      return 'Please enter password';
    } else {
      if (!regex.hasMatch(value)) {
        return 'Enter valid password';
      } else {
        return null;
      }
    }
  }

  Widget createDuplicatedIdButton(BuildContext context, SignupBloc bloc) {
    return GenericProvider.createWidget<int>(
        provider: bloc.duplicatedIdProvider, (state) {
      Color color = state.value == 1
          ? ColorItems.spaceCadet
          : state.value == 0
              ? ColorItems.secondarySpanishGray
              : ColorItems.primary;
      return GestureDetector(
          onTap: () {
            if (validateId(bloc.accountEditingController.text) == null &&
                (bloc.accountEditingController.text.length >= 6 &&
                    bloc.accountEditingController.text.length <= 13)) {
              bloc.add(SignupIsDuplicatedIdEvent());
              //FocusNode().unfocus();
            }
          },
          child: Container(
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                  border: Border.fromBorderSide(BorderSide(color: color)),
                  borderRadius: const BorderRadius.all(Radius.circular(14))),
              child: AutoSizeText('중복체크',
                  style: TextItems.title4.copyWith(color: color))));
    });
  }

  Widget createPasswordTextField(BuildContext context, SignupBloc bloc) {
    return GenericProvider.createWidget<bool>(provider: bloc.password, (state) {
      return BooleanProvider.createWidget(
          initValue: true,
          (provider) => widgetFactory.createPasswordTextField(context,
                  passwordField: provider.value,
                  textEditingController: bloc.passwordEditingController,
                  onChanged: bloc.onTextChangedPassword,
                  suffix: state.value == true && focusNum == 2
                      ? GestureDetector(
                          onTap: () {
                            bloc.passwordEditingController.text = '';
                            bloc.onTextChangedPassword(
                              '',
                            );
                          },
                          child: Images.getIcon('Icon_cross.png'))
                      : null, onIconPressed: () {
                provider.change();
              }, hintText: '비밀번호'));
    });
  }

  Widget createConfirmPasswordTextField(BuildContext context, SignupBloc bloc) {
    return GenericProvider.createWidget<bool>(provider: bloc.passwordCheck,
        (state) {
      return BooleanProvider.createWidget(
          initValue: true,
          (provider) => widgetFactory.createPasswordTextField(context,
                  passwordField: provider.value,
                  textEditingController: bloc.confirmPasswordEditingController,
                  onChanged: bloc.onTextChangedPasswordCheck,
                  suffix: state.value == true && focusNum == 3
                      ? GestureDetector(
                          onTap: () {
                            bloc.confirmPasswordEditingController.text = '';
                            bloc.onTextChangedPasswordCheck('');
                          },
                          child: Images.getIcon('Icon_cross.png'))
                      : null, onIconPressed: () {
                provider.change();
              }, hintText: '비밀번호 확인'));
    });
  }

  Widget createSignupButton(BuildContext context, SignupBloc bloc) {
    return BooleanProvider.createWidget(
      provider: bloc.buttonEnableProvider,
      (provider) => Center(
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
              backgroundColor: ColorItems.primary,
              disabledBackgroundColor: ColorItems.mysticRose,
              padding: const EdgeInsets.only(
                  top: 14, bottom: 14, left: 70, right: 70),
              fixedSize: const Size(230, 68),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(36))),
          onPressed: provider.value
              ? () {
                  if (bloc.availableCheck()) {
                    // var args = ProfileUpdateArgs(
                    //     phoneNumber: bloc.phoneEditingController.text,
                    //     email: bloc.emailEditingController.text,
                    //     id: bloc.accountEditingController.text,
                    //     password: bloc.passwordEditingController.text,
                    //     name: bloc.nameEditingController.text);
                    // Navigator.pushNamed(context, ProfileUpdatePage.routeName,
                    //     arguments: ProfileUpdatePage(
                    //       args: args,
                    //       displayType: ProfileDisplayType.signup,
                    //     ));

                    Navigator.pushNamed(
                        context, PinCodeVerificationPage.routeName,
                        arguments: PinCodeVerificationArgs(
                            verifyType: PinCodeVerificationArgs.typeSignUp,
                            id: bloc.accountEditingController.text,
                            password: bloc.passwordEditingController.text,
                            phoneNumber: bloc.phoneEditingController.text,
                            name: bloc.nameEditingController.text,
                            email: bloc.emailEditingController.text));
                  }
                }
              : null,
          child: Text(
            "회원가입",
            style: TextItems.heading3.copyWith(
                fontSize: 18, fontWeight: FontWeight.w700, color: Colors.white),
          ),
        ),
      ),
    );
  }

  Widget notice(String text) {
    return Padding(
      padding: const EdgeInsets.only(left: 24.0, right: 24),
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
  }
}


// class SignupWidget extends BaseStatelessWidget {
//   SignupWidget({Key? key}) : super(key: key);
//   final _formKey = GlobalKey<FormState>();

//   @override
//   Widget build(BuildContext context) {
//     final bloc = context.read<SignupBloc>();

//     return 
//        Column(
//         key: _formKey,
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: <Widget>[
//           const SizedBox(height: 20),
//           Row(
//             children: [
//               Expanded(flex: 1, child: createUserIdTextField(context, bloc)),
//               createDuplicatedIdButton(context, bloc)
//             ],
//           ),
//           Padding(
//             padding: const EdgeInsets.only(left: 24, top: 6),
//             child: GenericProvider.createWidget<int>(
//                 provider: bloc.duplicatedIdProvider, (state) {
//               return AutoSizeText('아이디 4~15자 입력해주세요.',
//                   style: TextItems.body6.copyWith(
//                       color: state.value == 0
//                           ? ColorItems.secondarySpanishGray
//                           : state.value == 1
//                               ? ColorItems.imperialRed
//                               : Colors.transparent));
//             }),
//           ),
//           const SizedBox(height: 12),
//           createPasswordTextField(context, bloc),
//           Padding(
//               padding: const EdgeInsets.only(left: 24, top: 6, right: 32),
//               child: GenericProvider.createWidget<bool>(provider: bloc.password,
//                   (state) {
//                 return AutoSizeText('비밀번호는 영문 소문자/대문자/숫자/특수문자 포함 8~15자 입력해주세요.',
//                     style: TextItems.body6.copyWith(
//                         color: state.value == false
//                             ? ColorItems.secondarySpanishGray
//                             : ColorItems.imperialRed));
//               })),
//           const SizedBox(height: 12),
//           createConfirmPasswordTextField(context, bloc),
//           Padding(
//               padding: const EdgeInsets.only(left: 24, top: 6, right: 32),
//               child: GenericProvider.createWidget<bool>(
//                   provider: bloc.passwordCheck, (state) {
//                 return AutoSizeText('동일한 비밀번호 입력',
//                     style: TextItems.body6.copyWith(
//                         color: state.value == false
//                             ? ColorItems.secondarySpanishGray
//                             : ColorItems.imperialRed));
//               })),
//           const SizedBox(height: 12),
//           GenericProvider.createWidget<bool>(provider: bloc.name, (state) {
//             return widgetFactory.createDefaultTextField(context,
//                 hintText: '이름',
//                 textEditingController: bloc.nameEditingController,
//                 : bloc.name,
//                 nextfocus: bloc.email,
//                 suffix: state.value == true
//                     ? GestureDetector(
//                         onTap: () {
//                           bloc.nameEditingController.text = '';
//                           bloc.onTextChangedName('');
//                         },
//                         child: Images.getIcon('Icon_cross.png'))
//                     : null,
//                 onChanged: bloc.onTextChangedName);
//           }),
//           const SizedBox(height: 20),
//           GenericProvider.createWidget<bool>(provider: bloc.email, (state) {
//             return widgetFactory.createDefaultTextField(context,
//                 hintText: '이메일',
//                 inputType: TextInputType.emailAddress,
//                 textEditingController: bloc.emailEditingController,
//                 : bloc.email,
//                 nextfocus: bloc.mobile,
//                 suffix: state.value == true
//                     ? GestureDetector(
//                         onTap: () {
//                           bloc.emailEditingController.text = '';
//                           bloc.onTextChangedEmail('');
//                         },
//                         child: Images.getIcon('Icon_cross.png'))
//                     : null,
//                 onChanged: bloc.onTextChangedEmail);
//           }),
//           const SizedBox(height: 20),
//           GenericProvider.createWidget<bool>(provider: bloc.mobilenum, (state) {
//             return widgetFactory.createDefaultTextField(context,
//                 hintText: '휴대폰번호',
//                 : bloc.mobile,
//                 textEditingController: bloc.phoneEditingController,
//                 inputType: TextInputType.phone,
//                 suffix: state.value == true
//                     ? GestureDetector(
//                         onTap: () {
//                           bloc.phoneEditingController.text = '';
//                           bloc.onTextChangedMobile('');
//                         },
//                         child: Images.getIcon('Icon_cross.png'))
//                     : null,
//                 onChanged: bloc.onTextChangedMobile);
//           }),
//           const SizedBox(height: 20),
//           notice('해당 정보는 판매사 방문예약 및 상품 구매 등에 사용되므로, 반드시정확하게 입력해주세요.'),
//           const SizedBox(height: 12),
//           notice('타인의 개인정보를 도용하여 가입 시, 서비스 이용 제한 및 법적 제재를 받으실 수 있습니다.'),
//           const SizedBox(height: 30),
//           createSignupButton(context, bloc),
//         ],
      
//     );
//   }

//   Widget createUserIdTextField(BuildContext context, SignupBloc bloc) {
//     return Container(
//         height: 42,
//         padding: const EdgeInsets.only(left: 16, right: 12),
//         child: GenericProvider.createWidget<int>(
//             provider: bloc.duplicatedIdProvider, (state) {
//           return TextField(
//               : bloc.account,
//               onSubmitted: (_) =>
//                   FocusScope.of(context).requestFocus(bloc.password),
//               decoration: InputDecoration(
//                 contentPadding:
//                     const EdgeInsets.only(left: 18, right: 18, bottom: 5),
//                 focusedBorder: const OutlineInputBorder(
//                     borderRadius: BorderRadius.all(Radius.circular(18)),
//                     borderSide:
//                         BorderSide(color: ColorItems.secondarySpaceCadet)),
//                 enabledBorder: const OutlineInputBorder(
//                     borderRadius: BorderRadius.all(Radius.circular(18)),
//                     borderSide:
//                         BorderSide(color: ColorItems.secondarySpanishGray)),
//                 hintText: '아이디',
//                 hintStyle: TextItems.title4
//                     .copyWith(color: ColorItems.secondarySpanishGray),
//                 suffix: state.value == 1
//                     ? GestureDetector(
//                         onTap: () {
//                           bloc.accountEditingController.text = '';
//                           bloc.onTextChangedId('');
//                         },
//                         child: Images.getIcon('Icon_cross.png'))
//                     : state.value == 2
//                         ? Images.getIcon('Icon_check.png',
//                             color: ColorItems.primary)
//                         : null,
//               ),
//               style: TextItems.title4.copyWith(
//                   fontSize: 16,
//                   fontWeight: FontWeight.w500,
//                   color: ColorItems.spaceCadet),
//               controller: bloc.accountEditingController,
//               onChanged: bloc.onTextChangedId);
//         }));
//   }

//   Widget createDuplicatedIdButton(BuildContext context, SignupBloc bloc) {
//     return GestureDetector(
//         onTap: () => bloc.add(SignupIsDuplicatedIdEvent()),
//         child: GenericProvider.createWidget<int>(
//             provider: bloc.duplicatedIdProvider, (state) {
//           Color color = state.value == 1
//               ? ColorItems.spaceCadet
//               : state.value == 0
//                   ? ColorItems.secondarySpanishGray
//                   : ColorItems.primary;
//           return Container(
//               padding: const EdgeInsets.all(10),
//               decoration: BoxDecoration(
//                   border: Border.fromBorderSide(BorderSide(color: color)),
//                   borderRadius: const BorderRadius.all(Radius.circular(14))),
//               child: AutoSizeText('중복체크',
//                   style: TextItems.title4.copyWith(color: color)));
//         }));
//   }

//   Widget createPasswordTextField(BuildContext context, SignupBloc bloc) {
//     return GenericProvider.createWidget<bool>(provider: bloc.password, (state) {
//       return BooleanProvider.createWidget(
//           initValue: true,
//           (provider) => widgetFactory.createPasswordTextField(context,
//                   passwordField: provider.value,
//                   textEditingController: bloc.passwordEditingController,
//                   onChanged: bloc.onTextChangedPassword,
//                   : bloc.password,
//                   nextfocus: bloc.passwordCheck,
//                   suffix: state.value == true
//                       ? GestureDetector(
//                           onTap: () {
//                             bloc.passwordEditingController.text = '';
//                             bloc.onTextChangedPassword(
//                               '',
//                             );
//                           },
//                           child: Images.getIcon('Icon_cross.png'))
//                       : null, onIconPressed: () {
//                 provider.change();
//               }, hintText: '비밀번호'));
//     });
//   }

//   Widget createConfirmPasswordTextField(BuildContext context, SignupBloc bloc) {
//     return GenericProvider.createWidget<bool>(provider: bloc.passwordCheck,
//         (state) {
//       return BooleanProvider.createWidget(
//           initValue: true,
//           (provider) => widgetFactory.createPasswordTextField(context,
//                   passwordField: provider.value,
//                   textEditingController: bloc.confirmPasswordEditingController,
//                   : bloc.passwordCheck,
//                   nextfocus: bloc.name,
//                   onChanged: bloc.onTextChangedPasswordCheck,
//                   suffix: state.value == true
//                       ? GestureDetector(
//                           onTap: () {
//                             bloc.confirmPasswordEditingController.text = '';
//                             bloc.onTextChangedPasswordCheck('');
//                           },
//                           child: Images.getIcon('Icon_cross.png'))
//                       : null, onIconPressed: () {
//                 provider.change();
//               }, hintText: '비밀번호 확인'));
//     });
//   }

//   Widget createSignupButton(BuildContext context, SignupBloc bloc) {
//     return BooleanProvider.createWidget(
//       provider: bloc.buttonEnableProvider,
//       (provider) => Center(
//         child: ElevatedButton(
//           style: ElevatedButton.styleFrom(
//               backgroundColor: ColorItems.primary,
//               disabledBackgroundColor: ColorItems.mysticRose,
//               padding: const EdgeInsets.only(
//                   top: 14, bottom: 14, left: 70, right: 70),
//               fixedSize: const Size(230, 68),
//               shape: RoundedRectangleBorder(
//                   borderRadius: BorderRadius.circular(36))),
//           onPressed: provider.value
//               ? () {
//                   if (bloc.availableCheck() && bloc.accountAvailableCheck()) {
//                     Navigator.pushNamed(
//                         context, PinCodeVerificationPage.routeName,
//                         arguments: PinCodeVerificationArgs(
//                             verifyType: PinCodeVerificationArgs.typeSignUp,
//                             id: bloc.accountEditingController.text,
//                             password: bloc.passwordEditingController.text,
//                             phoneNumber: bloc.phoneEditingController.text,
//                             name: bloc.nameEditingController.text,
//                             gender: bloc.genderProvider.value));
//                   }
//                 }
//               : null,
//           child: Text(
//             "회원가입",
//             style: TextItems.heading3.copyWith(
//                 fontSize: 18, fontWeight: FontWeight.w700, color: Colors.white),
//           ),
//         ),
//       ),
//     );
//   }

//   Widget notice(String text) {
//     return Padding(
//       padding: const EdgeInsets.only(left: 24.0, right: 24),
//       child: Row(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           Text(
//             '*',
//             style: TextItems.title7.copyWith(
//                 fontSize: 12,
//                 fontWeight: FontWeight.w700,
//                 color: ColorItems.primary),
//           ),
//           const SizedBox(
//             width: 12,
//           ),
//           Expanded(
//             child: Text(
//               text,
//               style: TextItems.heading5.copyWith(
//                   fontSize: 12,
//                   fontWeight: FontWeight.w400,
//                   color: ColorItems.spaceCadet),
//             ),
//           )
//         ],
//       ),
//     );
//   }
// }

  // Widget createServiceAgree(BuildContext context, SignupBloc bloc) {
  //   return BooleanProvider.createWidget(
  //       provider: bloc.agreeProvider,
  //       (provider) => Row(
  //             mainAxisAlignment: MainAxisAlignment.center,
  //             children: [
  //               GestureDetector(
  //                   onTap: () => provider.change(),
  //                   child: Images.getIcon('icon_check_field',
  //                       color: provider.value
  //                           ? ColorItems.greenPigment
  //                           : ColorItems.secondarySpanishGray)),
  //               const SizedBox(width: 12),
  //               GestureDetector(
  //                   onTap: () {
  //                     screenCommonWidget.showSnackBar(context, "웹 화면으로 이동");
  //                   },
  //                   // todo add 서비스 약관 동의 추가
  //                   child: const AutoSizeText('개인정보 이용동의',
  //                       style: TextItems.title5))
  //             ],
  //           ));
  // }

 
  // Widget createGenderWidget(BuildContext context, SignupBloc bloc) {
  //   return GenericProvider.createWidget<int>(
  //       provider: bloc.genderProvider,
  //       (state) => Row(
  //             mainAxisSize: MainAxisSize.max,
  //             mainAxisAlignment: MainAxisAlignment.spaceBetween,
  //             children: [
  //               GestureDetector(
  //                   onTap: () => bloc.updateGender(2),
  //                   child: Column(
  //                     mainAxisAlignment: MainAxisAlignment.center,
  //                     children: [
  //                       state.value == 2
  //                           ? Images.getIcon('graph_bride')
  //                           : Images.getIcon('graph_bride_gray'),
  //                       const SizedBox(height: 6),
  //                       AutoSizeText('신부',
  //                           style: TextItems.title7.copyWith(
  //                               color: state.value == 2
  //                                   ? ColorItems.spaceCadet
  //                                   : ColorItems.secondarySpanishGray))
  //                     ],
  //                   )),
  //               GestureDetector(
  //                   onTap: () => bloc.updateGender(1),
  //                   child: Column(
  //                       mainAxisAlignment: MainAxisAlignment.center,
  //                       children: [
  //                         state.value == 1
  //                             ? Images.getIcon('graph_groom')
  //                             : Images.getIcon('graph_groom_gray'),
  //                         const SizedBox(height: 6),
  //                         AutoSizeText('신랑',
  //                             style: TextItems.title7.copyWith(
  //                                 color: state.value == 1
  //                                     ? ColorItems.spaceCadet
  //                                     : ColorItems.secondarySpanishGray))
  //                       ])),
  //             ],
  //           ));
  // }
