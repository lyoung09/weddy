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
    required this.userProfile,
    required this.displayType
  });

  final UserProfile userProfile;
  final ProfileDisplayType displayType;
}

class DeleteProfileEvent extends ProfileEvent {
}