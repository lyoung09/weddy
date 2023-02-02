import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weddynew/apis/result.dart';

import '../../../base/bloc/base_bloc.dart';
import '../../../base/bloc/bloc_state.dart';
import '../../../repository/auth_repository.dart';
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

  void _signInEventToState(
      AuthSignInEvent event, Emitter<AuthState> emit) async {
    (await repository.signIn(event.id, event.password, event.autoLogin))
        .success((data) {
      //  navigate(HomePage.routeName, clearStack: true);
    }).error((errorCode, message) {
      emit(state.copyWith(status: BlocStatus.error));
      showSnackBar(message);
    });
  }

  void _smsVerifyInitEventToState(
      AuthSmsVerifyInitEvent event, Emitter<AuthState> emit) async {
    emit(state.copyWith(status: BlocStatus.loading));
    String? phoneNumber = state.phoneNumber;

    if (phoneNumber != null) {
      final result = (await repository.smsVerifyRequest(phoneNumber));
      if (result.isSuccess) {
        emit(state.copyWith(status: BlocStatus.success));
        return;
      }
    }

    emit(state.copyWith(status: BlocStatus.error));
  }

  void _smsVerifyPinCodeEventToState(
      AuthSmsVerifyPinCodeEvent event, Emitter<AuthState> emit) async {
    Result result =
        await repository.verifySms(state.phoneNumber!, event.pinCode);
    if (result.isSuccess) {
      if (state.verifyType == 'signup' &&
          state.id?.isNotEmpty == true &&
          state.password?.isNotEmpty == true &&
          state.phoneNumber?.isNotEmpty == true &&
          state.name?.isNotEmpty == true &&
          state.gender != null) {
        if (result.isSuccess) {
          result = await repository.signup(state.id!, state.password!,
              state.phoneNumber!, state.name!, state.gender!);
          if (result.isSuccess) {
            result = await repository.signIn(state.id!, state.password!, true);
          }
        }

        result.success((data) {
          emit(state.copyWith(status: BlocStatus.next));
          // navigate(ProfileUpdatePage.routeName,
          //     arguments: ProfileDisplayType.signup);
        }).error((errorCode, message) {
          emit(state.copyWith(status: BlocStatus.error));
          showSnackBar(message);
        });
      } else {
        emit(state.copyWith(status: BlocStatus.next));
        pop();
      }
    } else {
      emit(state.copyWith(status: BlocStatus.error));
      showSnackBar((result as Error).message);
    }
  }
}
