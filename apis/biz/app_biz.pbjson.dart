///
//  Generated code. Do not modify.
//  source: app_biz.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,deprecated_member_use_from_same_package,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:core' as $core;
import 'dart:convert' as $convert;
import 'dart:typed_data' as $typed_data;
@$core.Deprecated('Use emptyDescriptor instead')
const Empty$json = const {
  '1': 'Empty',
};

/// Descriptor for `Empty`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List emptyDescriptor = $convert.base64Decode('CgVFbXB0eQ==');
@$core.Deprecated('Use budgetDescriptor instead')
const Budget$json = const {
  '1': 'Budget',
  '2': const [
    const {'1': 'Budget', '3': 1, '4': 1, '5': 3, '10': 'Budget'},
  ],
};

/// Descriptor for `Budget`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List budgetDescriptor = $convert.base64Decode('CgZCdWRnZXQSFgoGQnVkZ2V0GAEgASgDUgZCdWRnZXQ=');
@$core.Deprecated('Use contentsRequestDescriptor instead')
const ContentsRequest$json = const {
  '1': 'ContentsRequest',
  '2': const [
    const {'1': 'tags', '3': 1, '4': 3, '5': 9, '10': 'tags'},
  ],
};

/// Descriptor for `ContentsRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List contentsRequestDescriptor = $convert.base64Decode('Cg9Db250ZW50c1JlcXVlc3QSEgoEdGFncxgBIAMoCVIEdGFncw==');
@$core.Deprecated('Use contentsItemDescriptor instead')
const ContentsItem$json = const {
  '1': 'ContentsItem',
  '2': const [
    const {'1': 'itemId', '3': 1, '4': 1, '5': 3, '10': 'itemId'},
    const {'1': 'vendorProfileId', '3': 2, '4': 1, '5': 3, '10': 'vendorProfileId'},
    const {'1': 'url', '3': 3, '4': 1, '5': 9, '10': 'url'},
  ],
};

/// Descriptor for `ContentsItem`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List contentsItemDescriptor = $convert.base64Decode('CgxDb250ZW50c0l0ZW0SFgoGaXRlbUlkGAEgASgDUgZpdGVtSWQSKAoPdmVuZG9yUHJvZmlsZUlkGAIgASgDUg92ZW5kb3JQcm9maWxlSWQSEAoDdXJsGAMgASgJUgN1cmw=');
@$core.Deprecated('Use contentsResponseDescriptor instead')
const ContentsResponse$json = const {
  '1': 'ContentsResponse',
  '2': const [
    const {'1': 'contentsItemList', '3': 1, '4': 3, '5': 11, '6': '.ContentsItem', '10': 'contentsItemList'},
  ],
};

/// Descriptor for `ContentsResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List contentsResponseDescriptor = $convert.base64Decode('ChBDb250ZW50c1Jlc3BvbnNlEjkKEGNvbnRlbnRzSXRlbUxpc3QYASADKAsyDS5Db250ZW50c0l0ZW1SEGNvbnRlbnRzSXRlbUxpc3Q=');
@$core.Deprecated('Use paginationRequestDescriptor instead')
const PaginationRequest$json = const {
  '1': 'PaginationRequest',
  '2': const [
    const {'1': 'offset', '3': 1, '4': 1, '5': 5, '10': 'offset'},
    const {'1': 'rowCount', '3': 2, '4': 1, '5': 5, '10': 'rowCount'},
    const {'1': 'searchText', '3': 3, '4': 1, '5': 9, '10': 'searchText'},
  ],
};

/// Descriptor for `PaginationRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List paginationRequestDescriptor = $convert.base64Decode('ChFQYWdpbmF0aW9uUmVxdWVzdBIWCgZvZmZzZXQYASABKAVSBm9mZnNldBIaCghyb3dDb3VudBgCIAEoBVIIcm93Q291bnQSHgoKc2VhcmNoVGV4dBgDIAEoCVIKc2VhcmNoVGV4dA==');
@$core.Deprecated('Use vendorProfileIdDescriptor instead')
const VendorProfileId$json = const {
  '1': 'VendorProfileId',
  '2': const [
    const {'1': 'VendorProfileId', '3': 1, '4': 1, '5': 3, '10': 'VendorProfileId'},
  ],
};

/// Descriptor for `VendorProfileId`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List vendorProfileIdDescriptor = $convert.base64Decode('Cg9WZW5kb3JQcm9maWxlSWQSKAoPVmVuZG9yUHJvZmlsZUlkGAEgASgDUg9WZW5kb3JQcm9maWxlSWQ=');
@$core.Deprecated('Use getVendorDressImageInfoResponseDescriptor instead')
const GetVendorDressImageInfoResponse$json = const {
  '1': 'GetVendorDressImageInfoResponse',
  '2': const [
    const {'1': 'itemId', '3': 1, '4': 1, '5': 3, '10': 'itemId'},
    const {'1': 'vendorProfileId', '3': 2, '4': 1, '5': 3, '10': 'vendorProfileId'},
    const {'1': 'vendorServiceCode', '3': 3, '4': 1, '5': 3, '10': 'vendorServiceCode'},
    const {'1': 'vendorName', '3': 4, '4': 1, '5': 9, '10': 'vendorName'},
    const {'1': 'itemTitle', '3': 5, '4': 1, '5': 9, '10': 'itemTitle'},
    const {'1': 'itemPrice', '3': 6, '4': 1, '5': 3, '10': 'itemPrice'},
    const {'1': 'description', '3': 7, '4': 1, '5': 9, '10': 'description'},
    const {'1': 'imageUrl', '3': 8, '4': 3, '5': 9, '10': 'imageUrl'},
    const {'1': 'isLike', '3': 9, '4': 1, '5': 8, '10': 'isLike'},
  ],
};

/// Descriptor for `GetVendorDressImageInfoResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getVendorDressImageInfoResponseDescriptor = $convert.base64Decode('Ch9HZXRWZW5kb3JEcmVzc0ltYWdlSW5mb1Jlc3BvbnNlEhYKBml0ZW1JZBgBIAEoA1IGaXRlbUlkEigKD3ZlbmRvclByb2ZpbGVJZBgCIAEoA1IPdmVuZG9yUHJvZmlsZUlkEiwKEXZlbmRvclNlcnZpY2VDb2RlGAMgASgDUhF2ZW5kb3JTZXJ2aWNlQ29kZRIeCgp2ZW5kb3JOYW1lGAQgASgJUgp2ZW5kb3JOYW1lEhwKCWl0ZW1UaXRsZRgFIAEoCVIJaXRlbVRpdGxlEhwKCWl0ZW1QcmljZRgGIAEoA1IJaXRlbVByaWNlEiAKC2Rlc2NyaXB0aW9uGAcgASgJUgtkZXNjcmlwdGlvbhIaCghpbWFnZVVybBgIIAMoCVIIaW1hZ2VVcmwSFgoGaXNMaWtlGAkgASgIUgZpc0xpa2U=');
@$core.Deprecated('Use memoDescriptor instead')
const Memo$json = const {
  '1': 'Memo',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 3, '10': 'id'},
    const {'1': 'title', '3': 2, '4': 1, '5': 9, '10': 'title'},
    const {'1': 'contents', '3': 3, '4': 1, '5': 9, '10': 'contents'},
    const {'1': 'creationDateTime', '3': 4, '4': 1, '5': 9, '10': 'creationDateTime'},
  ],
};

/// Descriptor for `Memo`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List memoDescriptor = $convert.base64Decode('CgRNZW1vEg4KAmlkGAEgASgDUgJpZBIUCgV0aXRsZRgCIAEoCVIFdGl0bGUSGgoIY29udGVudHMYAyABKAlSCGNvbnRlbnRzEioKEGNyZWF0aW9uRGF0ZVRpbWUYBCABKAlSEGNyZWF0aW9uRGF0ZVRpbWU=');
@$core.Deprecated('Use memoRequestDescriptor instead')
const MemoRequest$json = const {
  '1': 'MemoRequest',
  '2': const [
    const {'1': 'memo', '3': 1, '4': 1, '5': 11, '6': '.Memo', '10': 'memo'},
  ],
};

/// Descriptor for `MemoRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List memoRequestDescriptor = $convert.base64Decode('CgtNZW1vUmVxdWVzdBIZCgRtZW1vGAEgASgLMgUuTWVtb1IEbWVtbw==');
@$core.Deprecated('Use memoResponseDescriptor instead')
const MemoResponse$json = const {
  '1': 'MemoResponse',
  '2': const [
    const {'1': 'memoList', '3': 1, '4': 3, '5': 11, '6': '.Memo', '10': 'memoList'},
  ],
};

/// Descriptor for `MemoResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List memoResponseDescriptor = $convert.base64Decode('CgxNZW1vUmVzcG9uc2USIQoIbWVtb0xpc3QYASADKAsyBS5NZW1vUghtZW1vTGlzdA==');
@$core.Deprecated('Use vendorServiceItemDescriptor instead')
const VendorServiceItem$json = const {
  '1': 'VendorServiceItem',
  '2': const [
    const {'1': 'itemId', '3': 1, '4': 1, '5': 3, '10': 'itemId'},
    const {'1': 'vendorProfileId', '3': 2, '4': 1, '5': 3, '10': 'vendorProfileId'},
    const {'1': 'vendorServiceCode', '3': 3, '4': 1, '5': 5, '10': 'vendorServiceCode'},
    const {'1': 'itemPrice', '3': 4, '4': 1, '5': 3, '10': 'itemPrice'},
    const {'1': 'isUsed', '3': 5, '4': 1, '5': 8, '10': 'isUsed'},
    const {'1': 'vendorName', '3': 6, '4': 1, '5': 9, '10': 'vendorName'},
  ],
};

/// Descriptor for `VendorServiceItem`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List vendorServiceItemDescriptor = $convert.base64Decode('ChFWZW5kb3JTZXJ2aWNlSXRlbRIWCgZpdGVtSWQYASABKANSBml0ZW1JZBIoCg92ZW5kb3JQcm9maWxlSWQYAiABKANSD3ZlbmRvclByb2ZpbGVJZBIsChF2ZW5kb3JTZXJ2aWNlQ29kZRgDIAEoBVIRdmVuZG9yU2VydmljZUNvZGUSHAoJaXRlbVByaWNlGAQgASgDUglpdGVtUHJpY2USFgoGaXNVc2VkGAUgASgIUgZpc1VzZWQSHgoKdmVuZG9yTmFtZRgGIAEoCVIKdmVuZG9yTmFtZQ==');
@$core.Deprecated('Use vendorProfileDescriptor instead')
const VendorProfile$json = const {
  '1': 'VendorProfile',
  '2': const [
    const {'1': 'telNumber', '3': 2, '4': 1, '5': 9, '10': 'telNumber'},
    const {'1': 'cityAddress', '3': 3, '4': 1, '5': 9, '10': 'cityAddress'},
    const {'1': 'detailAddress', '3': 4, '4': 1, '5': 9, '10': 'detailAddress'},
    const {'1': 'addressLatitude', '3': 5, '4': 1, '5': 1, '10': 'addressLatitude'},
    const {'1': 'addressLongitude', '3': 6, '4': 1, '5': 1, '10': 'addressLongitude'},
    const {'1': 'introduction', '3': 8, '4': 1, '5': 9, '10': 'introduction'},
    const {'1': 'homePageUrl', '3': 9, '4': 1, '5': 9, '10': 'homePageUrl'},
    const {'1': 'isVendorAvailable', '3': 10, '4': 1, '5': 8, '10': 'isVendorAvailable'},
    const {'1': 'searchCount', '3': 7, '4': 1, '5': 3, '10': 'searchCount'},
  ],
};

