///
//  Generated code. Do not modify.
//  source: app_auth.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,deprecated_member_use_from_same_package,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:core' as $core;
import 'dart:convert' as $convert;
import 'dart:typed_data' as $typed_data;
@$core.Deprecated('Use signoutRequestDescriptor instead')
const SignoutRequest$json = const {
  '1': 'SignoutRequest',
  '2': const [
    const {'1': 'deviceId', '3': 1, '4': 1, '5': 9, '10': 'deviceId'},
  ],
};

/// Descriptor for `SignoutRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List signoutRequestDescriptor = $convert.base64Decode('Cg5TaWdub3V0UmVxdWVzdBIaCghkZXZpY2VJZBgBIAEoCVIIZGV2aWNlSWQ=');
@$core.Deprecated('Use accountWithdrawRequestDescriptor instead')
const AccountWithdrawRequest$json = const {
  '1': 'AccountWithdrawRequest',
  '2': const [
    const {'1': 'password', '3': 1, '4': 1, '5': 9, '10': 'password'},
  ],
};

/// Descriptor for `AccountWithdrawRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List accountWithdrawRequestDescriptor = $convert.base64Decode('ChZBY2NvdW50V2l0aGRyYXdSZXF1ZXN0EhoKCHBhc3N3b3JkGAEgASgJUghwYXNzd29yZA==');
@$core.Deprecated('Use changePasswordRequestDescriptor instead')
const ChangePasswordRequest$json = const {
  '1': 'ChangePasswordRequest',
  '2': const [
    const {'1': 'oldPassword', '3': 1, '4': 1, '5': 9, '10': 'oldPassword'},
    const {'1': 'newPassword', '3': 2, '4': 1, '5': 9, '10': 'newPassword'},
    const {'1': 'deviceId', '3': 3, '4': 1, '5': 9, '10': 'deviceId'},
  ],
};

/// Descriptor for `ChangePasswordRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List changePasswordRequestDescriptor = $convert.base64Decode('ChVDaGFuZ2VQYXNzd29yZFJlcXVlc3QSIAoLb2xkUGFzc3dvcmQYASABKAlSC29sZFBhc3N3b3JkEiAKC25ld1Bhc3N3b3JkGAIgASgJUgtuZXdQYXNzd29yZBIaCghkZXZpY2VJZBgDIAEoCVIIZGV2aWNlSWQ=');
