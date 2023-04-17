import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:weddynew/common/widget_factory.dart';
import 'package:weddynew/provider/boolean_provider.dart';
import 'package:weddynew/utils/account_utils.dart';

import '../../../../resources/Colors.dart';
import '../../../../resources/Images.dart';
import '../../../../resources/Text.dart';

class ChangePasswordScreen extends StatefulWidget {
  final String id;

  static const String routeName = "/change_password";

  const ChangePasswordScreen({super.key, required this.id});

  @override
  State<ChangePasswordScreen> createState() => _ChangePasswordScreenState();
}

class _ChangePasswordScreenState extends State<ChangePasswordScreen> {
  int? focus;
  final regController = TextEditingController();
  final checkController = TextEditingController();
  @override
  void initState() {
    focus = 0;
    super.initState();
    debugPrint(widget.id + "hello world");
  }

  BooleanProvider enableReg = BooleanProvider(initValue: false);
  BooleanProvider enableCheck = BooleanProvider(initValue: false);
  BooleanProvider enableOk = BooleanProvider(initValue: false);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
              '비밀번호 찾기',
              style: TextItems.heading3.copyWith(
                  fontSize: 18,
                  fontWeight: FontWeight.w700,
                  color: ColorItems.spaceCadet),
            ),
            actions: [
              BooleanProvider.createWidget(provider: enableOk, (state) {
                return TextButton(
                    onPressed: () {},
                    child: Text(
                      '확인',
                      style: TextItems.title4.copyWith(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          color: state.value == true
                              ? ColorItems.primary
                              : ColorItems.secondarySpanishGray),
                    ));
              })
            ],
            elevation: 0,
          )),
      body: Column(children: [
        const SizedBox(
          height: 40,
        ),
        Text(
          '새로운 비밀번호 입력',
          style: TextItems.heading2.copyWith(
              fontSize: 24,
              fontWeight: FontWeight.w800,
              color: ColorItems.spaceCadet),
        ),
        const SizedBox(
          height: 44,
        ),
        Focus(
            onFocusChange: (hasFocus) {
              if (hasFocus) {
                setState(() => focus = 0);
              }
            },
            child: regPassword()),
        const SizedBox(
          height: 14,
        ),
        Focus(
            onFocusChange: (hasFocus) {
              if (hasFocus) {
                setState(() => focus = 1);
              }
            },
            child: checkPassword())
      ]),
    );
  }

  Widget regPassword() {
    return Column(
      children: [
        BooleanProvider.createWidget(
            initValue: true,
            (provider) => WidgetFactory().createPasswordTextField(context,
                passwordField: provider.value,
                suffix: focus == 0 && regController.text.isNotEmpty
                    ? GestureDetector(
                        onTap: () {
                          regController.text = '';
                        },
                        child: Images.getIcon('Icon_cross.png'))
                    : null,
                onChanged: (value) {
                  isRegAvailable(value);
                },
                textEditingController: regController,
                onIconPressed: () {
                  provider.change();
                })),
        const SizedBox(
          height: 10,
        ),
        BooleanProvider.createWidget(provider: enableReg, (state) {
          return state.value == true
              ? const SizedBox()
              : Container(
                  padding: const EdgeInsets.only(left: 22),
                  alignment: Alignment.centerLeft,
                  child: Text('8~15자 이내 영문/숫자/특수문자(공백제외) 중 2개 이상 조합',
                      style: TextItems.body6.copyWith(
                          color: focus == 0
                              ? ColorItems.imperialRed
                              : ColorItems.spaceCadet)),
                );
        })
      ],
    );
  }

  Widget checkPassword() {
    return Column(
      children: [
        BooleanProvider.createWidget(
            initValue: true,
            (provider) => WidgetFactory().createPasswordTextField(context,
                passwordField: provider.value,
                suffix: focus == 1 && checkController.text.isNotEmpty
                    ? GestureDetector(
                        onTap: () {
                          checkController.text = '';
                        },
                        child: Images.getIcon('Icon_cross.png'))
                    : null,
                onChanged: (value) {
                  isCheckAvailable(value);
                },
                textEditingController: checkController,
                onIconPressed: () {
                  provider.change();
                })),
        const SizedBox(
          height: 10,
        ),
        BooleanProvider.createWidget(provider: enableCheck, (state) {
          return state.value == true
              ? const SizedBox()
              : Container(
                  padding: const EdgeInsets.only(left: 22),
                  alignment: Alignment.centerLeft,
                  child: Text('동일한 비밀번호 입력',
                      style: TextItems.body6.copyWith(
                          color: focus == 1
                              ? ColorItems.imperialRed
                              : ColorItems.spaceCadet)));
        })
      ],
    );
  }

  isRegAvailable(String text) {
    if (AccountUtils().availableUserPassword(text) &&
        checkController.text == text) {
      enableReg.setValue(true);
    } else {
      enableReg.setValue(false);
    }
  }

  isCheckAvailable(String text) {
    if (regController.text == text) {
      enableCheck.setValue(true);
    } else {
      enableCheck.setValue(false);
    }
    isCheckAll();
  }

  isCheckAll() {
    if (enableCheck.value && enableReg.value) {
      enableOk.setValue(true);
    } else {
      enableOk.setValue(false);
    }
    isCheckAll();
  }
}