/// Descriptor for `VendorProfile`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List vendorProfileDescriptor = $convert.base64Decode('Cg1WZW5kb3JQcm9maWxlEhwKCXRlbE51bWJlchgCIAEoCVIJdGVsTnVtYmVyEiAKC2NpdHlBZGRyZXNzGAMgASgJUgtjaXR5QWRkcmVzcxIkCg1kZXRhaWxBZGRyZXNzGAQgASgJUg1kZXRhaWxBZGRyZXNzEigKD2FkZHJlc3NMYXRpdHVkZRgFIAEoAVIPYWRkcmVzc0xhdGl0dWRlEioKEGFkZHJlc3NMb25naXR1ZGUYBiABKAFSEGFkZHJlc3NMb25naXR1ZGUSIgoMaW50cm9kdWN0aW9uGAggASgJUgxpbnRyb2R1Y3Rpb24SIAoLaG9tZVBhZ2VVcmwYCSABKAlSC2hvbWVQYWdlVXJsEiwKEWlzVmVuZG9yQXZhaWxhYmxlGAogASgIUhFpc1ZlbmRvckF2YWlsYWJsZRIgCgtzZWFyY2hDb3VudBgHIAEoA1ILc2VhcmNoQ291bnQ=');
@$core.Deprecated('Use vendorServiceItemDetailsDescriptor instead')
const VendorServiceItemDetails$json = const {
  '1': 'VendorServiceItemDetails',
  '2': const [
    const {'1': 'itemId', '3': 1, '4': 1, '5': 3, '10': 'itemId'},
    const {'1': 'vendorProfile', '3': 2, '4': 1, '5': 11, '6': '.VendorProfile', '10': 'vendorProfile'},
    const {'1': 'isUsed', '3': 3, '4': 1, '5': 8, '10': 'isUsed'},
    const {'1': 'vendorServicePriceList', '3': 12, '4': 3, '5': 11, '6': '.VendorServicePrice', '10': 'vendorServicePriceList'},
  ],
};

/// Descriptor for `VendorServiceItemDetails`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List vendorServiceItemDetailsDescriptor = $convert.base64Decode('ChhWZW5kb3JTZXJ2aWNlSXRlbURldGFpbHMSFgoGaXRlbUlkGAEgASgDUgZpdGVtSWQSNAoNdmVuZG9yUHJvZmlsZRgCIAEoCzIOLlZlbmRvclByb2ZpbGVSDXZlbmRvclByb2ZpbGUSFgoGaXNVc2VkGAMgASgIUgZpc1VzZWQSSwoWdmVuZG9yU2VydmljZVByaWNlTGlzdBgMIAMoCzITLlZlbmRvclNlcnZpY2VQcmljZVIWdmVuZG9yU2VydmljZVByaWNlTGlzdA==');
@$core.Deprecated('Use vendorServicePriceDescriptor instead')
const VendorServicePrice$json = const {
  '1': 'VendorServicePrice',
  '2': const [
    const {'1': 'itemId', '3': 1, '4': 1, '5': 3, '10': 'itemId'},
    const {'1': 'title', '3': 2, '4': 1, '5': 9, '10': 'title'},
    const {'1': 'comments', '3': 3, '4': 1, '5': 9, '10': 'comments'},
    const {'1': 'fromPrice', '3': 4, '4': 1, '5': 3, '10': 'fromPrice'},
    const {'1': 'toPrice', '3': 5, '4': 1, '5': 3, '10': 'toPrice'},
    const {'1': 'isRangePrice', '3': 6, '4': 1, '5': 8, '10': 'isRangePrice'},
    const {'1': 'isPrimary', '3': 7, '4': 1, '5': 8, '10': 'isPrimary'},
    const {'1': 'isFree', '3': 8, '4': 1, '5': 8, '10': 'isFree'},
  ],
};

/// Descriptor for `VendorServicePrice`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List vendorServicePriceDescriptor = $convert.base64Decode('ChJWZW5kb3JTZXJ2aWNlUHJpY2USFgoGaXRlbUlkGAEgASgDUgZpdGVtSWQSFAoFdGl0bGUYAiABKAlSBXRpdGxlEhoKCGNvbW1lbnRzGAMgASgJUghjb21tZW50cxIcCglmcm9tUHJpY2UYBCABKANSCWZyb21QcmljZRIYCgd0b1ByaWNlGAUgASgDUgd0b1ByaWNlEiIKDGlzUmFuZ2VQcmljZRgGIAEoCFIMaXNSYW5nZVByaWNlEhwKCWlzUHJpbWFyeRgHIAEoCFIJaXNQcmltYXJ5EhYKBmlzRnJlZRgIIAEoCFIGaXNGcmVl');
@$core.Deprecated('Use timelineItemDescriptor instead')
const TimelineItem$json = const {
  '1': 'TimelineItem',
  '2': const [
    const {'1': 'itemId', '3': 1, '4': 1, '5': 5, '10': 'itemId'},
    const {'1': 'title', '3': 2, '4': 1, '5': 9, '10': 'title'},
    const {'1': 'todo', '3': 3, '4': 1, '5': 9, '10': 'todo'},
    const {'1': 'description', '3': 4, '4': 1, '5': 9, '10': 'description'},
    const {'1': 'vendorServiceCode', '3': 5, '4': 1, '5': 5, '10': 'vendorServiceCode'},
    const {'1': 'isMandatory', '3': 6, '4': 1, '5': 8, '10': 'isMandatory'},
    const {'1': 'isChecked', '3': 7, '4': 1, '5': 8, '10': 'isChecked'},
    const {'1': 'isNotEnabled', '3': 8, '4': 1, '5': 8, '10': 'isNotEnabled'},
    const {'1': 'isWeddyService', '3': 9, '4': 1, '5': 8, '10': 'isWeddyService'},
    const {'1': 'memo', '3': 10, '4': 1, '5': 9, '10': 'memo'},
    const {'1': 'logoImageUrl', '3': 11, '4': 1, '5': 9, '10': 'logoImageUrl'},
  ],
};

/// Descriptor for `TimelineItem`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List timelineItemDescriptor = $convert.base64Decode('CgxUaW1lbGluZUl0ZW0SFgoGaXRlbUlkGAEgASgFUgZpdGVtSWQSFAoFdGl0bGUYAiABKAlSBXRpdGxlEhIKBHRvZG8YAyABKAlSBHRvZG8SIAoLZGVzY3JpcHRpb24YBCABKAlSC2Rlc2NyaXB0aW9uEiwKEXZlbmRvclNlcnZpY2VDb2RlGAUgASgFUhF2ZW5kb3JTZXJ2aWNlQ29kZRIgCgtpc01hbmRhdG9yeRgGIAEoCFILaXNNYW5kYXRvcnkSHAoJaXNDaGVja2VkGAcgASgIUglpc0NoZWNrZWQSIgoMaXNOb3RFbmFibGVkGAggASgIUgxpc05vdEVuYWJsZWQSJgoOaXNXZWRkeVNlcnZpY2UYCSABKAhSDmlzV2VkZHlTZXJ2aWNlEhIKBG1lbW8YCiABKAlSBG1lbW8SIgoMbG9nb0ltYWdlVXJsGAsgASgJUgxsb2dvSW1hZ2VVcmw=');
@$core.Deprecated('Use timelineGroupItemDescriptor instead')
const TimelineGroupItem$json = const {
  '1': 'TimelineGroupItem',
  '2': const [
    const {'1': 'groupId', '3': 1, '4': 1, '5': 5, '10': 'groupId'},
    const {'1': 'title', '3': 2, '4': 1, '5': 9, '10': 'title'},
    const {'1': 'subTitle', '3': 3, '4': 1, '5': 9, '10': 'subTitle'},
    const {'1': 'timelineItemList', '3': 4, '4': 3, '5': 11, '6': '.TimelineItem', '10': 'timelineItemList'},
  ],
};

/// Descriptor for `TimelineGroupItem`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List timelineGroupItemDescriptor = $convert.base64Decode('ChFUaW1lbGluZUdyb3VwSXRlbRIYCgdncm91cElkGAEgASgFUgdncm91cElkEhQKBXRpdGxlGAIgASgJUgV0aXRsZRIaCghzdWJUaXRsZRgDIAEoCVIIc3ViVGl0bGUSOQoQdGltZWxpbmVJdGVtTGlzdBgEIAMoCzINLlRpbWVsaW5lSXRlbVIQdGltZWxpbmVJdGVtTGlzdA==');
@$core.Deprecated('Use timelineResponseDescriptor instead')
const TimelineResponse$json = const {
  '1': 'TimelineResponse',
  '2': const [
    const {'1': 'weddingRemaingDays', '3': 1, '4': 1, '5': 5, '10': 'weddingRemaingDays'},
    const {'1': 'taskProgressRate', '3': 2, '4': 1, '5': 5, '10': 'taskProgressRate'},
    const {'1': 'timelineGroupItemList', '3': 3, '4': 3, '5': 11, '6': '.TimelineGroupItem', '10': 'timelineGroupItemList'},
  ],
};

/// Descriptor for `TimelineResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List timelineResponseDescriptor = $convert.base64Decode('ChBUaW1lbGluZVJlc3BvbnNlEi4KEndlZGRpbmdSZW1haW5nRGF5cxgBIAEoBVISd2VkZGluZ1JlbWFpbmdEYXlzEioKEHRhc2tQcm9ncmVzc1JhdGUYAiABKAVSEHRhc2tQcm9ncmVzc1JhdGUSSAoVdGltZWxpbmVHcm91cEl0ZW1MaXN0GAMgAygLMhIuVGltZWxpbmVHcm91cEl0ZW1SFXRpbWVsaW5lR3JvdXBJdGVtTGlzdA==');
@$core.Deprecated('Use saveTimelineRequestDescriptor instead')
const SaveTimelineRequest$json = const {
  '1': 'SaveTimelineRequest',
  '2': const [
    const {'1': 'timelineGroupItemList', '3': 1, '4': 3, '5': 11, '6': '.TimelineGroupItem', '10': 'timelineGroupItemList'},
  ],
};

/// Descriptor for `SaveTimelineRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List saveTimelineRequestDescriptor = $convert.base64Decode('ChNTYXZlVGltZWxpbmVSZXF1ZXN0EkgKFXRpbWVsaW5lR3JvdXBJdGVtTGlzdBgBIAMoCzISLlRpbWVsaW5lR3JvdXBJdGVtUhV0aW1lbGluZUdyb3VwSXRlbUxpc3Q=');
@$core.Deprecated('Use modifyTimelineRequestDescriptor instead')
const ModifyTimelineRequest$json = const {
  '1': 'ModifyTimelineRequest',
  '2': const [
    const {'1': 'groupId', '3': 1, '4': 1, '5': 3, '10': 'groupId'},
    const {'1': 'ItemId', '3': 2, '4': 1, '5': 3, '10': 'ItemId'},
    const {'1': 'isChecked', '3': 3, '4': 1, '5': 8, '10': 'isChecked'},
    const {'1': 'isNotEnabled', '3': 4, '4': 1, '5': 8, '10': 'isNotEnabled'},
    const {'1': 'memo', '3': 5, '4': 1, '5': 9, '10': 'memo'},
  ],
};

