///
//  Generated code. Do not modify.
//  source: grpc/app_auth_no_auth.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,deprecated_member_use_from_same_package,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:core' as $core;
import 'dart:convert' as $convert;
import 'dart:typed_data' as $typed_data;
@$core.Deprecated('Use signupRequestDescriptor instead')
const SignupRequest$json = const {
  '1': 'SignupRequest',
  '2': const [
    const {'1': 'userId', '3': 1, '4': 1, '5': 9, '10': 'userId'},
    const {'1': 'userName', '3': 2, '4': 1, '5': 9, '10': 'userName'},
    const {'1': 'password', '3': 3, '4': 1, '5': 9, '10': 'password'},
    const {'1': 'phoneNumber', '3': 4, '4': 1, '5': 9, '10': 'phoneNumber'},
    const {'1': 'relationshipCode', '3': 6, '4': 1, '5': 5, '10': 'relationshipCode'},
    const {'1': 'userPlatform', '3': 7, '4': 1, '5': 9, '10': 'userPlatform'},
  ],
};

/// Descriptor for `SignupRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List signupRequestDescriptor = $convert.base64Decode('Cg1TaWdudXBSZXF1ZXN0EhYKBnVzZXJJZBgBIAEoCVIGdXNlcklkEhoKCHVzZXJOYW1lGAIgASgJUgh1c2VyTmFtZRIaCghwYXNzd29yZBgDIAEoCVIIcGFzc3dvcmQSIAoLcGhvbmVOdW1iZXIYBCABKAlSC3Bob25lTnVtYmVyEioKEHJlbGF0aW9uc2hpcENvZGUYBiABKAVSEHJlbGF0aW9uc2hpcENvZGUSIgoMdXNlclBsYXRmb3JtGAcgASgJUgx1c2VyUGxhdGZvcm0=');
@$core.Deprecated('Use signupResponseDescriptor instead')
const SignupResponse$json = const {
  '1': 'SignupResponse',
  '2': const [
    const {'1': 'resultCode', '3': 1, '4': 1, '5': 5, '10': 'resultCode'},
    const {'1': 'authToken', '3': 2, '4': 1, '5': 9, '10': 'authToken'},
  ],
};

/// Descriptor for `SignupResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List signupResponseDescriptor = $convert.base64Decode('Cg5TaWdudXBSZXNwb25zZRIeCgpyZXN1bHRDb2RlGAEgASgFUgpyZXN1bHRDb2RlEhwKCWF1dGhUb2tlbhgCIAEoCVIJYXV0aFRva2Vu');
@$core.Deprecated('Use signinRequestDescriptor instead')
const SigninRequest$json = const {
  '1': 'SigninRequest',
  '2': const [
    const {'1': 'userId', '3': 1, '4': 1, '5': 9, '10': 'userId'},
    const {'1': 'password', '3': 2, '4': 1, '5': 9, '10': 'password'},
    const {'1': 'deviceId', '3': 3, '4': 1, '5': 9, '10': 'deviceId'},
    const {'1': 'pushToken', '3': 4, '4': 1, '5': 9, '10': 'pushToken'},
    const {'1': 'userPlatform', '3': 5, '4': 1, '5': 9, '10': 'userPlatform'},
  ],
};

/// Descriptor for `SigninRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List signinRequestDescriptor = $convert.base64Decode('Cg1TaWduaW5SZXF1ZXN0EhYKBnVzZXJJZBgBIAEoCVIGdXNlcklkEhoKCHBhc3N3b3JkGAIgASgJUghwYXNzd29yZBIaCghkZXZpY2VJZBgDIAEoCVIIZGV2aWNlSWQSHAoJcHVzaFRva2VuGAQgASgJUglwdXNoVG9rZW4SIgoMdXNlclBsYXRmb3JtGAUgASgJUgx1c2VyUGxhdGZvcm0=');
@$core.Deprecated('Use signinResponseDescriptor instead')
const SigninResponse$json = const {
  '1': 'SigninResponse',
  '2': const [
    const {'1': 'resultCode', '3': 1, '4': 1, '5': 5, '10': 'resultCode'},
    const {'1': 'authToken', '3': 2, '4': 1, '5': 9, '10': 'authToken'},
  ],
};

