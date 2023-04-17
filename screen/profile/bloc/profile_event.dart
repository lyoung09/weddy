// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:equatable/equatable.dart';

import 'package:weddynew/screen/profile/bloc/profile_display_type.dart';

import '../../../model/user_profile.dart';

class ProfileEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

class InitProfileEvent extends ProfileEvent {
  InitProfileEvent({this.displayType = ProfileDisplayType.readOnly});

  final ProfileDisplayType displayType;
}

class UpdateProfileEvent extends ProfileEvent {
  UpdateProfileEvent({
    required this.id,
    required this.password,
    required this.phoneNumber,
    required this.name,
    required this.relationshipCode,
    required this.userProfile,
    required this.displayType,
    required this.email,
  });
  final String id;
  final String password;
  final String phoneNumber;
  final String name;
  final String email;
  final dynamic relationshipCode;
  final UserProfile userProfile;
  final ProfileDisplayType displayType;
}

class DeleteProfileEvent extends ProfileEvent {
  String password;
  DeleteProfileEvent({
    required this.password,
  });
}

class AgreementService extends ProfileEvent {
  final bool check;

  AgreementService(this.check);
}

class RegionNameService extends ProfileEvent {
  final int num;

  RegionNameService(
    this.num,
  );
}