/// Descriptor for `ModifyTimelineRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List modifyTimelineRequestDescriptor = $convert.base64Decode('ChVNb2RpZnlUaW1lbGluZVJlcXVlc3QSGAoHZ3JvdXBJZBgBIAEoA1IHZ3JvdXBJZBIWCgZJdGVtSWQYAiABKANSBkl0ZW1JZBIcCglpc0NoZWNrZWQYAyABKAhSCWlzQ2hlY2tlZBIiCgxpc05vdEVuYWJsZWQYBCABKAhSDGlzTm90RW5hYmxlZBISCgRtZW1vGAUgASgJUgRtZW1v');
@$core.Deprecated('Use modifyTimelineResponseDescriptor instead')
const ModifyTimelineResponse$json = const {
  '1': 'ModifyTimelineResponse',
  '2': const [
    const {'1': 'groupId', '3': 1, '4': 1, '5': 3, '10': 'groupId'},
    const {'1': 'ItemId', '3': 2, '4': 1, '5': 3, '10': 'ItemId'},
    const {'1': 'isChecked', '3': 3, '4': 1, '5': 8, '10': 'isChecked'},
    const {'1': 'isNotEnabled', '3': 4, '4': 1, '5': 8, '10': 'isNotEnabled'},
    const {'1': 'memo', '3': 5, '4': 1, '5': 9, '10': 'memo'},
  ],
};

/// Descriptor for `ModifyTimelineResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List modifyTimelineResponseDescriptor = $convert.base64Decode('ChZNb2RpZnlUaW1lbGluZVJlc3BvbnNlEhgKB2dyb3VwSWQYASABKANSB2dyb3VwSWQSFgoGSXRlbUlkGAIgASgDUgZJdGVtSWQSHAoJaXNDaGVja2VkGAMgASgIUglpc0NoZWNrZWQSIgoMaXNOb3RFbmFibGVkGAQgASgIUgxpc05vdEVuYWJsZWQSEgoEbWVtbxgFIAEoCVIEbWVtbw==');
@$core.Deprecated('Use simulateUserBudgetRequestDescriptor instead')
const SimulateUserBudgetRequest$json = const {
  '1': 'SimulateUserBudgetRequest',
  '2': const [
    const {'1': 'priceRate', '3': 1, '4': 1, '5': 2, '10': 'priceRate'},
  ],
};

/// Descriptor for `SimulateUserBudgetRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List simulateUserBudgetRequestDescriptor = $convert.base64Decode('ChlTaW11bGF0ZVVzZXJCdWRnZXRSZXF1ZXN0EhwKCXByaWNlUmF0ZRgBIAEoAlIJcHJpY2VSYXRl');
@$core.Deprecated('Use simulateUserBudgetResponseDescriptor instead')
const SimulateUserBudgetResponse$json = const {
  '1': 'SimulateUserBudgetResponse',
  '2': const [
    const {'1': 'sumOfPrice', '3': 1, '4': 1, '5': 3, '10': 'sumOfPrice'},
    const {'1': 'vendorServiceItemList', '3': 2, '4': 3, '5': 11, '6': '.VendorServiceItem', '10': 'vendorServiceItemList'},
  ],
};

/// Descriptor for `SimulateUserBudgetResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List simulateUserBudgetResponseDescriptor = $convert.base64Decode('ChpTaW11bGF0ZVVzZXJCdWRnZXRSZXNwb25zZRIeCgpzdW1PZlByaWNlGAEgASgDUgpzdW1PZlByaWNlEkgKFXZlbmRvclNlcnZpY2VJdGVtTGlzdBgCIAMoCzISLlZlbmRvclNlcnZpY2VJdGVtUhV2ZW5kb3JTZXJ2aWNlSXRlbUxpc3Q=');
@$core.Deprecated('Use getSimulateVendorItemResponseDescriptor instead')
const GetSimulateVendorItemResponse$json = const {
  '1': 'GetSimulateVendorItemResponse',
  '2': const [
    const {'1': 'simulateVendorItemList', '3': 1, '4': 3, '5': 11, '6': '.SimulateVendorItem', '10': 'simulateVendorItemList'},
  ],
};

/// Descriptor for `GetSimulateVendorItemResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getSimulateVendorItemResponseDescriptor = $convert.base64Decode('Ch1HZXRTaW11bGF0ZVZlbmRvckl0ZW1SZXNwb25zZRJLChZzaW11bGF0ZVZlbmRvckl0ZW1MaXN0GAEgAygLMhMuU2ltdWxhdGVWZW5kb3JJdGVtUhZzaW11bGF0ZVZlbmRvckl0ZW1MaXN0');
@$core.Deprecated('Use addSimulateItemRequestDescriptor instead')
const AddSimulateItemRequest$json = const {
  '1': 'AddSimulateItemRequest',
  '2': const [
    const {'1': 'vendorServiceItemList', '3': 1, '4': 3, '5': 11, '6': '.VendorServiceItem', '10': 'vendorServiceItemList'},
  ],
};

/// Descriptor for `AddSimulateItemRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List addSimulateItemRequestDescriptor = $convert.base64Decode('ChZBZGRTaW11bGF0ZUl0ZW1SZXF1ZXN0EkgKFXZlbmRvclNlcnZpY2VJdGVtTGlzdBgBIAMoCzISLlZlbmRvclNlcnZpY2VJdGVtUhV2ZW5kb3JTZXJ2aWNlSXRlbUxpc3Q=');
@$core.Deprecated('Use checkListItemDescriptor instead')
const CheckListItem$json = const {
  '1': 'CheckListItem',
  '2': const [
    const {'1': 'isEnabled', '3': 1, '4': 1, '5': 8, '10': 'isEnabled'},
    const {'1': 'vendorServiceItem', '3': 2, '4': 1, '5': 11, '6': '.VendorServiceItem', '10': 'vendorServiceItem'},
  ],
};

/// Descriptor for `CheckListItem`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List checkListItemDescriptor = $convert.base64Decode('Cg1DaGVja0xpc3RJdGVtEhwKCWlzRW5hYmxlZBgBIAEoCFIJaXNFbmFibGVkEkAKEXZlbmRvclNlcnZpY2VJdGVtGAIgASgLMhIuVmVuZG9yU2VydmljZUl0ZW1SEXZlbmRvclNlcnZpY2VJdGVt');
@$core.Deprecated('Use checkListResponseDescriptor instead')
const CheckListResponse$json = const {
  '1': 'CheckListResponse',
  '2': const [
    const {'1': 'myBudget', '3': 1, '4': 1, '5': 3, '10': 'myBudget'},
    const {'1': 'checkListBudget', '3': 2, '4': 1, '5': 3, '10': 'checkListBudget'},
    const {'1': 'CheckListItemList', '3': 3, '4': 3, '5': 11, '6': '.CheckListItem', '10': 'CheckListItemList'},
  ],
};

/// Descriptor for `CheckListResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List checkListResponseDescriptor = $convert.base64Decode('ChFDaGVja0xpc3RSZXNwb25zZRIaCghteUJ1ZGdldBgBIAEoA1IIbXlCdWRnZXQSKAoPY2hlY2tMaXN0QnVkZ2V0GAIgASgDUg9jaGVja0xpc3RCdWRnZXQSPAoRQ2hlY2tMaXN0SXRlbUxpc3QYAyADKAsyDi5DaGVja0xpc3RJdGVtUhFDaGVja0xpc3RJdGVtTGlzdA==');
@$core.Deprecated('Use enableChecklistItemRequestDescriptor instead')
const EnableChecklistItemRequest$json = const {
  '1': 'EnableChecklistItemRequest',
  '2': const [
    const {'1': 'vendorServiceCode', '3': 1, '4': 1, '5': 5, '10': 'vendorServiceCode'},
    const {'1': 'vendorServiceItemId', '3': 2, '4': 1, '5': 3, '10': 'vendorServiceItemId'},
    const {'1': 'isEnabled', '3': 3, '4': 1, '5': 8, '10': 'isEnabled'},
  ],
};

/// Descriptor for `EnableChecklistItemRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List enableChecklistItemRequestDescriptor = $convert.base64Decode('ChpFbmFibGVDaGVja2xpc3RJdGVtUmVxdWVzdBIsChF2ZW5kb3JTZXJ2aWNlQ29kZRgBIAEoBVIRdmVuZG9yU2VydmljZUNvZGUSMAoTdmVuZG9yU2VydmljZUl0ZW1JZBgCIAEoA1ITdmVuZG9yU2VydmljZUl0ZW1JZBIcCglpc0VuYWJsZWQYAyABKAhSCWlzRW5hYmxlZA==');
@$core.Deprecated('Use changeChecklistVendorRequestDescriptor instead')
const ChangeChecklistVendorRequest$json = const {
  '1': 'ChangeChecklistVendorRequest',
  '2': const [
    const {'1': 'vendorServiceCode', '3': 1, '4': 1, '5': 5, '10': 'vendorServiceCode'},
    const {'1': 'vendorServiceItemId', '3': 2, '4': 1, '5': 3, '10': 'vendorServiceItemId'},
  ],
};

/// Descriptor for `ChangeChecklistVendorRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List changeChecklistVendorRequestDescriptor = $convert.base64Decode('ChxDaGFuZ2VDaGVja2xpc3RWZW5kb3JSZXF1ZXN0EiwKEXZlbmRvclNlcnZpY2VDb2RlGAEgASgFUhF2ZW5kb3JTZXJ2aWNlQ29kZRIwChN2ZW5kb3JTZXJ2aWNlSXRlbUlkGAIgASgDUhN2ZW5kb3JTZXJ2aWNlSXRlbUlk');
@$core.Deprecated('Use vendorServiceDetailsRequestDescriptor instead')
const VendorServiceDetailsRequest$json = const {
  '1': 'VendorServiceDetailsRequest',
  '2': const [
    const {'1': 'vendorServiceItemId', '3': 1, '4': 1, '5': 3, '10': 'vendorServiceItemId'},
  ],
};

/// Descriptor for `VendorServiceDetailsRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List vendorServiceDetailsRequestDescriptor = $convert.base64Decode('ChtWZW5kb3JTZXJ2aWNlRGV0YWlsc1JlcXVlc3QSMAoTdmVuZG9yU2VydmljZUl0ZW1JZBgBIAEoA1ITdmVuZG9yU2VydmljZUl0ZW1JZA==');
@$core.Deprecated('Use vendorServiceDetailsResponseDescriptor instead')
const VendorServiceDetailsResponse$json = const {
  '1': 'VendorServiceDetailsResponse',
  '2': const [
    const {'1': 'vendorServiceItemDetails', '3': 1, '4': 1, '5': 11, '6': '.VendorServiceItemDetails', '10': 'vendorServiceItemDetails'},
  ],
};

/// Descriptor for `VendorServiceDetailsResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List vendorServiceDetailsResponseDescriptor = $convert.base64Decode('ChxWZW5kb3JTZXJ2aWNlRGV0YWlsc1Jlc3BvbnNlElUKGHZlbmRvclNlcnZpY2VJdGVtRGV0YWlscxgBIAEoCzIZLlZlbmRvclNlcnZpY2VJdGVtRGV0YWlsc1IYdmVuZG9yU2VydmljZUl0ZW1EZXRhaWxz');
@$core.Deprecated('Use shareChecklistRequestDescriptor instead')
const ShareChecklistRequest$json = const {
  '1': 'ShareChecklistRequest',
  '2': const [
    const {'1': 'targetUserPhoneNumber', '3': 1, '4': 1, '5': 3, '10': 'targetUserPhoneNumber'},
  ],
};

