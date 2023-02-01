///
//  Generated code. Do not modify.
//  source: grpc/app_auth.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:async' as $async;

import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'app_auth.pb.dart' as $0;
import '../common/app_common.pb.dart' as $1;
export 'app_auth.pb.dart';

class AppAuthServiceClient extends $grpc.Client {
  static final _$withdrawAccount =
      $grpc.ClientMethod<$0.AccountWithdrawRequest, $1.AppResultResponse>(
          '/AppAuthService/WithdrawAccount',
          ($0.AccountWithdrawRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $1.AppResultResponse.fromBuffer(value));
  static final _$changePassword =
      $grpc.ClientMethod<$0.ChangePasswordRequest, $1.AppResultResponse>(
          '/AppAuthService/ChangePassword',
          ($0.ChangePasswordRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $1.AppResultResponse.fromBuffer(value));
  static final _$signout =
      $grpc.ClientMethod<$0.SignoutRequest, $1.AppResultResponse>(
          '/AppAuthService/Signout',
          ($0.SignoutRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $1.AppResultResponse.fromBuffer(value));

  AppAuthServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options, interceptors: interceptors);

  $grpc.ResponseFuture<$1.AppResultResponse> withdrawAccount(
      $0.AccountWithdrawRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$withdrawAccount, request, options: options);
  }

  $grpc.ResponseFuture<$1.AppResultResponse> changePassword(
      $0.ChangePasswordRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$changePassword, request, options: options);
  }

  $grpc.ResponseFuture<$1.AppResultResponse> signout($0.SignoutRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$signout, request, options: options);
  }
}

abstract class AppAuthServiceBase extends $grpc.Service {
  $core.String get $name => 'AppAuthService';

  AppAuthServiceBase() {
    $addMethod(
        $grpc.ServiceMethod<$0.AccountWithdrawRequest, $1.AppResultResponse>(
            'WithdrawAccount',
            withdrawAccount_Pre,
            false,
            false,
            ($core.List<$core.int> value) =>
                $0.AccountWithdrawRequest.fromBuffer(value),
            ($1.AppResultResponse value) => value.writeToBuffer()));
    $addMethod(
        $grpc.ServiceMethod<$0.ChangePasswordRequest, $1.AppResultResponse>(
            'ChangePassword',
            changePassword_Pre,
            false,
            false,
            ($core.List<$core.int> value) =>
                $0.ChangePasswordRequest.fromBuffer(value),
            ($1.AppResultResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.SignoutRequest, $1.AppResultResponse>(
        'Signout',
        signout_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.SignoutRequest.fromBuffer(value),
        ($1.AppResultResponse value) => value.writeToBuffer()));
  }

  $async.Future<$1.AppResultResponse> withdrawAccount_Pre(
      $grpc.ServiceCall call,
      $async.Future<$0.AccountWithdrawRequest> request) async {
    return withdrawAccount(call, await request);
  }

  $async.Future<$1.AppResultResponse> changePassword_Pre($grpc.ServiceCall call,
      $async.Future<$0.ChangePasswordRequest> request) async {
    return changePassword(call, await request);
  }

  $async.Future<$1.AppResultResponse> signout_Pre(
      $grpc.ServiceCall call, $async.Future<$0.SignoutRequest> request) async {
    return signout(call, await request);
  }

  $async.Future<$1.AppResultResponse> withdrawAccount(
      $grpc.ServiceCall call, $0.AccountWithdrawRequest request);
  $async.Future<$1.AppResultResponse> changePassword(
      $grpc.ServiceCall call, $0.ChangePasswordRequest request);
  $async.Future<$1.AppResultResponse> signout(
      $grpc.ServiceCall call, $0.SignoutRequest request);
}
