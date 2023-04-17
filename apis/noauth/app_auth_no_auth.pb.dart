///
//  Generated code. Do not modify.
//  source: app_auth_no_auth.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:core' as $core;

import 'package:fixnum/fixnum.dart' as $fixnum;
import 'package:protobuf/protobuf.dart' as $pb;

class IsDuplicatedIdRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'IsDuplicatedIdRequest', createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'userId', protoName: 'userId')
    ..hasRequiredFields = false
  ;

  IsDuplicatedIdRequest._() : super();
  factory IsDuplicatedIdRequest({
    $core.String? userId,
  }) {
    final _result = create();
    if (userId != null) {
      _result.userId = userId;
    }
    return _result;
  }
  factory IsDuplicatedIdRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory IsDuplicatedIdRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  IsDuplicatedIdRequest clone() => IsDuplicatedIdRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  IsDuplicatedIdRequest copyWith(void Function(IsDuplicatedIdRequest) updates) => super.copyWith((message) => updates(message as IsDuplicatedIdRequest)) as IsDuplicatedIdRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static IsDuplicatedIdRequest create() => IsDuplicatedIdRequest._();
  IsDuplicatedIdRequest createEmptyInstance() => create();
  static $pb.PbList<IsDuplicatedIdRequest> createRepeated() => $pb.PbList<IsDuplicatedIdRequest>();
  @$core.pragma('dart2js:noInline')
  static IsDuplicatedIdRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<IsDuplicatedIdRequest>(create);
  static IsDuplicatedIdRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get userId => $_getSZ(0);
  @$pb.TagNumber(1)
  set userId($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasUserId() => $_has(0);
  @$pb.TagNumber(1)
  void clearUserId() => clearField(1);
}

class IsDuplicatedIdResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'IsDuplicatedIdResponse', createEmptyInstance: create)
    ..aOB(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'isDuplicatedId', protoName: 'isDuplicatedId')
    ..hasRequiredFields = false
  ;

  IsDuplicatedIdResponse._() : super();
  factory IsDuplicatedIdResponse({
    $core.bool? isDuplicatedId,
  }) {
    final _result = create();
    if (isDuplicatedId != null) {
      _result.isDuplicatedId = isDuplicatedId;
    }
    return _result;
  }
  factory IsDuplicatedIdResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory IsDuplicatedIdResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  IsDuplicatedIdResponse clone() => IsDuplicatedIdResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  IsDuplicatedIdResponse copyWith(void Function(IsDuplicatedIdResponse) updates) => super.copyWith((message) => updates(message as IsDuplicatedIdResponse)) as IsDuplicatedIdResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static IsDuplicatedIdResponse create() => IsDuplicatedIdResponse._();
  IsDuplicatedIdResponse createEmptyInstance() => create();
  static $pb.PbList<IsDuplicatedIdResponse> createRepeated() => $pb.PbList<IsDuplicatedIdResponse>();
  @$core.pragma('dart2js:noInline')
  static IsDuplicatedIdResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<IsDuplicatedIdResponse>(create);
  static IsDuplicatedIdResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.bool get isDuplicatedId => $_getBF(0);
  @$pb.TagNumber(1)
  set isDuplicatedId($core.bool v) { $_setBool(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasIsDuplicatedId() => $_has(0);
  @$pb.TagNumber(1)
  void clearIsDuplicatedId() => clearField(1);
}

class SignupRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'SignupRequest', createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'userId', protoName: 'userId')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'userName', protoName: 'userName')
    ..aOS(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'password')
    ..aOS(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'phoneNumber', protoName: 'phoneNumber')
    ..a<$core.int>(6, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'relationshipCode', $pb.PbFieldType.O3, protoName: 'relationshipCode')
    ..aOS(7, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'userPlatform', protoName: 'userPlatform')
    ..aOS(8, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'userEmail', protoName: 'userEmail')
    ..aOS(9, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'ceremonyDate', protoName: 'ceremonyDate')
    ..aInt64(10, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'weddingBudget', protoName: 'weddingBudget')
    ..aInt64(11, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'weddingAdminDivisionCode', protoName: 'weddingAdminDivisionCode')
    ..aOS(12, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'deviceId', protoName: 'deviceId')
    ..aOS(13, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'pushToken', protoName: 'pushToken')
    ..hasRequiredFields = false
  ;

  SignupRequest._() : super();
  factory SignupRequest({
    $core.String? userId,
    $core.String? userName,
    $core.String? password,
    $core.String? phoneNumber,
    $core.int? relationshipCode,
    $core.String? userPlatform,
    $core.String? userEmail,
    $core.String? ceremonyDate,
    $fixnum.Int64? weddingBudget,
    $fixnum.Int64? weddingAdminDivisionCode,
    $core.String? deviceId,
    $core.String? pushToken,
  }) {
    final _result = create();
    if (userId != null) {
      _result.userId = userId;
    }
    if (userName != null) {
      _result.userName = userName;
    }
    if (password != null) {
      _result.password = password;
    }
    if (phoneNumber != null) {
      _result.phoneNumber = phoneNumber;
    }
    if (relationshipCode != null) {
      _result.relationshipCode = relationshipCode;
    }
    if (userPlatform != null) {
      _result.userPlatform = userPlatform;
    }
    if (userEmail != null) {
      _result.userEmail = userEmail;
    }
    if (ceremonyDate != null) {
      _result.ceremonyDate = ceremonyDate;
    }
    if (weddingBudget != null) {
      _result.weddingBudget = weddingBudget;
    }
    if (weddingAdminDivisionCode != null) {
      _result.weddingAdminDivisionCode = weddingAdminDivisionCode;
    }
    if (deviceId != null) {
      _result.deviceId = deviceId;
    }
    if (pushToken != null) {
      _result.pushToken = pushToken;
    }
    return _result;
  }
  factory SignupRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SignupRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  SignupRequest clone() => SignupRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  SignupRequest copyWith(void Function(SignupRequest) updates) => super.copyWith((message) => updates(message as SignupRequest)) as SignupRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static SignupRequest create() => SignupRequest._();
  SignupRequest createEmptyInstance() => create();
  static $pb.PbList<SignupRequest> createRepeated() => $pb.PbList<SignupRequest>();
  @$core.pragma('dart2js:noInline')
  static SignupRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SignupRequest>(create);
  static SignupRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get userId => $_getSZ(0);
  @$pb.TagNumber(1)
  set userId($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasUserId() => $_has(0);
  @$pb.TagNumber(1)
  void clearUserId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get userName => $_getSZ(1);
  @$pb.TagNumber(2)
  set userName($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasUserName() => $_has(1);
  @$pb.TagNumber(2)
  void clearUserName() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get password => $_getSZ(2);
  @$pb.TagNumber(3)
  set password($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasPassword() => $_has(2);
  @$pb.TagNumber(3)
  void clearPassword() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get phoneNumber => $_getSZ(3);
  @$pb.TagNumber(4)
  set phoneNumber($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasPhoneNumber() => $_has(3);
  @$pb.TagNumber(4)
  void clearPhoneNumber() => clearField(4);

  @$pb.TagNumber(6)
  $core.int get relationshipCode => $_getIZ(4);
  @$pb.TagNumber(6)
  set relationshipCode($core.int v) { $_setSignedInt32(4, v); }
  @$pb.TagNumber(6)
  $core.bool hasRelationshipCode() => $_has(4);
  @$pb.TagNumber(6)
  void clearRelationshipCode() => clearField(6);

  @$pb.TagNumber(7)
  $core.String get userPlatform => $_getSZ(5);
  @$pb.TagNumber(7)
  set userPlatform($core.String v) { $_setString(5, v); }
  @$pb.TagNumber(7)
  $core.bool hasUserPlatform() => $_has(5);
  @$pb.TagNumber(7)
  void clearUserPlatform() => clearField(7);

  @$pb.TagNumber(8)
  $core.String get userEmail => $_getSZ(6);
  @$pb.TagNumber(8)
  set userEmail($core.String v) { $_setString(6, v); }
  @$pb.TagNumber(8)
  $core.bool hasUserEmail() => $_has(6);
  @$pb.TagNumber(8)
  void clearUserEmail() => clearField(8);

  @$pb.TagNumber(9)
  $core.String get ceremonyDate => $_getSZ(7);
  @$pb.TagNumber(9)
  set ceremonyDate($core.String v) { $_setString(7, v); }
  @$pb.TagNumber(9)
  $core.bool hasCeremonyDate() => $_has(7);
  @$pb.TagNumber(9)
  void clearCeremonyDate() => clearField(9);

  @$pb.TagNumber(10)
  $fixnum.Int64 get weddingBudget => $_getI64(8);
  @$pb.TagNumber(10)
  set weddingBudget($fixnum.Int64 v) { $_setInt64(8, v); }
  @$pb.TagNumber(10)
  $core.bool hasWeddingBudget() => $_has(8);
  @$pb.TagNumber(10)
  void clearWeddingBudget() => clearField(10);

  @$pb.TagNumber(11)
  $fixnum.Int64 get weddingAdminDivisionCode => $_getI64(9);
  @$pb.TagNumber(11)
  set weddingAdminDivisionCode($fixnum.Int64 v) { $_setInt64(9, v); }
  @$pb.TagNumber(11)
  $core.bool hasWeddingAdminDivisionCode() => $_has(9);
  @$pb.TagNumber(11)
  void clearWeddingAdminDivisionCode() => clearField(11);

  @$pb.TagNumber(12)
  $core.String get deviceId => $_getSZ(10);
  @$pb.TagNumber(12)
  set deviceId($core.String v) { $_setString(10, v); }
  @$pb.TagNumber(12)
  $core.bool hasDeviceId() => $_has(10);
  @$pb.TagNumber(12)
  void clearDeviceId() => clearField(12);

  @$pb.TagNumber(13)
  $core.String get pushToken => $_getSZ(11);
  @$pb.TagNumber(13)
  set pushToken($core.String v) { $_setString(11, v); }
  @$pb.TagNumber(13)
  $core.bool hasPushToken() => $_has(11);
  @$pb.TagNumber(13)
  void clearPushToken() => clearField(13);
}

class SignupResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'SignupResponse', createEmptyInstance: create)
    ..a<$core.int>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'resultCode', $pb.PbFieldType.O3, protoName: 'resultCode')
    ..hasRequiredFields = false
  ;

  SignupResponse._() : super();
  factory SignupResponse({
    $core.int? resultCode,
  }) {
    final _result = create();
    if (resultCode != null) {
      _result.resultCode = resultCode;
    }
    return _result;
  }
  factory SignupResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SignupResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  SignupResponse clone() => SignupResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  SignupResponse copyWith(void Function(SignupResponse) updates) => super.copyWith((message) => updates(message as SignupResponse)) as SignupResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static SignupResponse create() => SignupResponse._();
  SignupResponse createEmptyInstance() => create();
  static $pb.PbList<SignupResponse> createRepeated() => $pb.PbList<SignupResponse>();
  @$core.pragma('dart2js:noInline')
  static SignupResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SignupResponse>(create);
  static SignupResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get resultCode => $_getIZ(0);
  @$pb.TagNumber(1)
  set resultCode($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasResultCode() => $_has(0);
  @$pb.TagNumber(1)
  void clearResultCode() => clearField(1);
}

class SigninRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'SigninRequest', createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'userId', protoName: 'userId')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'password')
    ..aOS(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'deviceId', protoName: 'deviceId')
    ..aOS(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'pushToken', protoName: 'pushToken')
    ..aOS(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'userPlatform', protoName: 'userPlatform')
    ..hasRequiredFields = false
  ;

  SigninRequest._() : super();
  factory SigninRequest({
    $core.String? userId,
    $core.String? password,
    $core.String? deviceId,
    $core.String? pushToken,
    $core.String? userPlatform,
  }) {
    final _result = create();
    if (userId != null) {
      _result.userId = userId;
    }
    if (password != null) {
      _result.password = password;
    }
    if (deviceId != null) {
      _result.deviceId = deviceId;
    }
    if (pushToken != null) {
      _result.pushToken = pushToken;
    }
    if (userPlatform != null) {
      _result.userPlatform = userPlatform;
    }
    return _result;
  }
  factory SigninRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SigninRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  SigninRequest clone() => SigninRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  SigninRequest copyWith(void Function(SigninRequest) updates) => super.copyWith((message) => updates(message as SigninRequest)) as SigninRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static SigninRequest create() => SigninRequest._();
  SigninRequest createEmptyInstance() => create();
  static $pb.PbList<SigninRequest> createRepeated() => $pb.PbList<SigninRequest>();
  @$core.pragma('dart2js:noInline')
  static SigninRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SigninRequest>(create);
  static SigninRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get userId => $_getSZ(0);
  @$pb.TagNumber(1)
  set userId($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasUserId() => $_has(0);
  @$pb.TagNumber(1)
  void clearUserId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get password => $_getSZ(1);
  @$pb.TagNumber(2)
  set password($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasPassword() => $_has(1);
  @$pb.TagNumber(2)
  void clearPassword() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get deviceId => $_getSZ(2);
  @$pb.TagNumber(3)
  set deviceId($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasDeviceId() => $_has(2);
  @$pb.TagNumber(3)
  void clearDeviceId() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get pushToken => $_getSZ(3);
  @$pb.TagNumber(4)
  set pushToken($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasPushToken() => $_has(3);
  @$pb.TagNumber(4)
  void clearPushToken() => clearField(4);

  @$pb.TagNumber(5)
  $core.String get userPlatform => $_getSZ(4);
  @$pb.TagNumber(5)
  set userPlatform($core.String v) { $_setString(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasUserPlatform() => $_has(4);
  @$pb.TagNumber(5)
  void clearUserPlatform() => clearField(5);
}

class SigninResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'SigninResponse', createEmptyInstance: create)
    ..a<$core.int>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'resultCode', $pb.PbFieldType.O3, protoName: 'resultCode')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'authToken', protoName: 'authToken')
    ..hasRequiredFields = false
  ;

  SigninResponse._() : super();
  factory SigninResponse({
    $core.int? resultCode,
    $core.String? authToken,
  }) {
    final _result = create();
    if (resultCode != null) {
      _result.resultCode = resultCode;
    }
    if (authToken != null) {
      _result.authToken = authToken;
    }
    return _result;
  }
  factory SigninResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SigninResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  SigninResponse clone() => SigninResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  SigninResponse copyWith(void Function(SigninResponse) updates) => super.copyWith((message) => updates(message as SigninResponse)) as SigninResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static SigninResponse create() => SigninResponse._();
  SigninResponse createEmptyInstance() => create();
  static $pb.PbList<SigninResponse> createRepeated() => $pb.PbList<SigninResponse>();
  @$core.pragma('dart2js:noInline')
  static SigninResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SigninResponse>(create);
  static SigninResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get resultCode => $_getIZ(0);
  @$pb.TagNumber(1)
  set resultCode($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasResultCode() => $_has(0);
  @$pb.TagNumber(1)
  void clearResultCode() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get authToken => $_getSZ(1);
  @$pb.TagNumber(2)
  set authToken($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasAuthToken() => $_has(1);
  @$pb.TagNumber(2)
  void clearAuthToken() => clearField(2);
}

class ForgotUserIdRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'ForgotUserIdRequest', createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'phoneNumber', protoName: 'phoneNumber')
    ..hasRequiredFields = false
  ;

  ForgotUserIdRequest._() : super();
  factory ForgotUserIdRequest({
    $core.String? phoneNumber,
  }) {
    final _result = create();
    if (phoneNumber != null) {
      _result.phoneNumber = phoneNumber;
    }
    return _result;
  }
  factory ForgotUserIdRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ForgotUserIdRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ForgotUserIdRequest clone() => ForgotUserIdRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ForgotUserIdRequest copyWith(void Function(ForgotUserIdRequest) updates) => super.copyWith((message) => updates(message as ForgotUserIdRequest)) as ForgotUserIdRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ForgotUserIdRequest create() => ForgotUserIdRequest._();
  ForgotUserIdRequest createEmptyInstance() => create();
  static $pb.PbList<ForgotUserIdRequest> createRepeated() => $pb.PbList<ForgotUserIdRequest>();
  @$core.pragma('dart2js:noInline')
  static ForgotUserIdRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ForgotUserIdRequest>(create);
  static ForgotUserIdRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get phoneNumber => $_getSZ(0);
  @$pb.TagNumber(1)
  set phoneNumber($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasPhoneNumber() => $_has(0);
  @$pb.TagNumber(1)
  void clearPhoneNumber() => clearField(1);
}

class ForgotPasswordRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'ForgotPasswordRequest', createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'userId', protoName: 'userId')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'phoneNumber', protoName: 'phoneNumber')
    ..hasRequiredFields = false
  ;

  ForgotPasswordRequest._() : super();
  factory ForgotPasswordRequest({
    $core.String? userId,
    $core.String? phoneNumber,
  }) {
    final _result = create();
    if (userId != null) {
      _result.userId = userId;
    }
    if (phoneNumber != null) {
      _result.phoneNumber = phoneNumber;
    }
    return _result;
  }
  factory ForgotPasswordRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ForgotPasswordRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ForgotPasswordRequest clone() => ForgotPasswordRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ForgotPasswordRequest copyWith(void Function(ForgotPasswordRequest) updates) => super.copyWith((message) => updates(message as ForgotPasswordRequest)) as ForgotPasswordRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ForgotPasswordRequest create() => ForgotPasswordRequest._();
  ForgotPasswordRequest createEmptyInstance() => create();
  static $pb.PbList<ForgotPasswordRequest> createRepeated() => $pb.PbList<ForgotPasswordRequest>();
  @$core.pragma('dart2js:noInline')
  static ForgotPasswordRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ForgotPasswordRequest>(create);
  static ForgotPasswordRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get userId => $_getSZ(0);
  @$pb.TagNumber(1)
  set userId($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasUserId() => $_has(0);
  @$pb.TagNumber(1)
  void clearUserId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get phoneNumber => $_getSZ(1);
  @$pb.TagNumber(2)
  set phoneNumber($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasPhoneNumber() => $_has(1);
  @$pb.TagNumber(2)
  void clearPhoneNumber() => clearField(2);
}

class AuthRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'AuthRequest', createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'phoneNumber', protoName: 'phoneNumber')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'authValue', protoName: 'authValue')
    ..hasRequiredFields = false
  ;

  AuthRequest._() : super();
  factory AuthRequest({
    $core.String? phoneNumber,
    $core.String? authValue,
  }) {
    final _result = create();
    if (phoneNumber != null) {
      _result.phoneNumber = phoneNumber;
    }
    if (authValue != null) {
      _result.authValue = authValue;
    }
    return _result;
  }
  factory AuthRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory AuthRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  AuthRequest clone() => AuthRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  AuthRequest copyWith(void Function(AuthRequest) updates) => super.copyWith((message) => updates(message as AuthRequest)) as AuthRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static AuthRequest create() => AuthRequest._();
  AuthRequest createEmptyInstance() => create();
  static $pb.PbList<AuthRequest> createRepeated() => $pb.PbList<AuthRequest>();
  @$core.pragma('dart2js:noInline')
  static AuthRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<AuthRequest>(create);
  static AuthRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get phoneNumber => $_getSZ(0);
  @$pb.TagNumber(1)
  set phoneNumber($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasPhoneNumber() => $_has(0);
  @$pb.TagNumber(1)
  void clearPhoneNumber() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get authValue => $_getSZ(1);
  @$pb.TagNumber(2)
  set authValue($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasAuthValue() => $_has(1);
  @$pb.TagNumber(2)
  void clearAuthValue() => clearField(2);
}