/// Descriptor for `ShareChecklistRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List shareChecklistRequestDescriptor = $convert.base64Decode('ChVTaGFyZUNoZWNrbGlzdFJlcXVlc3QSNAoVdGFyZ2V0VXNlclBob25lTnVtYmVyGAEgASgDUhV0YXJnZXRVc2VyUGhvbmVOdW1iZXI=');
@$core.Deprecated('Use vendorCategoryMenuResponseDescriptor instead')
const VendorCategoryMenuResponse$json = const {
  '1': 'VendorCategoryMenuResponse',
  '2': const [
    const {'1': 'response', '3': 1, '4': 1, '5': 11, '6': '.AppResultResponse', '10': 'response'},
    const {'1': 'suggestedSearchTags', '3': 2, '4': 1, '5': 9, '10': 'suggestedSearchTags'},
    const {'1': 'vendorServiceCode', '3': 3, '4': 3, '5': 5, '10': 'vendorServiceCode'},
  ],
};

/// Descriptor for `VendorCategoryMenuResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List vendorCategoryMenuResponseDescriptor = $convert.base64Decode('ChpWZW5kb3JDYXRlZ29yeU1lbnVSZXNwb25zZRIuCghyZXNwb25zZRgBIAEoCzISLkFwcFJlc3VsdFJlc3BvbnNlUghyZXNwb25zZRIwChNzdWdnZXN0ZWRTZWFyY2hUYWdzGAIgASgJUhNzdWdnZXN0ZWRTZWFyY2hUYWdzEiwKEXZlbmRvclNlcnZpY2VDb2RlGAMgAygFUhF2ZW5kb3JTZXJ2aWNlQ29kZQ==');
@$core.Deprecated('Use searchVendorServiceRequestDescriptor instead')
const SearchVendorServiceRequest$json = const {
  '1': 'SearchVendorServiceRequest',
  '2': const [
    const {'1': 'vendorServiceCode', '3': 1, '4': 1, '5': 5, '10': 'vendorServiceCode'},
    const {'1': 'tags', '3': 2, '4': 1, '5': 9, '10': 'tags'},
  ],
};

/// Descriptor for `SearchVendorServiceRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List searchVendorServiceRequestDescriptor = $convert.base64Decode('ChpTZWFyY2hWZW5kb3JTZXJ2aWNlUmVxdWVzdBIsChF2ZW5kb3JTZXJ2aWNlQ29kZRgBIAEoBVIRdmVuZG9yU2VydmljZUNvZGUSEgoEdGFncxgCIAEoCVIEdGFncw==');
@$core.Deprecated('Use saveUserProfileRequestDescriptor instead')
const SaveUserProfileRequest$json = const {
  '1': 'SaveUserProfileRequest',
  '2': const [
    const {'1': 'name', '3': 1, '4': 1, '5': 9, '10': 'name'},
    const {'1': 'relationShipCode', '3': 2, '4': 1, '5': 5, '10': 'relationShipCode'},
    const {'1': 'ceremonyDate', '3': 3, '4': 1, '5': 9, '10': 'ceremonyDate'},
    const {'1': 'weddingAdminDivisionCode', '3': 4, '4': 1, '5': 5, '10': 'weddingAdminDivisionCode'},
    const {'1': 'weddingBudget', '3': 5, '4': 1, '5': 3, '10': 'weddingBudget'},
  ],
};

/// Descriptor for `SaveUserProfileRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List saveUserProfileRequestDescriptor = $convert.base64Decode('ChZTYXZlVXNlclByb2ZpbGVSZXF1ZXN0EhIKBG5hbWUYASABKAlSBG5hbWUSKgoQcmVsYXRpb25TaGlwQ29kZRgCIAEoBVIQcmVsYXRpb25TaGlwQ29kZRIiCgxjZXJlbW9ueURhdGUYAyABKAlSDGNlcmVtb255RGF0ZRI6Chh3ZWRkaW5nQWRtaW5EaXZpc2lvbkNvZGUYBCABKAVSGHdlZGRpbmdBZG1pbkRpdmlzaW9uQ29kZRIkCg13ZWRkaW5nQnVkZ2V0GAUgASgDUg13ZWRkaW5nQnVkZ2V0');
@$core.Deprecated('Use userProfileResponseDescriptor instead')
const UserProfileResponse$json = const {
  '1': 'UserProfileResponse',
  '2': const [
    const {'1': 'name', '3': 1, '4': 1, '5': 9, '10': 'name'},
    const {'1': 'userId', '3': 2, '4': 1, '5': 9, '10': 'userId'},
    const {'1': 'phoneNumber', '3': 3, '4': 1, '5': 9, '10': 'phoneNumber'},
    const {'1': 'email', '3': 4, '4': 1, '5': 9, '10': 'email'},
    const {'1': 'relationShipCode', '3': 5, '4': 1, '5': 5, '10': 'relationShipCode'},
    const {'1': 'ceremonyDate', '3': 6, '4': 1, '5': 9, '10': 'ceremonyDate'},
    const {'1': 'weddingAdminDivisionCode', '3': 7, '4': 1, '5': 5, '10': 'weddingAdminDivisionCode'},
    const {'1': 'weddingBudget', '3': 8, '4': 1, '5': 3, '10': 'weddingBudget'},
  ],
};

/// Descriptor for `UserProfileResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List userProfileResponseDescriptor = $convert.base64Decode('ChNVc2VyUHJvZmlsZVJlc3BvbnNlEhIKBG5hbWUYASABKAlSBG5hbWUSFgoGdXNlcklkGAIgASgJUgZ1c2VySWQSIAoLcGhvbmVOdW1iZXIYAyABKAlSC3Bob25lTnVtYmVyEhQKBWVtYWlsGAQgASgJUgVlbWFpbBIqChByZWxhdGlvblNoaXBDb2RlGAUgASgFUhByZWxhdGlvblNoaXBDb2RlEiIKDGNlcmVtb255RGF0ZRgGIAEoCVIMY2VyZW1vbnlEYXRlEjoKGHdlZGRpbmdBZG1pbkRpdmlzaW9uQ29kZRgHIAEoBVIYd2VkZGluZ0FkbWluRGl2aXNpb25Db2RlEiQKDXdlZGRpbmdCdWRnZXQYCCABKANSDXdlZGRpbmdCdWRnZXQ=');
@$core.Deprecated('Use bookmarkDescriptor instead')
const Bookmark$json = const {
  '1': 'Bookmark',
  '2': const [
    const {'1': 'vendorProfileId', '3': 1, '4': 1, '5': 3, '10': 'vendorProfileId'},
    const {'1': 'markingDate', '3': 2, '4': 1, '5': 9, '10': 'markingDate'},
    const {'1': 'vendorName', '3': 3, '4': 1, '5': 9, '10': 'vendorName'},
    const {'1': 'vendorServiceCode', '3': 4, '4': 1, '5': 5, '10': 'vendorServiceCode'},
  ],
};

/// Descriptor for `Bookmark`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List bookmarkDescriptor = $convert.base64Decode('CghCb29rbWFyaxIoCg92ZW5kb3JQcm9maWxlSWQYASABKANSD3ZlbmRvclByb2ZpbGVJZBIgCgttYXJraW5nRGF0ZRgCIAEoCVILbWFya2luZ0RhdGUSHgoKdmVuZG9yTmFtZRgDIAEoCVIKdmVuZG9yTmFtZRIsChF2ZW5kb3JTZXJ2aWNlQ29kZRgEIAEoBVIRdmVuZG9yU2VydmljZUNvZGU=');
@$core.Deprecated('Use bookmarkRequestDescriptor instead')
const BookmarkRequest$json = const {
  '1': 'BookmarkRequest',
  '2': const [
    const {'1': 'vendorProfileId', '3': 1, '4': 1, '5': 3, '10': 'vendorProfileId'},
  ],
};

/// Descriptor for `BookmarkRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List bookmarkRequestDescriptor = $convert.base64Decode('Cg9Cb29rbWFya1JlcXVlc3QSKAoPdmVuZG9yUHJvZmlsZUlkGAEgASgDUg92ZW5kb3JQcm9maWxlSWQ=');
@$core.Deprecated('Use bookmarkResponseDescriptor instead')
const BookmarkResponse$json = const {
  '1': 'BookmarkResponse',
  '2': const [
    const {'1': 'bookmarkList', '3': 1, '4': 3, '5': 11, '6': '.Bookmark', '10': 'bookmarkList'},
  ],
};

/// Descriptor for `BookmarkResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List bookmarkResponseDescriptor = $convert.base64Decode('ChBCb29rbWFya1Jlc3BvbnNlEi0KDGJvb2ttYXJrTGlzdBgBIAMoCzIJLkJvb2ttYXJrUgxib29rbWFya0xpc3Q=');
@$core.Deprecated('Use consultingDescriptor instead')
const Consulting$json = const {
  '1': 'Consulting',
  '2': const [
    const {'1': 'consultingVendorId', '3': 1, '4': 1, '5': 3, '10': 'consultingVendorId'},
    const {'1': 'vendorProfileId', '3': 2, '4': 1, '5': 3, '10': 'vendorProfileId'},
    const {'1': 'userAccountId', '3': 3, '4': 1, '5': 3, '10': 'userAccountId'},
    const {'1': 'vendorServiceCode', '3': 4, '4': 1, '5': 3, '10': 'vendorServiceCode'},
    const {'1': 'consultingItemList', '3': 5, '4': 3, '5': 11, '6': '.ConsultingItem', '10': 'consultingItemList'},
    const {'1': 'vendorName', '3': 6, '4': 1, '5': 9, '10': 'vendorName'},
  ],
};

/// Descriptor for `Consulting`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List consultingDescriptor = $convert.base64Decode('CgpDb25zdWx0aW5nEi4KEmNvbnN1bHRpbmdWZW5kb3JJZBgBIAEoA1ISY29uc3VsdGluZ1ZlbmRvcklkEigKD3ZlbmRvclByb2ZpbGVJZBgCIAEoA1IPdmVuZG9yUHJvZmlsZUlkEiQKDXVzZXJBY2NvdW50SWQYAyABKANSDXVzZXJBY2NvdW50SWQSLAoRdmVuZG9yU2VydmljZUNvZGUYBCABKANSEXZlbmRvclNlcnZpY2VDb2RlEj8KEmNvbnN1bHRpbmdJdGVtTGlzdBgFIAMoCzIPLkNvbnN1bHRpbmdJdGVtUhJjb25zdWx0aW5nSXRlbUxpc3QSHgoKdmVuZG9yTmFtZRgGIAEoCVIKdmVuZG9yTmFtZQ==');
@$core.Deprecated('Use consultingItemDescriptor instead')
const ConsultingItem$json = const {
  '1': 'ConsultingItem',
  '2': const [
    const {'1': 'itemId', '3': 1, '4': 1, '5': 3, '10': 'itemId'},
    const {'1': 'price', '3': 2, '4': 1, '5': 3, '10': 'price'},
    const {'1': 'amount', '3': 3, '4': 1, '5': 3, '10': 'amount'},
    const {'1': 'totalPrice', '3': 4, '4': 1, '5': 3, '10': 'totalPrice'},
    const {'1': 'priceId', '3': 5, '4': 1, '5': 3, '10': 'priceId'},
    const {'1': 'title', '3': 6, '4': 1, '5': 9, '10': 'title'},
    const {'1': 'imageUrl', '3': 7, '4': 3, '5': 9, '10': 'imageUrl'},
  ],
};

