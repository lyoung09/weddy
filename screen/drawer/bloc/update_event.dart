// ignore_for_file: public_member_api_docs, sort_constructors_first
class UpdateEvent {}

class InitUpdateEvent extends UpdateEvent {}

class CheckPasswordEvent extends UpdateEvent {}

class PasswordUpdateEvent extends UpdateEvent {
  final String oldPassword;
  final String newPassword;

  PasswordUpdateEvent(this.oldPassword, this.newPassword);
}
