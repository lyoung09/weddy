import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weddynew/apis/result.dart';
import 'package:weddynew/screen/auth/forgot/detail/change_password.dart';
import 'package:weddynew/screen/auth/forgot/detail/show_id.dart';

import '../../../base/bloc/base_bloc.dart';
import '../../../base/bloc/bloc_state.dart';
import '../../../provider/boolean_provider.dart';
import '../../../repository/auth_repository.dart';
import '../../home/home.dart';
import '../../profile/bloc/profile_display_type.dart';
import '../../profile/update/profile_update_page.dart';
import 'auth_event.dart';
import 'auth_state.dart';

class AuthBloc extends BaseBloc<AuthEvent, AuthState> {
  AuthBloc({required this.repository, AuthState? state})
      : super(state ?? AuthState()) {
    on<AuthSignInEvent>(_signInEventToState);
    on<AuthSmsVerifyInitEvent>(_smsVerifyInitEventToState);
    on<AuthSmsVerifyPinCodeEvent>(_smsVerifyPinCodeEventToState);
  }

  final AuthRepository repository;
  final pinCodeEditingController = TextEditingController();
  final buttonEnableProvider = BooleanProvider(initValue: false);
  pinCodeText(String value) {
    if (value.length == 4) {
      buttonEnableProvider.setValue(true);
    } else {
      buttonEnableProvider.setValue(false);
    }
  }

  void _signInEventToState(
      AuthSignInEvent event, Emitter<AuthState> emit) async {
    (await repository.signIn(event.id, event.password, event.autoLogin))
        .success((data) {
      navigate(HomePage.routeName, clearStack: true, arguments: 0);
    }).error((errorCode, message) {
      emit(state.copyWith(status: BlocStatus.error));
      showSnackBar(message);
    });
  }

  void _smsVerifyInitEventToState(
      AuthSmsVerifyInitEvent event, Emitter<AuthState> emit) async {
    String? phoneNumber = state.phoneNumber;

    if (phoneNumber != null) {
      final result = (await repository.smsVerifyRequest(phoneNumber));
      if (result.isSuccess) {
        emit(state.copyWith(status: BlocStatus.success));

        return;
      } else {
        emit(state.copyWith(status: BlocStatus.error));
      }
    }
  }

  void _smsVerifyPinCodeEventToState(
      AuthSmsVerifyPinCodeEvent event, Emitter<AuthState> emit) async {
    emit(state.copyWith(status: BlocStatus.loading));

    if (state.verifyType == 'forgotAccount') {
      Result result = await repository.verifySms(
          state.phoneNumber!, pinCodeEditingController.text);

      if (result.isSuccess) {
        final accountResult = await repository.findAccount(state.phoneNumber!);
        accountResult.success((data) {
          navigate(ShowIdScreen.routeName, arguments: 'young');
        }).error((errorCode, message) {});
      }
    } else {
      Result result = await repository.verifySms(
          state.phoneNumber!, pinCodeEditingController.text);
      debugPrint(state.verifyType! + "ttt");
      if (result.isSuccess) {
        emit(state.copyWith(status: BlocStatus.success));
        if (state.verifyType == 'signUp' &&
            state.id?.isNotEmpty == true &&
            state.password?.isNotEmpty == true &&
            state.phoneNumber?.isNotEmpty == true &&
            state.name?.isNotEmpty == true &&
            state.email != null) {
          result.success((data) {
            emit(state.copyWith(status: BlocStatus.next));
            var args = ProfileUpdateArgs(
                phoneNumber: state.phoneNumber!,
                email: state.email,
                id: state.id,
                password: state.password,
                name: state.name);
            navigate(ProfileUpdatePage.routeName,
                arguments: ProfileUpdatePage(
                  args: args,
                  displayType: ProfileDisplayType.signup,
                ));
          }).error((errorCode, message) {
            showModalBar("인증 번호가 잘못되었습니다");
            emit(state.copyWith(status: BlocStatus.error));
          });
        } else if (state.verifyType!.trim() == 'forgotPassword') {
          if (result.isSuccess) {
            navigate(ChangePasswordScreen.routeName, arguments: state.id);
          }
        } else {
          emit(state.copyWith(status: BlocStatus.next));
          pop();
        }
      } else {
        showModalBar(
          "인증 번호가 잘못되었습니다",
        );
        emit(state.copyWith(status: BlocStatus.error));
      }
    }
  }
}