/// Descriptor for `ConsultingItem`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List consultingItemDescriptor = $convert.base64Decode('Cg5Db25zdWx0aW5nSXRlbRIWCgZpdGVtSWQYASABKANSBml0ZW1JZBIUCgVwcmljZRgCIAEoA1IFcHJpY2USFgoGYW1vdW50GAMgASgDUgZhbW91bnQSHgoKdG90YWxQcmljZRgEIAEoA1IKdG90YWxQcmljZRIYCgdwcmljZUlkGAUgASgDUgdwcmljZUlkEhQKBXRpdGxlGAYgASgJUgV0aXRsZRIaCghpbWFnZVVybBgHIAMoCVIIaW1hZ2VVcmw=');
@$core.Deprecated('Use addConsultingRequestDescriptor instead')
const AddConsultingRequest$json = const {
  '1': 'AddConsultingRequest',
  '2': const [
    const {'1': 'contactName', '3': 1, '4': 1, '5': 9, '10': 'contactName'},
    const {'1': 'contactTelNumber', '3': 2, '4': 1, '5': 9, '10': 'contactTelNumber'},
    const {'1': 'contactEmail', '3': 3, '4': 1, '5': 9, '10': 'contactEmail'},
    const {'1': 'contactCode', '3': 4, '4': 1, '5': 5, '10': 'contactCode'},
    const {'1': 'consultingList', '3': 5, '4': 3, '5': 11, '6': '.Consulting', '10': 'consultingList'},
  ],
};

/// Descriptor for `AddConsultingRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List addConsultingRequestDescriptor = $convert.base64Decode('ChRBZGRDb25zdWx0aW5nUmVxdWVzdBIgCgtjb250YWN0TmFtZRgBIAEoCVILY29udGFjdE5hbWUSKgoQY29udGFjdFRlbE51bWJlchgCIAEoCVIQY29udGFjdFRlbE51bWJlchIiCgxjb250YWN0RW1haWwYAyABKAlSDGNvbnRhY3RFbWFpbBIgCgtjb250YWN0Q29kZRgEIAEoBVILY29udGFjdENvZGUSMwoOY29uc3VsdGluZ0xpc3QYBSADKAsyCy5Db25zdWx0aW5nUg5jb25zdWx0aW5nTGlzdA==');
@$core.Deprecated('Use getExistConsultingUserListResponseDescriptor instead')
const GetExistConsultingUserListResponse$json = const {
  '1': 'GetExistConsultingUserListResponse',
  '2': const [
    const {'1': 'userProfileList', '3': 1, '4': 3, '5': 11, '6': '.ExistConsultingUserProfile', '10': 'userProfileList'},
  ],
};

/// Descriptor for `GetExistConsultingUserListResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getExistConsultingUserListResponseDescriptor = $convert.base64Decode('CiJHZXRFeGlzdENvbnN1bHRpbmdVc2VyTGlzdFJlc3BvbnNlEkUKD3VzZXJQcm9maWxlTGlzdBgBIAMoCzIbLkV4aXN0Q29uc3VsdGluZ1VzZXJQcm9maWxlUg91c2VyUHJvZmlsZUxpc3Q=');
@$core.Deprecated('Use existConsultingUserProfileDescriptor instead')
const ExistConsultingUserProfile$json = const {
  '1': 'ExistConsultingUserProfile',
  '2': const [
    const {'1': 'userAccountId', '3': 1, '4': 1, '5': 3, '10': 'userAccountId'},
    const {'1': 'name', '3': 2, '4': 1, '5': 9, '10': 'name'},
    const {'1': 'phoneNumber', '3': 3, '4': 1, '5': 9, '10': 'phoneNumber'},
    const {'1': 'ceremonyDate', '3': 4, '4': 1, '5': 9, '10': 'ceremonyDate'},
    const {'1': 'isSubmit', '3': 5, '4': 1, '5': 8, '10': 'isSubmit'},
    const {'1': 'isContracted', '3': 6, '4': 1, '5': 8, '10': 'isContracted'},
  ],
};

/// Descriptor for `ExistConsultingUserProfile`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List existConsultingUserProfileDescriptor = $convert.base64Decode('ChpFeGlzdENvbnN1bHRpbmdVc2VyUHJvZmlsZRIkCg11c2VyQWNjb3VudElkGAEgASgDUg11c2VyQWNjb3VudElkEhIKBG5hbWUYAiABKAlSBG5hbWUSIAoLcGhvbmVOdW1iZXIYAyABKAlSC3Bob25lTnVtYmVyEiIKDGNlcmVtb255RGF0ZRgEIAEoCVIMY2VyZW1vbnlEYXRlEhoKCGlzU3VibWl0GAUgASgIUghpc1N1Ym1pdBIiCgxpc0NvbnRyYWN0ZWQYBiABKAhSDGlzQ29udHJhY3RlZA==');
@$core.Deprecated('Use addUserScrapRequestDescriptor instead')
const AddUserScrapRequest$json = const {
  '1': 'AddUserScrapRequest',
  '2': const [
    const {'1': 'vendorProfileId', '3': 1, '4': 1, '5': 3, '10': 'vendorProfileId'},
    const {'1': 'vendorServiceCode', '3': 2, '4': 1, '5': 3, '10': 'vendorServiceCode'},
    const {'1': 'scrapItemList', '3': 4, '4': 3, '5': 11, '6': '.ScrapItem', '10': 'scrapItemList'},
  ],
};

/// Descriptor for `AddUserScrapRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List addUserScrapRequestDescriptor = $convert.base64Decode('ChNBZGRVc2VyU2NyYXBSZXF1ZXN0EigKD3ZlbmRvclByb2ZpbGVJZBgBIAEoA1IPdmVuZG9yUHJvZmlsZUlkEiwKEXZlbmRvclNlcnZpY2VDb2RlGAIgASgDUhF2ZW5kb3JTZXJ2aWNlQ29kZRIwCg1zY3JhcEl0ZW1MaXN0GAQgAygLMgouU2NyYXBJdGVtUg1zY3JhcEl0ZW1MaXN0');
@$core.Deprecated('Use scrapItemDescriptor instead')
const ScrapItem$json = const {
  '1': 'ScrapItem',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 3, '10': 'id'},
    const {'1': 'amount', '3': 2, '4': 1, '5': 3, '10': 'amount'},
    const {'1': 'total_price', '3': 3, '4': 1, '5': 3, '10': 'totalPrice'},
    const {'1': 'vendorItem', '3': 4, '4': 1, '5': 11, '6': '.VendorItem', '10': 'vendorItem'},
  ],
};

/// Descriptor for `ScrapItem`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List scrapItemDescriptor = $convert.base64Decode('CglTY3JhcEl0ZW0SDgoCaWQYASABKANSAmlkEhYKBmFtb3VudBgCIAEoA1IGYW1vdW50Eh8KC3RvdGFsX3ByaWNlGAMgASgDUgp0b3RhbFByaWNlEisKCnZlbmRvckl0ZW0YBCABKAsyCy5WZW5kb3JJdGVtUgp2ZW5kb3JJdGVt');
@$core.Deprecated('Use scrapVendorInfoDescriptor instead')
const ScrapVendorInfo$json = const {
  '1': 'ScrapVendorInfo',
  '2': const [
    const {'1': 'scrapId', '3': 1, '4': 1, '5': 3, '10': 'scrapId'},
    const {'1': 'vendorProfileId', '3': 2, '4': 1, '5': 3, '10': 'vendorProfileId'},
    const {'1': 'vendorServiceCode', '3': 3, '4': 1, '5': 3, '10': 'vendorServiceCode'},
    const {'1': 'basicInfo', '3': 4, '4': 1, '5': 11, '6': '.BasicInfo', '10': 'basicInfo'},
    const {'1': 'scrapItemList', '3': 5, '4': 3, '5': 11, '6': '.ScrapItem', '10': 'scrapItemList'},
    const {'1': 'totalLikes', '3': 6, '4': 1, '5': 3, '10': 'totalLikes'},
  ],
};

/// Descriptor for `ScrapVendorInfo`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List scrapVendorInfoDescriptor = $convert.base64Decode('Cg9TY3JhcFZlbmRvckluZm8SGAoHc2NyYXBJZBgBIAEoA1IHc2NyYXBJZBIoCg92ZW5kb3JQcm9maWxlSWQYAiABKANSD3ZlbmRvclByb2ZpbGVJZBIsChF2ZW5kb3JTZXJ2aWNlQ29kZRgDIAEoA1IRdmVuZG9yU2VydmljZUNvZGUSKAoJYmFzaWNJbmZvGAQgASgLMgouQmFzaWNJbmZvUgliYXNpY0luZm8SMAoNc2NyYXBJdGVtTGlzdBgFIAMoCzIKLlNjcmFwSXRlbVINc2NyYXBJdGVtTGlzdBIeCgp0b3RhbExpa2VzGAYgASgDUgp0b3RhbExpa2Vz');
@$core.Deprecated('Use getUserScrapListResponseDescriptor instead')
const GetUserScrapListResponse$json = const {
  '1': 'GetUserScrapListResponse',
  '2': const [
    const {'1': 'scrapVendorInfo', '3': 1, '4': 3, '5': 11, '6': '.ScrapVendorInfo', '10': 'scrapVendorInfo'},
  ],
};

/// Descriptor for `GetUserScrapListResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getUserScrapListResponseDescriptor = $convert.base64Decode('ChhHZXRVc2VyU2NyYXBMaXN0UmVzcG9uc2USOgoPc2NyYXBWZW5kb3JJbmZvGAEgAygLMhAuU2NyYXBWZW5kb3JJbmZvUg9zY3JhcFZlbmRvckluZm8=');
@$core.Deprecated('Use removeUserScrapItemRequestDescriptor instead')
const RemoveUserScrapItemRequest$json = const {
  '1': 'RemoveUserScrapItemRequest',
  '2': const [
    const {'1': 'scrapId', '3': 1, '4': 1, '5': 3, '10': 'scrapId'},
    const {'1': 'scrapItemId', '3': 2, '4': 1, '5': 3, '10': 'scrapItemId'},
    const {'1': 'vendorProfileId', '3': 3, '4': 1, '5': 3, '10': 'vendorProfileId'},
  ],
};

/// Descriptor for `RemoveUserScrapItemRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List removeUserScrapItemRequestDescriptor = $convert.base64Decode('ChpSZW1vdmVVc2VyU2NyYXBJdGVtUmVxdWVzdBIYCgdzY3JhcElkGAEgASgDUgdzY3JhcElkEiAKC3NjcmFwSXRlbUlkGAIgASgDUgtzY3JhcEl0ZW1JZBIoCg92ZW5kb3JQcm9maWxlSWQYAyABKANSD3ZlbmRvclByb2ZpbGVJZA==');
@$core.Deprecated('Use getUserConsultingListResponseDescriptor instead')
const GetUserConsultingListResponse$json = const {
  '1': 'GetUserConsultingListResponse',
  '2': const [
    const {'1': 'userConsultingInfoList', '3': 1, '4': 3, '5': 11, '6': '.UserConsultingInfo', '10': 'userConsultingInfoList'},
  ],
};

