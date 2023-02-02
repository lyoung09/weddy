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

  final agreeProvider = BooleanProvider(initValue: false);
  final buttonEnableProvider = BooleanProvider(initValue: false);
  final duplicatedIdProvider = GenericProvider<bool>();
  final genderProvider = GenericProvider<int>();

  void onTextChanged(String text) {
    updateButtonEnable();
  }

  void onTextChangedId(String text) {
    duplicatedIdProvider.setValue(null, forceNotify: true);
    updateButtonEnable();
  }

  void onCheckChangedAgree() {
    agreeProvider.change();
    updateButtonEnable();
  }

  void _isDuplicatedId(
      SignupIsDuplicatedIdEvent event, Emitter<BaseBlocState> emit) async {
    if (accountEditingController.text.trim().isEmpty) return;

    (await _repository.isDuplicatedId(accountEditingController.text))
        .success((data) {
      if (data) {
        showPopup("중복된 아이디가 있습니다!",
            icon: 'graph_fail', buttonColor: ColorItems.secondarySpanishGray);
      } else {
        showPopup("사용할 수 있는 아이디입니다!",
            icon: 'graph_success', buttonColor: ColorItems.carolinaBlue);
      }
      duplicatedIdProvider.setValue(data);
      updateButtonEnable();
    }).error((errorCode, message) {
      showSnackBar("다시 시도해 주세요.");
    });
  }

  void updateGender(int genderCode) {
    genderProvider.setValue(genderCode);
    updateButtonEnable();
  }

  void updateButtonEnable() {
    buttonEnableProvider.setValue(availableCheck());
  }

  bool availableCheck() {
    if (accountEditingController.text.trim().isEmpty ||
        passwordEditingController.text.trim().isEmpty ||
        confirmPasswordEditingController.text.trim().isEmpty ||
        phoneEditingController.text.trim().isEmpty ||
        nameEditingController.text.trim().isEmpty ||
        !agreeProvider.value ||
        duplicatedIdProvider.value != false ||
        genderProvider.value == null) {
      return false;
    }

    return true;
  }

  bool accountAvailableCheck() {
    final accountAvailable = AccountUtils();

    if (!accountAvailable.availableUserId(accountEditingController.text)) {
      showSnackBar("아이디 영문, 숫자 6~20 자리 까지 가능해요");
      return false;
    }

    if (!accountAvailable
        .availableUserPassword(passwordEditingController.text)) {
      showSnackBar("비밀번호 영문 대소문자, 숫자, 특수문자 포함 8~20 자리 까지 가능해요");
      return false;
    }

    return true;
  }
}