/// Descriptor for `SigninResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List signinResponseDescriptor = $convert.base64Decode('Cg5TaWduaW5SZXNwb25zZRIeCgpyZXN1bHRDb2RlGAEgASgFUgpyZXN1bHRDb2RlEhwKCWF1dGhUb2tlbhgCIAEoCVIJYXV0aFRva2Vu');
@$core.Deprecated('Use forgotUserIdRequestDescriptor instead')
const ForgotUserIdRequest$json = const {
  '1': 'ForgotUserIdRequest',
  '2': const [
    const {'1': 'phoneNumber', '3': 1, '4': 1, '5': 9, '10': 'phoneNumber'},
  ],
};

/// Descriptor for `ForgotUserIdRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List forgotUserIdRequestDescriptor = $convert.base64Decode('ChNGb3Jnb3RVc2VySWRSZXF1ZXN0EiAKC3Bob25lTnVtYmVyGAEgASgJUgtwaG9uZU51bWJlcg==');
@$core.Deprecated('Use forgotPasswordRequestDescriptor instead')
const ForgotPasswordRequest$json = const {
  '1': 'ForgotPasswordRequest',
  '2': const [
    const {'1': 'userId', '3': 1, '4': 1, '5': 9, '10': 'userId'},
    const {'1': 'phoneNumber', '3': 2, '4': 1, '5': 9, '10': 'phoneNumber'},
  ],
};

/// Descriptor for `ForgotPasswordRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List forgotPasswordRequestDescriptor = $convert.base64Decode('ChVGb3Jnb3RQYXNzd29yZFJlcXVlc3QSFgoGdXNlcklkGAEgASgJUgZ1c2VySWQSIAoLcGhvbmVOdW1iZXIYAiABKAlSC3Bob25lTnVtYmVy');
@$core.Deprecated('Use authRequestDescriptor instead')
const AuthRequest$json = const {
  '1': 'AuthRequest',
  '2': const [
    const {'1': 'phoneNumber', '3': 1, '4': 1, '5': 9, '10': 'phoneNumber'},
    const {'1': 'authValue', '3': 2, '4': 1, '5': 9, '10': 'authValue'},
  ],
};

/// Descriptor for `AuthRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List authRequestDescriptor = $convert.base64Decode('CgtBdXRoUmVxdWVzdBIgCgtwaG9uZU51bWJlchgBIAEoCVILcGhvbmVOdW1iZXISHAoJYXV0aFZhbHVlGAIgASgJUglhdXRoVmFsdWU=');
@$core.Deprecated('Use isDuplicatedIdRequestDescriptor instead')
const IsDuplicatedIdRequest$json = const {
  '1': 'IsDuplicatedIdRequest',
  '2': const [
    const {'1': 'userId', '3': 1, '4': 1, '5': 9, '10': 'userId'},
  ],
};

/// Descriptor for `IsDuplicatedIdRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List isDuplicatedIdRequestDescriptor = $convert.base64Decode('ChVJc0R1cGxpY2F0ZWRJZFJlcXVlc3QSFgoGdXNlcklkGAEgASgJUgZ1c2VySWQ=');
@$core.Deprecated('Use isDuplicatedIdResponseDescriptor instead')
const IsDuplicatedIdResponse$json = const {
  '1': 'IsDuplicatedIdResponse',
  '2': const [
    const {'1': 'isDuplicatedId', '3': 1, '4': 1, '5': 8, '10': 'isDuplicatedId'},
  ],
};

/// Descriptor for `IsDuplicatedIdResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List isDuplicatedIdResponseDescriptor = $convert.base64Decode('ChZJc0R1cGxpY2F0ZWRJZFJlc3BvbnNlEiYKDmlzRHVwbGljYXRlZElkGAEgASgIUg5pc0R1cGxpY2F0ZWRJZA==');
