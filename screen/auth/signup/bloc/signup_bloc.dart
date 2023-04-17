import 'package:email_validator/email_validator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weddynew/apis/result.dart';
import 'package:weddynew/screen/auth/signup/bloc/signup_event.dart';

import '../../../../base/bloc/base_bloc.dart';
import '../../../../base/bloc/base_bloc_state.dart';
import '../../../../base/bloc/bloc_state.dart';
import '../../../../provider/boolean_provider.dart';
import '../../../../provider/generic_provider.dart';
import '../../../../repository/auth_repository.dart';
import '../../../../resources/Colors.dart';
import '../../../../utils/account_utils.dart';

class SignupBloc extends BaseBloc<SignupEvent, BaseBlocState> {
  SignupBloc(AuthRepository repository)
      : super(BaseBlocState(BlocStatus.success)) {
    _repository = repository;
    on<SignupIsDuplicatedIdEvent>(_isDuplicatedId);
  }

  late final AuthRepository _repository;

  final TextEditingController accountEditingController =
      TextEditingController();
  final TextEditingController passwordEditingController =
      TextEditingController();
  final TextEditingController confirmPasswordEditingController =
      TextEditingController();
  final TextEditingController phoneEditingController = TextEditingController();
  final TextEditingController nameEditingController = TextEditingController();
  final TextEditingController emailEditingController = TextEditingController();

  // final agreeProvider = BooleanProvider(initValue: false);
  // final genderProvider = GenericProvider<int>();
  final buttonEnableProvider = BooleanProvider(initValue: false);

  final duplicatedIdProvider = GenericProvider<int>(initValue: 0);
  final password = GenericProvider<bool>(initValue: false);
  final passwordCheck = GenericProvider<bool>(initValue: false);
  final passwordReg = GenericProvider<bool>(initValue: false);
  final checkPassword = GenericProvider<bool>(initValue: false);
  final name = GenericProvider<bool>();
  final email = GenericProvider<bool>();
  final mobilenum = GenericProvider<bool>();

  void onTextChangedId(String text) {
    if (text.isEmpty && validateId(text) != null) {
      duplicatedIdProvider.setValue(0, forceNotify: false);
    } else {
      duplicatedIdProvider.setValue(1, forceNotify: true);
    }
    updateButtonEnable();
  }

  void onTextChangedPassword(String text) {
    if (text.isEmpty) {
      password.setValue(false, forceNotify: false);
    } else {
      password.setValue(true, forceNotify: true);
    }

    if (validatePassword(text) == null &&
        (text.length >= 8 && 15 >= text.length)) {
      passwordReg.setValue(true, forceNotify: true);
    } else {
      passwordReg.setValue(false, forceNotify: false);
    }

    updateButtonEnable();
  }

  void onTextChangedPasswordCheck(String text) {
    if (text.isNotEmpty) {
      passwordCheck.setValue(true, forceNotify: true);
    } else {
      passwordCheck.setValue(false, forceNotify: false);
    }

    if (text == passwordEditingController.text) {
      checkPassword.setValue(true, forceNotify: true);
    } else {
      checkPassword.setValue(false, forceNotify: false);
    }

    updateButtonEnable();
  }

  void onTextChangedEmail(String text) {
    if (text.isEmpty) {
      email.setValue(false, forceNotify: false);
    } else {
      email.setValue(true, forceNotify: true);
    }
    updateButtonEnable();
  }

  void onTextChangedName(String text) {
    if (text.isEmpty) {
      name.setValue(false, forceNotify: false);
    } else {
      name.setValue(true, forceNotify: true);
    }
    updateButtonEnable();
  }

  void onTextChangedMobile(String text) {
    if (text.isEmpty) {
      mobilenum.setValue(false, forceNotify: false);
    } else {
      mobilenum.setValue(true, forceNotify: true);
    }
    updateButtonEnable();
  }

  // void onCheckChangedAgree() {
  //   agreeProvider.change();
  //   updateButtonEnable();
  // }

  void _isDuplicatedId(
      SignupIsDuplicatedIdEvent event, Emitter<BaseBlocState> emit) async {
    if (accountEditingController.text.trim().isEmpty ||
        accountEditingController.text.trim().length < 4) return;

    (await _repository.isDuplicatedId(accountEditingController.text))
        .success((data) {
      if (data) {
        showPopup("중복된 아이디가 있습니다!",
            icon: 'graph_fail', buttonColor: ColorItems.secondarySpanishGray);
        duplicatedIdProvider.setValue(1);
        updateButtonEnable();
      } else {
        // showPopup("사용할 수 있는 아이디입니다!",
        //     icon: 'graph_success', buttonColor: ColorItems.carolinaBlue);
        duplicatedIdProvider.setValue(2);
        updateButtonEnable();
      }
    }).error((errorCode, message) {
      showSnackBar("다시 시도해 주세요.");
    });
  }

  // void updateGender(int genderCode) {
  //   genderProvider.setValue(genderCode);
  //   updateButtonEnable();
  // }

  void updateButtonEnable() {
    buttonEnableProvider.setValue(availableCheck());
  }

  // final duplicatedIdProvider = GenericProvider<int>(initValue: 0);
  // final password = GenericProvider<bool>(initValue: false);
  // final passwordCheck = GenericProvider<bool>(initValue: false);
  // final passwordReg = GenericProvider<bool>(initValue: false);
  // final checkPassword = GenericProvider<bool>(initValue: false);
  // final name = GenericProvider<bool>();
  // final email = GenericProvider<bool>();
  // final mobilenum = GenericProvider<bool>();

  bool availableCheck() {
    if (password.value == false ||
        passwordCheck.value == false ||
        passwordReg.value == false ||
        checkPassword.value == false ||
        name.value == false ||
        phoneEditingController.text.length != 11 ||
        email.value == false ||
        duplicatedIdProvider.value != 2 ||
        EmailValidator.validate(emailEditingController.text) == false ||
        mobilenum.value == false) {
      return false;
    }

    return true;
  }

  // bool accountAvailableCheck() {
  //   final accountAvailable = AccountUtils();

  //   if (!accountAvailable.availableUserId(accountEditingController.text)) {
  //     showSnackBar("아이디 영문, 숫자 6~20 자리 까지 가능해요");
  //     return false;
  //   }

  //   if (!accountAvailable
  //       .availableUserPassword(passwordEditingController.text)) {
  //     showSnackBar("비밀번호 영문 대소문자, 숫자, 특수문자 포함 8~20 자리 까지 가능해요");
  //     return false;
  //   }

  //   return true;
  //}

  String? validateId(String value) {
    RegExp regex = RegExp(r'^[a-zA-Z0-9]{6,20}\$`');
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

  String? validatePassword(String value) {
    RegExp regex =
        RegExp(r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~]).{8,}$');
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
}
