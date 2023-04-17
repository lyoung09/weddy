import 'package:equatable/equatable.dart';

class AuthEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

class AuthSignupEvent extends AuthEvent {
  final String id;
  final String password;
  final String phoneNumber;
  final String name;
  final dynamic relationshipCode;
  AuthSignupEvent(this.id, this.password, this.phoneNumber, this.name,
      this.relationshipCode);
}

class AuthSignInEvent extends AuthEvent {
  AuthSignInEvent(this.id, this.password, this.autoLogin);

  final String id;
  final String password;
  final bool autoLogin;
}

class AuthForgotAccountEvent extends AuthEvent {}

class AuthForgotPasswordEvent extends AuthEvent {}

class AuthSmsVerifyInitEvent extends AuthEvent {
  // AuthSmsVerifyInitEvent(this.phoneNumber);

  // final String phoneNumber;
}

class AuthSmsVerifyRefreshEvent extends AuthEvent {
  AuthSmsVerifyRefreshEvent(this.pinCode);

  final String pinCode;
}

class AuthSmsVerifyPinCodeEvent extends AuthEvent {
  // AuthSmsVerifyPinCodeEvent(this.pinCode);

  // final String pinCode;
}