/// Descriptor for `GetUserConsultingListResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getUserConsultingListResponseDescriptor = $convert.base64Decode('Ch1HZXRVc2VyQ29uc3VsdGluZ0xpc3RSZXNwb25zZRJLChZ1c2VyQ29uc3VsdGluZ0luZm9MaXN0GAEgAygLMhMuVXNlckNvbnN1bHRpbmdJbmZvUhZ1c2VyQ29uc3VsdGluZ0luZm9MaXN0');
@$core.Deprecated('Use userConsultingInfoDescriptor instead')
const UserConsultingInfo$json = const {
  '1': 'UserConsultingInfo',
  '2': const [
    const {'1': 'consultingId', '3': 1, '4': 1, '5': 3, '10': 'consultingId'},
    const {'1': 'contactName', '3': 2, '4': 1, '5': 9, '10': 'contactName'},
    const {'1': 'contactTelNumber', '3': 3, '4': 1, '5': 9, '10': 'contactTelNumber'},
    const {'1': 'contactEmail', '3': 4, '4': 1, '5': 9, '10': 'contactEmail'},
    const {'1': 'contactCode', '3': 5, '4': 1, '5': 3, '10': 'contactCode'},
    const {'1': 'ConsultingDate', '3': 6, '4': 1, '5': 9, '10': 'ConsultingDate'},
    const {'1': 'statusCode', '3': 7, '4': 1, '5': 3, '10': 'statusCode'},
    const {'1': 'Memo', '3': 8, '4': 1, '5': 9, '10': 'Memo'},
    const {'1': 'codeUpdateDate', '3': 9, '4': 1, '5': 9, '10': 'codeUpdateDate'},
    const {'1': 'consultingList', '3': 10, '4': 3, '5': 11, '6': '.Consulting', '10': 'consultingList'},
  ],
};

/// Descriptor for `UserConsultingInfo`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List userConsultingInfoDescriptor = $convert.base64Decode('ChJVc2VyQ29uc3VsdGluZ0luZm8SIgoMY29uc3VsdGluZ0lkGAEgASgDUgxjb25zdWx0aW5nSWQSIAoLY29udGFjdE5hbWUYAiABKAlSC2NvbnRhY3ROYW1lEioKEGNvbnRhY3RUZWxOdW1iZXIYAyABKAlSEGNvbnRhY3RUZWxOdW1iZXISIgoMY29udGFjdEVtYWlsGAQgASgJUgxjb250YWN0RW1haWwSIAoLY29udGFjdENvZGUYBSABKANSC2NvbnRhY3RDb2RlEiYKDkNvbnN1bHRpbmdEYXRlGAYgASgJUg5Db25zdWx0aW5nRGF0ZRIeCgpzdGF0dXNDb2RlGAcgASgDUgpzdGF0dXNDb2RlEhIKBE1lbW8YCCABKAlSBE1lbW8SJgoOY29kZVVwZGF0ZURhdGUYCSABKAlSDmNvZGVVcGRhdGVEYXRlEjMKDmNvbnN1bHRpbmdMaXN0GAogAygLMgsuQ29uc3VsdGluZ1IOY29uc3VsdGluZ0xpc3Q=');
@$core.Deprecated('Use cancelConsultingRequestDescriptor instead')
const CancelConsultingRequest$json = const {
  '1': 'CancelConsultingRequest',
  '2': const [
    const {'1': 'consultingId', '3': 1, '4': 1, '5': 3, '10': 'consultingId'},
  ],
};

/// Descriptor for `CancelConsultingRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List cancelConsultingRequestDescriptor = $convert.base64Decode('ChdDYW5jZWxDb25zdWx0aW5nUmVxdWVzdBIiCgxjb25zdWx0aW5nSWQYASABKANSDGNvbnN1bHRpbmdJZA==');
@$core.Deprecated('Use getVendorCategoryResponseDescriptor instead')
const GetVendorCategoryResponse$json = const {
  '1': 'GetVendorCategoryResponse',
  '2': const [
    const {'1': 'vendorCategoryList', '3': 1, '4': 3, '5': 11, '6': '.VendorCategory', '10': 'vendorCategoryList'},
  ],
};

/// Descriptor for `GetVendorCategoryResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getVendorCategoryResponseDescriptor = $convert.base64Decode('ChlHZXRWZW5kb3JDYXRlZ29yeVJlc3BvbnNlEj8KEnZlbmRvckNhdGVnb3J5TGlzdBgBIAMoCzIPLlZlbmRvckNhdGVnb3J5UhJ2ZW5kb3JDYXRlZ29yeUxpc3Q=');
@$core.Deprecated('Use vendorCategoryDescriptor instead')
const VendorCategory$json = const {
  '1': 'VendorCategory',
  '2': const [
    const {'1': 'vendorServiceCode', '3': 1, '4': 1, '5': 3, '10': 'vendorServiceCode'},
    const {'1': 'vendorServiceText', '3': 2, '4': 1, '5': 9, '10': 'vendorServiceText'},
    const {'1': 'vendorIconImageUrl', '3': 3, '4': 1, '5': 9, '10': 'vendorIconImageUrl'},
    const {'1': 'isMandatory', '3': 4, '4': 1, '5': 8, '10': 'isMandatory'},
  ],
};

/// Descriptor for `VendorCategory`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List vendorCategoryDescriptor = $convert.base64Decode('Cg5WZW5kb3JDYXRlZ29yeRIsChF2ZW5kb3JTZXJ2aWNlQ29kZRgBIAEoA1IRdmVuZG9yU2VydmljZUNvZGUSLAoRdmVuZG9yU2VydmljZVRleHQYAiABKAlSEXZlbmRvclNlcnZpY2VUZXh0Ei4KEnZlbmRvckljb25JbWFnZVVybBgDIAEoCVISdmVuZG9ySWNvbkltYWdlVXJsEiAKC2lzTWFuZGF0b3J5GAQgASgIUgtpc01hbmRhdG9yeQ==');
@$core.Deprecated('Use getVendorListRequestDescriptor instead')
const GetVendorListRequest$json = const {
  '1': 'GetVendorListRequest',
  '2': const [
    const {'1': 'vendorServiceCode', '3': 1, '4': 1, '5': 3, '10': 'vendorServiceCode'},
    const {'1': 'searchFilter', '3': 2, '4': 1, '5': 3, '10': 'searchFilter'},
    const {'1': 'searchKeyword', '3': 3, '4': 1, '5': 9, '10': 'searchKeyword'},
  ],
};

/// Descriptor for `GetVendorListRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getVendorListRequestDescriptor = $convert.base64Decode('ChRHZXRWZW5kb3JMaXN0UmVxdWVzdBIsChF2ZW5kb3JTZXJ2aWNlQ29kZRgBIAEoA1IRdmVuZG9yU2VydmljZUNvZGUSIgoMc2VhcmNoRmlsdGVyGAIgASgDUgxzZWFyY2hGaWx0ZXISJAoNc2VhcmNoS2V5d29yZBgDIAEoCVINc2VhcmNoS2V5d29yZA==');
@$core.Deprecated('Use getVendorListResponseDescriptor instead')
const GetVendorListResponse$json = const {
  '1': 'GetVendorListResponse',
  '2': const [
    const {'1': 'searchVendorProfileList', '3': 1, '4': 3, '5': 11, '6': '.SearchVendorProfile', '10': 'searchVendorProfileList'},
  ],
};

/// Descriptor for `GetVendorListResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getVendorListResponseDescriptor = $convert.base64Decode('ChVHZXRWZW5kb3JMaXN0UmVzcG9uc2USTgoXc2VhcmNoVmVuZG9yUHJvZmlsZUxpc3QYASADKAsyFC5TZWFyY2hWZW5kb3JQcm9maWxlUhdzZWFyY2hWZW5kb3JQcm9maWxlTGlzdA==');
@$core.Deprecated('Use searchVendorProfileDescriptor instead')
const SearchVendorProfile$json = const {
  '1': 'SearchVendorProfile',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 3, '10': 'id'},
    const {'1': 'basicInfo', '3': 2, '4': 1, '5': 11, '6': '.BasicInfo', '10': 'basicInfo'},
    const {'1': 'companyAddress', '3': 3, '4': 1, '5': 11, '6': '.CompanyAddress', '10': 'companyAddress'},
    const {'1': 'hashtags', '3': 4, '4': 3, '5': 9, '10': 'hashtags'},
    const {'1': 'vendorServiceCode', '3': 5, '4': 1, '5': 3, '10': 'vendorServiceCode'},
    const {'1': 'isLike', '3': 6, '4': 1, '5': 8, '10': 'isLike'},
    const {'1': 'companyStatus', '3': 7, '4': 1, '5': 9, '10': 'companyStatus'},
    const {'1': 'totalLikes', '3': 8, '4': 1, '5': 3, '10': 'totalLikes'},
  ],
};

/// Descriptor for `SearchVendorProfile`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List searchVendorProfileDescriptor = $convert.base64Decode('ChNTZWFyY2hWZW5kb3JQcm9maWxlEg4KAmlkGAEgASgDUgJpZBIoCgliYXNpY0luZm8YAiABKAsyCi5CYXNpY0luZm9SCWJhc2ljSW5mbxI3Cg5jb21wYW55QWRkcmVzcxgDIAEoCzIPLkNvbXBhbnlBZGRyZXNzUg5jb21wYW55QWRkcmVzcxIaCghoYXNodGFncxgEIAMoCVIIaGFzaHRhZ3MSLAoRdmVuZG9yU2VydmljZUNvZGUYBSABKANSEXZlbmRvclNlcnZpY2VDb2RlEhYKBmlzTGlrZRgGIAEoCFIGaXNMaWtlEiQKDWNvbXBhbnlTdGF0dXMYByABKAlSDWNvbXBhbnlTdGF0dXMSHgoKdG90YWxMaWtlcxgIIAEoA1IKdG90YWxMaWtlcw==');
@$core.Deprecated('Use basicInfoDescriptor instead')
const BasicInfo$json = const {
  '1': 'BasicInfo',
  '2': const [
    const {'1': 'companyName', '3': 1, '4': 1, '5': 9, '10': 'companyName'},
    const {'1': 'bizNumber', '3': 2, '4': 1, '5': 9, '10': 'bizNumber'},
    const {'1': 'aboutUs', '3': 3, '4': 1, '5': 9, '10': 'aboutUs'},
    const {'1': 'telNumber', '3': 4, '4': 1, '5': 9, '10': 'telNumber'},
    const {'1': 'phoneNumber', '3': 5, '4': 1, '5': 9, '10': 'phoneNumber'},
    const {'1': 'email', '3': 6, '4': 1, '5': 9, '10': 'email'},
    const {'1': 'mainImageUrl', '3': 7, '4': 3, '5': 9, '10': 'mainImageUrl'},
  ],
};

/// Descriptor for `BasicInfo`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List basicInfoDescriptor = $convert.base64Decode('CglCYXNpY0luZm8SIAoLY29tcGFueU5hbWUYASABKAlSC2NvbXBhbnlOYW1lEhwKCWJpek51bWJlchgCIAEoCVIJYml6TnVtYmVyEhgKB2Fib3V0VXMYAyABKAlSB2Fib3V0VXMSHAoJdGVsTnVtYmVyGAQgASgJUgl0ZWxOdW1iZXISIAoLcGhvbmVOdW1iZXIYBSABKAlSC3Bob25lTnVtYmVyEhQKBWVtYWlsGAYgASgJUgVlbWFpbBIiCgxtYWluSW1hZ2VVcmwYByADKAlSDG1haW5JbWFnZVVybA==');
@$core.Deprecated('Use companyAddressDescriptor instead')
const CompanyAddress$json = const {
  '1': 'CompanyAddress',
  '2': const [
    const {'1': 'zipCode', '3': 1, '4': 1, '5': 9, '10': 'zipCode'},
    const {'1': 'cityAddress', '3': 2, '4': 1, '5': 9, '10': 'cityAddress'},
    const {'1': 'detailAddress', '3': 3, '4': 1, '5': 9, '10': 'detailAddress'},
    const {'1': 'addressLatitued', '3': 4, '4': 1, '5': 1, '10': 'addressLatitued'},
    const {'1': 'addressLongitude', '3': 5, '4': 1, '5': 1, '10': 'addressLongitude'},
    const {'1': 'adminDivisionCode', '3': 6, '4': 1, '5': 3, '10': 'adminDivisionCode'},
  ],
};

