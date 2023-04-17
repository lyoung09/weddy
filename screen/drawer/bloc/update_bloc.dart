import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weddynew/apis/result.dart';
import 'package:weddynew/base/bloc/bloc_state.dart';
import 'package:weddynew/screen/drawer/bloc/update_event.dart';
import 'package:weddynew/screen/drawer/bloc/update_state.dart';

import '../../../base/bloc/base_bloc.dart';
import '../../../provider/boolean_provider.dart';
import '../../../provider/generic_provider.dart';
import '../../../repository/auth_repository.dart';
import '../../../resources/Colors.dart';
import '../../../utils/account_utils.dart';

class UpdateBloc extends BaseBloc<UpdateEvent, UpdateState> {
  UpdateBloc({required this.userRepository}) : super(UpdateState()) {
    on<InitUpdateEvent>(((event, emit) => {}));
    on<PasswordUpdateEvent>(_changePassword);
    on<CheckPasswordEvent>(_checkPassword);
  }

  _changePassword(PasswordUpdateEvent event, Emitter<UpdateState> emit) async {
    // emit(state.copyWith(status: BlocStatus.loading));
    final result = await userRepository.chagePasswordRepository(
        event.oldPassword, event.newPassword);

    result.success((data) {
      emit(state.copyWith(isSucess: true));
      showModalBar(
        "새로운 비밀번호로 변경되었습니다",
      );
    }).error((errorCode, message) {
      emit(state.copyWith(isSucess: false));
    });
  }

  _checkPassword(CheckPasswordEvent event, Emitter<UpdateState> emit) async {
    // final result = await userRepository
    //     .checkPasswordRepository(checkPasswordController.text);

    // result.success((data) {
    //   password.setValue(2, forceNotify: true);
    // }).error((errorCode, message) {
    //   password.setValue(3, forceNotify: true);
    // });
  }

  final AuthRepository userRepository;

  final TextEditingController checkPasswordController = TextEditingController();
  final TextEditingController changePasswordController =
      TextEditingController();
  final TextEditingController checkChangePasswordController =
      TextEditingController();

  final buttonEnableProvider = BooleanProvider(initValue: false);
  final isSuccess = BooleanProvider();

  final password = GenericProvider<int>(initValue: 0);
  final passwordCheck = GenericProvider<bool>(initValue: false);
  final passwordReg = GenericProvider<bool>(initValue: false);

  final passwordCloseIcon = GenericProvider<bool>(initValue: false);
  final passwordCheckCloseIcon = GenericProvider<bool>(initValue: false);
  final passwordRegCloseIcon = GenericProvider<bool>(initValue: false);

  void onCheckPassword(String text) async {
    if (text.isEmpty) {
      passwordCloseIcon.setValue(false, forceNotify: false);
    } else {
      passwordCloseIcon.setValue(true, forceNotify: true);
    }

    if (AccountUtils().availableUserPassword(text) &&
        (text.length >= 8 && 15 >= text.length)) {
      password.setValue(1, forceNotify: true);
    } else {
      password.setValue(0, forceNotify: false);
    }

    updateButtonEnable();
  }

  void onTextChangedPassword(String text) {
    if (text.isEmpty) {
      passwordRegCloseIcon.setValue(false, forceNotify: false);
    } else {
      passwordRegCloseIcon.setValue(true, forceNotify: true);
    }

    if (AccountUtils().availableUserPassword(text) &&
        (text.length >= 8 && 15 >= text.length)) {
      passwordReg.setValue(true, forceNotify: true);
    } else {
      passwordReg.setValue(false, forceNotify: false);
    }

    updateButtonEnable();
  }

  void onTextChangedPasswordCheck(String text) {
    if (text.isNotEmpty) {
      passwordCheckCloseIcon.setValue(true, forceNotify: true);
    } else {
      passwordCheckCloseIcon.setValue(false, forceNotify: false);
    }

    if (text == changePasswordController.text) {
      passwordCheck.setValue(true, forceNotify: true);
    } else {
      passwordCheck.setValue(false, forceNotify: false);
    }

    updateButtonEnable();
  }

  void updateButtonEnable() {
    buttonEnableProvider.setValue(availableCheck());
  }

  bool availableCheck() {
    if (passwordCheck.value == false ||
        passwordReg.value == false ||
        password.value != 2) {
      return false;
    } else {
      return true;
    }
  }
}
