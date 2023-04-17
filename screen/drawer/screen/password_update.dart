import 'dart:io';

import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:provider/provider.dart';
import 'package:weddynew/base/base_stateless_widget.dart';
import 'package:weddynew/base/bloc/bloc_state.dart';
import 'package:weddynew/common/widget_factory.dart';
import 'package:weddynew/screen/drawer/bloc/update_event.dart';
import 'package:weddynew/screen/drawer/bloc/update_state.dart';
import 'package:weddynew/screen/drawer/screen/widget/modal.dart';
import '../../../di/di_module.dart';
import '../../../provider/boolean_provider.dart';
import '../../../provider/generic_provider.dart';
import '../../../resources/Colors.dart';
import '../../../resources/Images.dart';
import '../../../resources/Text.dart';
import '../bloc/update_bloc.dart';

class PasswordUpdatePage extends StatefulWidget {
  const PasswordUpdatePage({super.key});

  @override
  State<PasswordUpdatePage> createState() => _PasswordUpdatePageState();
}

class _PasswordUpdatePageState extends State<PasswordUpdatePage> {
  final BooleanProvider buttonEnabledProvider =
      BooleanProvider(initValue: false);

  int? focusNum;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Provider(
      create: (_) => UpdateBloc(userRepository: getIt.get()),
      child: BlocBuilder<UpdateBloc, UpdateState>(builder: (context, state) {
        final bloc = context.read<UpdateBloc>();
        return Scaffold(
          resizeToAvoidBottomInset: false,
          appBar: PreferredSize(
              preferredSize: const Size.fromHeight(52),
              child: AppBar(
                leading: IconButton(
                  icon: Images.getIcon('icon_arrow', color: ColorItems.salmon),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                ),
                title: AutoSizeText(
                  '비밀번호 변경',
                  style: TextItems.heading3.copyWith(
                      fontSize: 18,
                      fontWeight: FontWeight.w700,
                      color: ColorItems.spaceCadet),
                ),
                actions: [
                  BooleanProvider.createWidget(
                      provider: bloc.buttonEnableProvider, (state) {
                    return state.value == true
                        ? TextButton(
                            onPressed: () {
                              checkPassword(bloc);
                            },
                            child: Text('확인',
                                style: TextItems.heading3.copyWith(
                                    fontSize: 18,
                                    fontWeight: FontWeight.w700,
                                    color: ColorItems.spaceCadet)))
                        : const SizedBox();
                  })
                ],
                elevation: 0,
              )),
          backgroundColor: Colors.white,
          body: AnnotatedRegion<SystemUiOverlayStyle>(
            value: Platform.isIOS
                ? SystemUiOverlayStyle.light
                : const SystemUiOverlayStyle(
                    statusBarIconBrightness: Brightness.light),
            child: Padding(
                padding: const EdgeInsets.only(left: 18, top: 30, right: 18),
                child: SingleChildScrollView(
                  physics: const AlwaysScrollableScrollPhysics(),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Container(
                        alignment: Alignment.centerLeft,
                        padding: const EdgeInsets.only(left: 16),
                        child: Text('현재 사용 중인 비밀번호를 입력해주세요',
                            style: TextItems.title8.copyWith(
                                fontSize: 16,
                                fontWeight: FontWeight.w700,
                                color: ColorItems.spaceCadet)),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      GenericProvider.createWidget<int>(provider: bloc.password,
                          (provider) {
                        return Row(
                          children: [
                            Expanded(
                                child: Focus(
                                    onFocusChange: (hasFocus) {
                                      if (hasFocus) {
                                        setState(() => focusNum = 1);
                                      }
                                    },
                                    child: checkPasswordWidget(context, bloc,
                                        provider.value == 2 ? true : false))),
                            const SizedBox(
                              width: 2,
                            ),
                            provider.value == 2
                                ? ElevatedButton(
                                    style: ElevatedButton.styleFrom(
                                        backgroundColor: ColorItems.primary,
                                        fixedSize: const Size(74, 42),
                                        shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(36))),
                                    onPressed: () {},
                                    child: Images.getIcon(
                                        'assets/icons/LogIn/Home Timeline _Guidebook/Icon_filter_check.png'),
                                  )
                                : ElevatedButton(
                                    style: ElevatedButton.styleFrom(
                                        backgroundColor: ColorItems.white,
                                        side: BorderSide(
                                            color: provider.value == 0
                                                ? ColorItems.white
                                                : ColorItems.spaceCadet),
                                        disabledBackgroundColor:
                                            ColorItems.white,
                                        fixedSize: const Size(74, 42),
                                        shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(36))),
                                    onPressed: () {
                                      provider.value == 1 || provider.value == 3
                                          ? bloc.add(CheckPasswordEvent())
                                          : null;
                                    },
                                    child: Text("확인",
                                        style: TextItems.title4.copyWith(
                                            fontSize: 16,
                                            fontWeight: FontWeight.w500,
                                            color: ColorItems
                                                .secondarySpanishGray)),
                                  )
                          ],
                        );
                      }),
                      isChecked(bloc)
                      // GenericProvider.createWidget<int>(provider: bloc.password,
                      //     (provider) {
                      //   return provider.value == 2
                      //       ? isChecked(bloc)
                      //       : provider.value == 3
                      //           ? Text(
                      //               '현재 비밀번호가 일치하지 않습니다',
                      //               style: TextItems.heading5.copyWith(
                      //                   fontSize: 12,
                      //                   fontWeight: FontWeight.w400,
                      //                   color: Colors.red),
                      //             )
                      //           : const SizedBox();
                      // })
                    ],
                  ),
                )),
          ),
        );
      }),
    );
  }

  Widget isChecked(UpdateBloc bloc) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(height: 25),
        Container(
            alignment: Alignment.centerLeft,
            padding: const EdgeInsets.only(left: 16),
            child: Text('새로운 비밀번호를 입력해주세요',
                style: TextItems.title8.copyWith(
                    fontSize: 16,
                    fontWeight: FontWeight.w700,
                    color: ColorItems.spaceCadet))),
        const SizedBox(height: 20),
        Focus(
            onFocusChange: (hasFocus) {
              if (hasFocus) {
                setState(() => focusNum = 2);
              }
            },
            child: changePasswordWidget(context, bloc)),
        GenericProvider.createWidget<bool>(provider: bloc.passwordReg, (state) {
          return state.value == true
              ? const SizedBox()
              : Padding(
                  padding: const EdgeInsets.only(left: 24, top: 6, right: 32),
                  child: AutoSizeText('8~15자 이내 영문/숫자/특수문자(공백제외) 중 2개 이상 조합',
                      style: TextItems.body6.copyWith(
                          color: state.value == false && focusNum == 2
                              ? ColorItems.imperialRed
                              : ColorItems.spaceCadet)));
        }),
        const SizedBox(height: 20),
        Focus(
            onFocusChange: (hasFocus) {
              if (hasFocus) {
                setState(() => focusNum = 3);
              }
            },
            child: checkChangePasswordWidget(context, bloc)),
        GenericProvider.createWidget<bool>(provider: bloc.passwordCheck,
            (state) {
          return state.value == true
              ? const SizedBox()
              : Padding(
                  padding: const EdgeInsets.only(left: 24, top: 6, right: 32),
                  child: AutoSizeText('동일한 비밀번호 입력',
                      style: TextItems.body6.copyWith(
                          color: state.value == false && focusNum == 3
                              ? ColorItems.imperialRed
                              : ColorItems.spaceCadet)));
        }),
      ],
    );
  }

  Widget checkPasswordWidget(
      BuildContext context, UpdateBloc bloc, bool? disable) {
    return GenericProvider.createWidget<bool>(provider: bloc.passwordCloseIcon,
        (state) {
      return BooleanProvider.createWidget(
          initValue: true,
          (provider) => WidgetFactory().createPasswordTextField(context,
                  passwordField: provider.value,
                  textEditingController: bloc.checkPasswordController,
                  onChanged: bloc.onCheckPassword,
                  disable: disable,
                  suffix: state.value == true && focusNum == 1
                      ? GestureDetector(
                          onTap: () {
                            bloc.checkPasswordController.text = '';
                            bloc.onCheckPassword(
                              '',
                            );
                          },
                          child: Images.getIcon('Icon_cross.png'))
                      : null, onIconPressed: () {
                provider.change();
              }, hintText: '현재 비밀번호'));
    });
  }

  Widget changePasswordWidget(BuildContext context, UpdateBloc bloc) {
    return GenericProvider.createWidget<bool>(
        provider: bloc.passwordRegCloseIcon, (state) {
      return BooleanProvider.createWidget(
          initValue: true,
          (provider) => WidgetFactory().createPasswordTextField(context,
                  passwordField: provider.value,
                  textEditingController: bloc.changePasswordController,
                  onChanged: bloc.onTextChangedPassword,
                  suffix: state.value == true && focusNum == 2
                      ? GestureDetector(
                          onTap: () {
                            bloc.changePasswordController.text = '';
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

  Widget checkChangePasswordWidget(BuildContext context, UpdateBloc bloc) {
    return GenericProvider.createWidget<bool>(
        provider: bloc.passwordCheckCloseIcon, (state) {
      return BooleanProvider.createWidget(
          initValue: true,
          (provider) => WidgetFactory().createPasswordTextField(context,
                  passwordField: provider.value,
                  textEditingController: bloc.checkChangePasswordController,
                  onChanged: bloc.onTextChangedPasswordCheck,
                  suffix: state.value == true && focusNum == 3
                      ? GestureDetector(
                          onTap: () {
                            bloc.checkChangePasswordController.text = '';
                            bloc.onTextChangedPasswordCheck(
                              '',
                            );
                          },
                          child: Images.getIcon('Icon_cross.png'))
                      : null, onIconPressed: () {
                provider.change();
              }, hintText: '비밀번호 확인'));
    });
  }

  checkPassword(UpdateBloc bloc) {
    FocusScope.of(context).unfocus();

    if (bloc.changePasswordController.text ==
        bloc.checkChangePasswordController.text) {
      showDialog(
          context: context,
          builder: (_) => UpdateModal(
                title: "현재 비밀번호와 다른 비밀번호로 입력해주세요",
              ));
    } else if (bloc.availableCheck()) {
      bloc.add(PasswordUpdateEvent(bloc.checkPasswordController.text,
          bloc.changePasswordController.text));
    }
  }
}

class ButtonWidget extends BaseStatelessWidget {
  final UpdateBloc bloc;
  final BuildContext bloccontext;

  ButtonWidget(this.bloccontext, this.bloc, {super.key});
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return BlocProvider.value(
      value: BlocProvider.of<UpdateBloc>(context),
      child: BooleanProvider.createWidget(provider: bloc.buttonEnableProvider,
          (provider) {
        return Center(
          child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                  backgroundColor: ColorItems.spaceCadet,
                  //  backgroundColor: ColorItems.primary,
                  disabledBackgroundColor: ColorItems.mysticRose,
                  fixedSize: const Size(180, 58),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(36))),
              onPressed: provider.value
                  ? () {
                      checkPassword(bloc, context);
                    }
                  : null,
              child: Text(
                "수정 완료",
                style: TextStyle(color: Colors.white),
              )),
        );
      }),
    );
  }

  checkPassword(UpdateBloc bloc, context) {
    FocusScope.of(context).unfocus();

    if (bloc.checkPasswordController.text ==
        bloc.changePasswordController.text) {
      showDialog(
          context: context,
          builder: (_) => UpdateModal(
                title: "현재 비밀번호와 다른 비밀번호로 입력해주세요",
              ));
    } else if (bloc.availableCheck()) {
      bloc.add(PasswordUpdateEvent(bloc.checkPasswordController.text,
          bloc.changePasswordController.text));
      if (bloc.state.isSucess == true) {
        showDialog(
            context: context,
            builder: (_) => UpdateModal(
                  title: "새로운 비밀번호로 변경되었습니다",
                ));
      } else {
        showDialog(
            context: context,
            builder: (_) => UpdateModal(
                  title: "현재 비밀번호가 다릅니다.",
                ));
      }
    } else {
      showDialog(
          context: context,
          builder: (_) => UpdateModal(
                title: "에러가 발생했습니다.",
              ));
    }
  }
}
