///
//  Generated code. Do not modify.
//  source: grpc/app_common.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:core' as $core;

import 'package:fixnum/fixnum.dart' as $fixnum;
import 'package:protobuf/protobuf.dart' as $pb;

class AppResultResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'AppResultResponse', createEmptyInstance: create)
    ..a<$core.int>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'resultCode', $pb.PbFieldType.O3, protoName: 'resultCode')
    ..hasRequiredFields = false
  ;

  AppResultResponse._() : super();
  factory AppResultResponse({
    $core.int? resultCode,
  }) {
    final _result = create();
    if (resultCode != null) {
      _result.resultCode = resultCode;
    }
    return _result;
  }
  factory AppResultResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory AppResultResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  AppResultResponse clone() => AppResultResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  AppResultResponse copyWith(void Function(AppResultResponse) updates) => super.copyWith((message) => updates(message as AppResultResponse)) as AppResultResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static AppResultResponse create() => AppResultResponse._();
  AppResultResponse createEmptyInstance() => create();
  static $pb.PbList<AppResultResponse> createRepeated() => $pb.PbList<AppResultResponse>();
  @$core.pragma('dart2js:noInline')
  static AppResultResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<AppResultResponse>(create);
  static AppResultResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get resultCode => $_getIZ(0);
  @$pb.TagNumber(1)
  set resultCode($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasResultCode() => $_has(0);
  @$pb.TagNumber(1)
  void clearResultCode() => clearField(1);
}

class CommonRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'CommonRequest', createEmptyInstance: create)
    ..aInt64(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'timestamp')
    ..hasRequiredFields = false
  ;

  CommonRequest._() : super();
  factory CommonRequest({
    $fixnum.Int64? timestamp,
  }) {
    final _result = create();
    if (timestamp != null) {
      _result.timestamp = timestamp;
    }
    return _result;
  }
  factory CommonRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CommonRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  CommonRequest clone() => CommonRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  CommonRequest copyWith(void Function(CommonRequest) updates) => super.copyWith((message) => updates(message as CommonRequest)) as CommonRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static CommonRequest create() => CommonRequest._();
  CommonRequest createEmptyInstance() => create();
  static $pb.PbList<CommonRequest> createRepeated() => $pb.PbList<CommonRequest>();
  @$core.pragma('dart2js:noInline')
  static CommonRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CommonRequest>(create);
  static CommonRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get timestamp => $_getI64(0);
  @$pb.TagNumber(1)
  set timestamp($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasTimestamp() => $_has(0);
  @$pb.TagNumber(1)
  void clearTimestamp() => clearField(1);
}

