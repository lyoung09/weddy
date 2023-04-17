///
//  Generated code. Do not modify.
//  source: app_auth_no_auth.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:async' as $async;

import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'app_auth_no_auth.pb.dart' as $0;
import '../common/app_common.pb.dart' as $1;
export 'app_auth_no_auth.pb.dart';

class AppAuthServiceWithoutTokenClient extends $grpc.Client {
  static final _$signup =
      $grpc.ClientMethod<$0.SignupRequest, $0.SignupResponse>(
          '/AppAuthServiceWithoutToken/Signup',
          ($0.SignupRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $0.SignupResponse.fromBuffer(value));
  static final _$isDuplicatedId =
      $grpc.ClientMethod<$0.IsDuplicatedIdRequest, $0.IsDuplicatedIdResponse>(
          '/AppAuthServiceWithoutToken/IsDuplicatedId',
          ($0.IsDuplicatedIdRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $0.IsDuplicatedIdResponse.fromBuffer(value));
  static final _$signin =
      $grpc.ClientMethod<$0.SigninRequest, $0.SigninResponse>(
          '/AppAuthServiceWithoutToken/Signin',
          ($0.SigninRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $0.SigninResponse.fromBuffer(value));
  static final _$forgotUserId =
      $grpc.ClientMethod<$0.ForgotUserIdRequest, $1.AppResultResponse>(
          '/AppAuthServiceWithoutToken/ForgotUserId',
          ($0.ForgotUserIdRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $1.AppResultResponse.fromBuffer(value));
  static final _$forgotPassword =
      $grpc.ClientMethod<$0.ForgotPasswordRequest, $1.AppResultResponse>(
          '/AppAuthServiceWithoutToken/ForgotPassword',
          ($0.ForgotPasswordRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $1.AppResultResponse.fromBuffer(value));
  static final _$sendAuthSms =
      $grpc.ClientMethod<$0.AuthRequest, $1.AppResultResponse>(
          '/AppAuthServiceWithoutToken/SendAuthSms',
          ($0.AuthRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $1.AppResultResponse.fromBuffer(value));
  static final _$verifyAuthSms =
      $grpc.ClientMethod<$0.AuthRequest, $1.AppResultResponse>(
          '/AppAuthServiceWithoutToken/VerifyAuthSms',
          ($0.AuthRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $1.AppResultResponse.fromBuffer(value));

  AppAuthServiceWithoutTokenClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options, interceptors: interceptors);

  $grpc.ResponseFuture<$0.SignupResponse> signup($0.SignupRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$signup, request, options: options);
  }

  $grpc.ResponseFuture<$0.IsDuplicatedIdResponse> isDuplicatedId(
      $0.IsDuplicatedIdRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$isDuplicatedId, request, options: options);
  }

  $grpc.ResponseFuture<$0.SigninResponse> signin($0.SigninRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$signin, request, options: options);
  }

  $grpc.ResponseFuture<$1.AppResultResponse> forgotUserId(
      $0.ForgotUserIdRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$forgotUserId, request, options: options);
  }

  $grpc.ResponseFuture<$1.AppResultResponse> forgotPassword(
      $0.ForgotPasswordRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$forgotPassword, request, options: options);
  }

  $grpc.ResponseFuture<$1.AppResultResponse> sendAuthSms($0.AuthRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$sendAuthSms, request, options: options);
  }

  $grpc.ResponseFuture<$1.AppResultResponse> verifyAuthSms(
      $0.AuthRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$verifyAuthSms, request, options: options);
  }
}

abstract class AppAuthServiceWithoutTokenServiceBase extends $grpc.Service {
  $core.String get $name => 'AppAuthServiceWithoutToken';