/// Descriptor for `CompanyAddress`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List companyAddressDescriptor = $convert.base64Decode('Cg5Db21wYW55QWRkcmVzcxIYCgd6aXBDb2RlGAEgASgJUgd6aXBDb2RlEiAKC2NpdHlBZGRyZXNzGAIgASgJUgtjaXR5QWRkcmVzcxIkCg1kZXRhaWxBZGRyZXNzGAMgASgJUg1kZXRhaWxBZGRyZXNzEigKD2FkZHJlc3NMYXRpdHVlZBgEIAEoAVIPYWRkcmVzc0xhdGl0dWVkEioKEGFkZHJlc3NMb25naXR1ZGUYBSABKAFSEGFkZHJlc3NMb25naXR1ZGUSLAoRYWRtaW5EaXZpc2lvbkNvZGUYBiABKANSEWFkbWluRGl2aXNpb25Db2Rl');
@$core.Deprecated('Use getVendorInfoRequestDescriptor instead')
const GetVendorInfoRequest$json = const {
  '1': 'GetVendorInfoRequest',
  '2': const [
    const {'1': 'vendorProfileId', '3': 1, '4': 1, '5': 3, '10': 'vendorProfileId'},
    const {'1': 'searchFilter', '3': 2, '4': 1, '5': 3, '10': 'searchFilter'},
    const {'1': 'searchKeyword', '3': 3, '4': 1, '5': 9, '10': 'searchKeyword'},
  ],
};

/// Descriptor for `GetVendorInfoRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getVendorInfoRequestDescriptor = $convert.base64Decode('ChRHZXRWZW5kb3JJbmZvUmVxdWVzdBIoCg92ZW5kb3JQcm9maWxlSWQYASABKANSD3ZlbmRvclByb2ZpbGVJZBIiCgxzZWFyY2hGaWx0ZXIYAiABKANSDHNlYXJjaEZpbHRlchIkCg1zZWFyY2hLZXl3b3JkGAMgASgJUg1zZWFyY2hLZXl3b3Jk');
@$core.Deprecated('Use getVendorInfoResponseDescriptor instead')
const GetVendorInfoResponse$json = const {
  '1': 'GetVendorInfoResponse',
  '2': const [
    const {'1': 'searchVendorProfile', '3': 1, '4': 1, '5': 11, '6': '.SearchVendorProfile', '10': 'searchVendorProfile'},
    const {'1': 'vendorItemList', '3': 2, '4': 3, '5': 11, '6': '.VendorItem', '10': 'vendorItemList'},
    const {'1': 'VendorWorkingTime', '3': 3, '4': 1, '5': 11, '6': '.VendorWorkingTime', '10': 'VendorWorkingTime'},
  ],
};

/// Descriptor for `GetVendorInfoResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getVendorInfoResponseDescriptor = $convert.base64Decode('ChVHZXRWZW5kb3JJbmZvUmVzcG9uc2USRgoTc2VhcmNoVmVuZG9yUHJvZmlsZRgBIAEoCzIULlNlYXJjaFZlbmRvclByb2ZpbGVSE3NlYXJjaFZlbmRvclByb2ZpbGUSMwoOdmVuZG9ySXRlbUxpc3QYAiADKAsyCy5WZW5kb3JJdGVtUg52ZW5kb3JJdGVtTGlzdBJAChFWZW5kb3JXb3JraW5nVGltZRgDIAEoCzISLlZlbmRvcldvcmtpbmdUaW1lUhFWZW5kb3JXb3JraW5nVGltZQ==');
@$core.Deprecated('Use getWeddinghallInfoResponseDescriptor instead')
const GetWeddinghallInfoResponse$json = const {
  '1': 'GetWeddinghallInfoResponse',
  '2': const [
    const {'1': 'SearchVendorProfile', '3': 1, '4': 1, '5': 11, '6': '.SearchVendorProfile', '10': 'SearchVendorProfile'},
    const {'1': 'VendorWorkingTime', '3': 2, '4': 1, '5': 11, '6': '.VendorWorkingTime', '10': 'VendorWorkingTime'},
  ],
};

/// Descriptor for `GetWeddinghallInfoResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getWeddinghallInfoResponseDescriptor = $convert.base64Decode('ChpHZXRXZWRkaW5naGFsbEluZm9SZXNwb25zZRJGChNTZWFyY2hWZW5kb3JQcm9maWxlGAEgASgLMhQuU2VhcmNoVmVuZG9yUHJvZmlsZVITU2VhcmNoVmVuZG9yUHJvZmlsZRJAChFWZW5kb3JXb3JraW5nVGltZRgCIAEoCzISLlZlbmRvcldvcmtpbmdUaW1lUhFWZW5kb3JXb3JraW5nVGltZQ==');
@$core.Deprecated('Use getWeddinghallHallResponseDescriptor instead')
const GetWeddinghallHallResponse$json = const {
  '1': 'GetWeddinghallHallResponse',
  '2': const [
    const {'1': 'weddinghallHall', '3': 1, '4': 3, '5': 11, '6': '.WeddinghallHall', '10': 'weddinghallHall'},
    const {'1': 'mealPrice', '3': 2, '4': 1, '5': 3, '10': 'mealPrice'},
  ],
};

/// Descriptor for `GetWeddinghallHallResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getWeddinghallHallResponseDescriptor = $convert.base64Decode('ChpHZXRXZWRkaW5naGFsbEhhbGxSZXNwb25zZRI6Cg93ZWRkaW5naGFsbEhhbGwYASADKAsyEC5XZWRkaW5naGFsbEhhbGxSD3dlZGRpbmdoYWxsSGFsbBIcCgltZWFsUHJpY2UYAiABKANSCW1lYWxQcmljZQ==');
@$core.Deprecated('Use getWeddinghallItemResponseDescriptor instead')
const GetWeddinghallItemResponse$json = const {
  '1': 'GetWeddinghallItemResponse',
  '2': const [
    const {'1': 'weddinghallItem', '3': 1, '4': 3, '5': 11, '6': '.WeddinghallItem', '10': 'weddinghallItem'},
    const {'1': 'weddinghallAdditionItem', '3': 2, '4': 3, '5': 11, '6': '.WeddinghallAdditionItem', '10': 'weddinghallAdditionItem'},
  ],
};

/// Descriptor for `GetWeddinghallItemResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getWeddinghallItemResponseDescriptor = $convert.base64Decode('ChpHZXRXZWRkaW5naGFsbEl0ZW1SZXNwb25zZRI6Cg93ZWRkaW5naGFsbEl0ZW0YASADKAsyEC5XZWRkaW5naGFsbEl0ZW1SD3dlZGRpbmdoYWxsSXRlbRJSChd3ZWRkaW5naGFsbEFkZGl0aW9uSXRlbRgCIAMoCzIYLldlZGRpbmdoYWxsQWRkaXRpb25JdGVtUhd3ZWRkaW5naGFsbEFkZGl0aW9uSXRlbQ==');
@$core.Deprecated('Use getPromotionVideoListResponseDescriptor instead')
const GetPromotionVideoListResponse$json = const {
  '1': 'GetPromotionVideoListResponse',
  '2': const [
    const {'1': 'vendorProfileId', '3': 1, '4': 1, '5': 3, '10': 'vendorProfileId'},
    const {'1': 'promotionVideoList', '3': 2, '4': 3, '5': 11, '6': '.PromotionVideo', '10': 'promotionVideoList'},
  ],
};

/// Descriptor for `GetPromotionVideoListResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getPromotionVideoListResponseDescriptor = $convert.base64Decode('Ch1HZXRQcm9tb3Rpb25WaWRlb0xpc3RSZXNwb25zZRIoCg92ZW5kb3JQcm9maWxlSWQYASABKANSD3ZlbmRvclByb2ZpbGVJZBI/ChJwcm9tb3Rpb25WaWRlb0xpc3QYAiADKAsyDy5Qcm9tb3Rpb25WaWRlb1IScHJvbW90aW9uVmlkZW9MaXN0');
@$core.Deprecated('Use promotionVideoDescriptor instead')
const PromotionVideo$json = const {
  '1': 'PromotionVideo',
  '2': const [
    const {'1': 'videoId', '3': 1, '4': 1, '5': 3, '10': 'videoId'},
    const {'1': 'contentsCategoryCode', '3': 2, '4': 1, '5': 3, '10': 'contentsCategoryCode'},
    const {'1': 'videoUrl', '3': 3, '4': 1, '5': 9, '10': 'videoUrl'},
  ],
};

/// Descriptor for `PromotionVideo`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List promotionVideoDescriptor = $convert.base64Decode('Cg5Qcm9tb3Rpb25WaWRlbxIYCgd2aWRlb0lkGAEgASgDUgd2aWRlb0lkEjIKFGNvbnRlbnRzQ2F0ZWdvcnlDb2RlGAIgASgDUhRjb250ZW50c0NhdGVnb3J5Q29kZRIaCgh2aWRlb1VybBgDIAEoCVIIdmlkZW9Vcmw=');
@$core.Deprecated('Use weddinghallHallDescriptor instead')
const WeddinghallHall$json = const {
  '1': 'WeddinghallHall',
  '2': const [
    const {'1': 'hallId', '3': 1, '4': 1, '5': 3, '10': 'hallId'},
    const {'1': 'name', '3': 2, '4': 1, '5': 9, '10': 'name'},
    const {'1': 'comments', '3': 3, '4': 1, '5': 9, '10': 'comments'},
    const {'1': 'minCapacity', '3': 4, '4': 1, '5': 3, '10': 'minCapacity'},
    const {'1': 'maxCapacity', '3': 5, '4': 1, '5': 3, '10': 'maxCapacity'},
    const {'1': 'tags', '3': 6, '4': 3, '5': 9, '10': 'tags'},
    const {'1': 'price', '3': 7, '4': 1, '5': 3, '10': 'price'},
    const {'1': 'hallImageUrl', '3': 8, '4': 3, '5': 9, '10': 'hallImageUrl'},
  ],
};

/// Descriptor for `WeddinghallHall`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List weddinghallHallDescriptor = $convert.base64Decode('Cg9XZWRkaW5naGFsbEhhbGwSFgoGaGFsbElkGAEgASgDUgZoYWxsSWQSEgoEbmFtZRgCIAEoCVIEbmFtZRIaCghjb21tZW50cxgDIAEoCVIIY29tbWVudHMSIAoLbWluQ2FwYWNpdHkYBCABKANSC21pbkNhcGFjaXR5EiAKC21heENhcGFjaXR5GAUgASgDUgttYXhDYXBhY2l0eRISCgR0YWdzGAYgAygJUgR0YWdzEhQKBXByaWNlGAcgASgDUgVwcmljZRIiCgxoYWxsSW1hZ2VVcmwYCCADKAlSDGhhbGxJbWFnZVVybA==');
@$core.Deprecated('Use weddinghallItemDescriptor instead')
const WeddinghallItem$json = const {
  '1': 'WeddinghallItem',
  '2': const [
    const {'1': 'itemId', '3': 1, '4': 1, '5': 3, '10': 'itemId'},
    const {'1': 'weddinghallItemCode', '3': 2, '4': 1, '5': 3, '10': 'weddinghallItemCode'},
    const {'1': 'itemTitle', '3': 3, '4': 1, '5': 9, '10': 'itemTitle'},
    const {'1': 'comments', '3': 4, '4': 1, '5': 9, '10': 'comments'},
    const {'1': 'price', '3': 5, '4': 1, '5': 3, '10': 'price'},
    const {'1': 'iconUrl', '3': 6, '4': 1, '5': 9, '10': 'iconUrl'},
  ],
};

