import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:weddynew/base/bloc/base_bloc_state.dart';
import 'package:weddynew/screen/profile/bloc/profile_display_type.dart';

import '../../../base/bloc/bloc_state.dart';
import '../../../model/user_profile.dart';


part 'profile_state.freezed.dart';

@freezed
class ProfileState extends BaseBlocState with _$ProfileState {
  factory ProfileState({
    @Default(BlocStatus.none) BlocStatus status,
    @Default(UserProfile.empty) UserProfile profile,
    @Default(ProfileDisplayType.readOnly) ProfileDisplayType displayType
  }) = _ProfileState;
}