  AppAuthServiceWithoutTokenServiceBase() {
    $addMethod($grpc.ServiceMethod<$0.SignupRequest, $0.SignupResponse>(
        'Signup',
        signup_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.SignupRequest.fromBuffer(value),
        ($0.SignupResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.IsDuplicatedIdRequest,
            $0.IsDuplicatedIdResponse>(
        'IsDuplicatedId',
        isDuplicatedId_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $0.IsDuplicatedIdRequest.fromBuffer(value),
        ($0.IsDuplicatedIdResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.SigninRequest, $0.SigninResponse>(
        'Signin',
        signin_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.SigninRequest.fromBuffer(value),
        ($0.SigninResponse value) => value.writeToBuffer()));
    $addMethod(
        $grpc.ServiceMethod<$0.ForgotUserIdRequest, $1.AppResultResponse>(
            'ForgotUserId',
            forgotUserId_Pre,
            false,
            false,
            ($core.List<$core.int> value) =>
                $0.ForgotUserIdRequest.fromBuffer(value),
            ($1.AppResultResponse value) => value.writeToBuffer()));
    $addMethod(
        $grpc.ServiceMethod<$0.ForgotPasswordRequest, $1.AppResultResponse>(
            'ForgotPassword',
            forgotPassword_Pre,
            false,
            false,
            ($core.List<$core.int> value) =>
                $0.ForgotPasswordRequest.fromBuffer(value),
            ($1.AppResultResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.AuthRequest, $1.AppResultResponse>(
        'SendAuthSms',
        sendAuthSms_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.AuthRequest.fromBuffer(value),
        ($1.AppResultResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.AuthRequest, $1.AppResultResponse>(
        'VerifyAuthSms',
        verifyAuthSms_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.AuthRequest.fromBuffer(value),
        ($1.AppResultResponse value) => value.writeToBuffer()));
  }

  $async.Future<$0.SignupResponse> signup_Pre(
      $grpc.ServiceCall call, $async.Future<$0.SignupRequest> request) async {
    return signup(call, await request);
  }

  $async.Future<$0.IsDuplicatedIdResponse> isDuplicatedId_Pre(
      $grpc.ServiceCall call,
      $async.Future<$0.IsDuplicatedIdRequest> request) async {
    return isDuplicatedId(call, await request);
  }

  $async.Future<$0.SigninResponse> signin_Pre(
      $grpc.ServiceCall call, $async.Future<$0.SigninRequest> request) async {
    return signin(call, await request);
  }

  $async.Future<$1.AppResultResponse> forgotUserId_Pre($grpc.ServiceCall call,
      $async.Future<$0.ForgotUserIdRequest> request) async {
    return forgotUserId(call, await request);
  }

  $async.Future<$1.AppResultResponse> forgotPassword_Pre($grpc.ServiceCall call,
      $async.Future<$0.ForgotPasswordRequest> request) async {
    return forgotPassword(call, await request);
  }

  $async.Future<$1.AppResultResponse> sendAuthSms_Pre(
      $grpc.ServiceCall call, $async.Future<$0.AuthRequest> request) async {
    return sendAuthSms(call, await request);
  }

  $async.Future<$1.AppResultResponse> verifyAuthSms_Pre(
      $grpc.ServiceCall call, $async.Future<$0.AuthRequest> request) async {
    return verifyAuthSms(call, await request);
  }

  $async.Future<$0.SignupResponse> signup(
      $grpc.ServiceCall call, $0.SignupRequest request);
  $async.Future<$0.IsDuplicatedIdResponse> isDuplicatedId(
      $grpc.ServiceCall call, $0.IsDuplicatedIdRequest request);
  $async.Future<$0.SigninResponse> signin(
      $grpc.ServiceCall call, $0.SigninRequest request);
  $async.Future<$1.AppResultResponse> forgotUserId(
      $grpc.ServiceCall call, $0.ForgotUserIdRequest request);
  $async.Future<$1.AppResultResponse> forgotPassword(
      $grpc.ServiceCall call, $0.ForgotPasswordRequest request);
  $async.Future<$1.AppResultResponse> sendAuthSms(
      $grpc.ServiceCall call, $0.AuthRequest request);
  $async.Future<$1.AppResultResponse> verifyAuthSms(
      $grpc.ServiceCall call, $0.AuthRequest request);
}