/// Descriptor for `WeddinghallItem`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List weddinghallItemDescriptor = $convert.base64Decode('Cg9XZWRkaW5naGFsbEl0ZW0SFgoGaXRlbUlkGAEgASgDUgZpdGVtSWQSMAoTd2VkZGluZ2hhbGxJdGVtQ29kZRgCIAEoA1ITd2VkZGluZ2hhbGxJdGVtQ29kZRIcCglpdGVtVGl0bGUYAyABKAlSCWl0ZW1UaXRsZRIaCghjb21tZW50cxgEIAEoCVIIY29tbWVudHMSFAoFcHJpY2UYBSABKANSBXByaWNlEhgKB2ljb25VcmwYBiABKAlSB2ljb25Vcmw=');
@$core.Deprecated('Use weddinghallAdditionItemDescriptor instead')
const WeddinghallAdditionItem$json = const {
  '1': 'WeddinghallAdditionItem',
  '2': const [
    const {'1': 'itemId', '3': 1, '4': 1, '5': 3, '10': 'itemId'},
    const {'1': 'weddinghallAdditionItemCode', '3': 2, '4': 1, '5': 3, '10': 'weddinghallAdditionItemCode'},
    const {'1': 'itemTitle', '3': 3, '4': 1, '5': 9, '10': 'itemTitle'},
    const {'1': 'comments', '3': 4, '4': 1, '5': 9, '10': 'comments'},
    const {'1': 'iconUrl', '3': 5, '4': 1, '5': 9, '10': 'iconUrl'},
    const {'1': 'isUsed', '3': 6, '4': 1, '5': 8, '10': 'isUsed'},
  ],
};

/// Descriptor for `WeddinghallAdditionItem`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List weddinghallAdditionItemDescriptor = $convert.base64Decode('ChdXZWRkaW5naGFsbEFkZGl0aW9uSXRlbRIWCgZpdGVtSWQYASABKANSBml0ZW1JZBJACht3ZWRkaW5naGFsbEFkZGl0aW9uSXRlbUNvZGUYAiABKANSG3dlZGRpbmdoYWxsQWRkaXRpb25JdGVtQ29kZRIcCglpdGVtVGl0bGUYAyABKAlSCWl0ZW1UaXRsZRIaCghjb21tZW50cxgEIAEoCVIIY29tbWVudHMSGAoHaWNvblVybBgFIAEoCVIHaWNvblVybBIWCgZpc1VzZWQYBiABKAhSBmlzVXNlZA==');
@$core.Deprecated('Use vendorItemDescriptor instead')
const VendorItem$json = const {
  '1': 'VendorItem',
  '2': const [
    const {'1': 'itemId', '3': 1, '4': 1, '5': 3, '10': 'itemId'},
    const {'1': 'price', '3': 2, '4': 1, '5': 3, '10': 'price'},
    const {'1': 'title', '3': 3, '4': 1, '5': 9, '10': 'title'},
    const {'1': 'description', '3': 4, '4': 1, '5': 9, '10': 'description'},
    const {'1': 'groupId', '3': 5, '4': 1, '5': 3, '10': 'groupId'},
    const {'1': 'imageUrl', '3': 6, '4': 3, '5': 9, '10': 'imageUrl'},
    const {'1': 'isUsed', '3': 7, '4': 1, '5': 8, '10': 'isUsed'},
  ],
};

/// Descriptor for `VendorItem`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List vendorItemDescriptor = $convert.base64Decode('CgpWZW5kb3JJdGVtEhYKBml0ZW1JZBgBIAEoA1IGaXRlbUlkEhQKBXByaWNlGAIgASgDUgVwcmljZRIUCgV0aXRsZRgDIAEoCVIFdGl0bGUSIAoLZGVzY3JpcHRpb24YBCABKAlSC2Rlc2NyaXB0aW9uEhgKB2dyb3VwSWQYBSABKANSB2dyb3VwSWQSGgoIaW1hZ2VVcmwYBiADKAlSCGltYWdlVXJsEhYKBmlzVXNlZBgHIAEoCFIGaXNVc2Vk');
@$core.Deprecated('Use getVendorItemInfoRequestDescriptor instead')
const GetVendorItemInfoRequest$json = const {
  '1': 'GetVendorItemInfoRequest',
  '2': const [
    const {'1': 'itemPriceId', '3': 1, '4': 1, '5': 3, '10': 'itemPriceId'},
  ],
};

/// Descriptor for `GetVendorItemInfoRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getVendorItemInfoRequestDescriptor = $convert.base64Decode('ChhHZXRWZW5kb3JJdGVtSW5mb1JlcXVlc3QSIAoLaXRlbVByaWNlSWQYASABKANSC2l0ZW1QcmljZUlk');
@$core.Deprecated('Use vendorWorkingTimeDescriptor instead')
const VendorWorkingTime$json = const {
  '1': 'VendorWorkingTime',
  '2': const [
    const {'1': 'vendorProfileId', '3': 1, '4': 1, '5': 3, '10': 'vendorProfileId'},
    const {'1': 'weekdaysOpenTime', '3': 2, '4': 1, '5': 3, '10': 'weekdaysOpenTime'},
    const {'1': 'weekdaysCloseTime', '3': 3, '4': 1, '5': 3, '10': 'weekdaysCloseTime'},
    const {'1': 'weekendOpenTime', '3': 4, '4': 1, '5': 3, '10': 'weekendOpenTime'},
    const {'1': 'weekdendCloseTime', '3': 5, '4': 1, '5': 3, '10': 'weekdendCloseTime'},
    const {'1': 'isSundayOff', '3': 6, '4': 1, '5': 8, '10': 'isSundayOff'},
    const {'1': 'isMondayOff', '3': 7, '4': 1, '5': 8, '10': 'isMondayOff'},
    const {'1': 'isTuesdayOff', '3': 8, '4': 1, '5': 8, '10': 'isTuesdayOff'},
    const {'1': 'isWednesdayOff', '3': 9, '4': 1, '5': 8, '10': 'isWednesdayOff'},
    const {'1': 'isThursdayOff', '3': 10, '4': 1, '5': 8, '10': 'isThursdayOff'},
    const {'1': 'isFridayOff', '3': 11, '4': 1, '5': 8, '10': 'isFridayOff'},
    const {'1': 'isSaturdayOff', '3': 12, '4': 1, '5': 8, '10': 'isSaturdayOff'},
  ],
};

/// Descriptor for `VendorWorkingTime`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List vendorWorkingTimeDescriptor = $convert.base64Decode('ChFWZW5kb3JXb3JraW5nVGltZRIoCg92ZW5kb3JQcm9maWxlSWQYASABKANSD3ZlbmRvclByb2ZpbGVJZBIqChB3ZWVrZGF5c09wZW5UaW1lGAIgASgDUhB3ZWVrZGF5c09wZW5UaW1lEiwKEXdlZWtkYXlzQ2xvc2VUaW1lGAMgASgDUhF3ZWVrZGF5c0Nsb3NlVGltZRIoCg93ZWVrZW5kT3BlblRpbWUYBCABKANSD3dlZWtlbmRPcGVuVGltZRIsChF3ZWVrZGVuZENsb3NlVGltZRgFIAEoA1IRd2Vla2RlbmRDbG9zZVRpbWUSIAoLaXNTdW5kYXlPZmYYBiABKAhSC2lzU3VuZGF5T2ZmEiAKC2lzTW9uZGF5T2ZmGAcgASgIUgtpc01vbmRheU9mZhIiCgxpc1R1ZXNkYXlPZmYYCCABKAhSDGlzVHVlc2RheU9mZhImCg5pc1dlZG5lc2RheU9mZhgJIAEoCFIOaXNXZWRuZXNkYXlPZmYSJAoNaXNUaHVyc2RheU9mZhgKIAEoCFINaXNUaHVyc2RheU9mZhIgCgtpc0ZyaWRheU9mZhgLIAEoCFILaXNGcmlkYXlPZmYSJAoNaXNTYXR1cmRheU9mZhgMIAEoCFINaXNTYXR1cmRheU9mZg==');
@$core.Deprecated('Use simulateVendorItemDescriptor instead')
const SimulateVendorItem$json = const {
  '1': 'SimulateVendorItem',
  '2': const [
    const {'1': 'itemId', '3': 1, '4': 1, '5': 3, '10': 'itemId'},
    const {'1': 'vendorProfileId', '3': 2, '4': 1, '5': 3, '10': 'vendorProfileId'},
    const {'1': 'vendorServiceCode', '3': 3, '4': 1, '5': 5, '10': 'vendorServiceCode'},
    const {'1': 'itemTitle', '3': 4, '4': 1, '5': 9, '10': 'itemTitle'},
    const {'1': 'itemPrice', '3': 5, '4': 1, '5': 3, '10': 'itemPrice'},
    const {'1': 'itemImageUrl', '3': 6, '4': 1, '5': 9, '10': 'itemImageUrl'},
    const {'1': 'vendorName', '3': 7, '4': 1, '5': 9, '10': 'vendorName'},
  ],
};

/// Descriptor for `SimulateVendorItem`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List simulateVendorItemDescriptor = $convert.base64Decode('ChJTaW11bGF0ZVZlbmRvckl0ZW0SFgoGaXRlbUlkGAEgASgDUgZpdGVtSWQSKAoPdmVuZG9yUHJvZmlsZUlkGAIgASgDUg92ZW5kb3JQcm9maWxlSWQSLAoRdmVuZG9yU2VydmljZUNvZGUYAyABKAVSEXZlbmRvclNlcnZpY2VDb2RlEhwKCWl0ZW1UaXRsZRgEIAEoCVIJaXRlbVRpdGxlEhwKCWl0ZW1QcmljZRgFIAEoA1IJaXRlbVByaWNlEiIKDGl0ZW1JbWFnZVVybBgGIAEoCVIMaXRlbUltYWdlVXJsEh4KCnZlbmRvck5hbWUYByABKAlSCnZlbmRvck5hbWU=');
@$core.Deprecated('Use addUserVendorRecommandRequestDescriptor instead')
const AddUserVendorRecommandRequest$json = const {
  '1': 'AddUserVendorRecommandRequest',
  '2': const [
    const {'1': 'vendorName', '3': 1, '4': 1, '5': 9, '10': 'vendorName'},
    const {'1': 'vendorServiceCode', '3': 2, '4': 1, '5': 3, '10': 'vendorServiceCode'},
    const {'1': 'vendorAddress', '3': 3, '4': 1, '5': 9, '10': 'vendorAddress'},
    const {'1': 'reason', '3': 4, '4': 1, '5': 9, '10': 'reason'},
  ],
};

/// Descriptor for `AddUserVendorRecommandRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List addUserVendorRecommandRequestDescriptor = $convert.base64Decode('Ch1BZGRVc2VyVmVuZG9yUmVjb21tYW5kUmVxdWVzdBIeCgp2ZW5kb3JOYW1lGAEgASgJUgp2ZW5kb3JOYW1lEiwKEXZlbmRvclNlcnZpY2VDb2RlGAIgASgDUhF2ZW5kb3JTZXJ2aWNlQ29kZRIkCg12ZW5kb3JBZGRyZXNzGAMgASgJUg12ZW5kb3JBZGRyZXNzEhYKBnJlYXNvbhgEIAEoCVIGcmVhc29u');
