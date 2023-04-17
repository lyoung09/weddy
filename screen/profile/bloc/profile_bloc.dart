import 'dart:ffi';
import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weddynew/apis/result.dart';
import 'package:weddynew/model/user_profile.dart';
import 'package:weddynew/screen/profile/bloc/profile_display_type.dart';
import 'package:weddynew/screen/profile/bloc/profile_event.dart';
import 'package:weddynew/screen/profile/bloc/profile_state.dart';

import '../../../base/bloc/base_bloc.dart';
import '../../../base/bloc/bloc_state.dart';
import '../../../provider/generic_provider.dart';
import '../../../repository/auth_repository.dart';
import '../../auth/signin/signin_page.dart';

import '../../home/home.dart';
import '../update/profile_update_page.dart';

class ProfileBloc extends BaseBloc<ProfileEvent, ProfileState> {
  ProfileBloc({required this.repository}) : super(ProfileState()) {
    on<InitProfileEvent>(_mapInitUserProfileEventToState);
    on<UpdateProfileEvent>(_updateUserProfileEventToState);
    on<DeleteProfileEvent>(_deleteUserProfileEventToState);
  }

  final AuthRepository repository;

  void _mapInitUserProfileEventToState(
      InitProfileEvent event, Emitter<ProfileState> emit) async {
    emit(state.copyWith(
        status: BlocStatus.success, displayType: event.displayType));
    // (await repository.getUserProfile()).success((data) {
    //   emit(state.copyWith(status: BlocStatus.success, profile: data));
    // }).error((errorCode, message) {
    //   emit(state.copyWith(status: BlocStatus.error));
    // });

    //emit(state.copyWith(status: BlocStatus.success, profile: args));
  }

  void _updateUserProfileEventToState(
      UpdateProfileEvent event, Emitter<ProfileState> emit) async {
    final result = await repository.signup(
        event.id,
        event.name,
        event.password,
        int.parse(event.phoneNumber),
        event.relationshipCode,
        event.email,
        event.userProfile.ceremonyDate.toString(),
        event.userProfile.weddingBudget,
        event.userProfile.divisionCode!);

    result.success((data) async {
      await repository.updateUserProfile(UserProfile(
        name: event.name,
        ceremonyDate: event.userProfile.ceremonyDate,
        relationShipCode: event.relationshipCode,
        divisionCode: event.userProfile.divisionCode,
        weddingBudget: event.userProfile.weddingBudget,
      ));
      navigate(HomePage.routeName, clearStack: true, arguments: 0);
    });
  }

  void _deleteUserProfileEventToState(
      DeleteProfileEvent event, Emitter<ProfileState> emit) async {
    await repository.deleteAll(event.password);
    navigate(SignInPage.routeName, clearStack: true);
  }

  void navigateProfileUpdate(ProfileDisplayType displayType) {
    navigate(ProfileUpdatePage.routeName, arguments: displayType,
        callback: (value) {
      add(InitProfileEvent());
    });
  }
}
