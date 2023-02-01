///
//  Generated code. Do not modify.
//  source: grpc/app_biz.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,deprecated_member_use_from_same_package,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:core' as $core;
import 'dart:convert' as $convert;
import 'dart:typed_data' as $typed_data;
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
    const {'1': 'isEnabled', '3': 8, '4': 1, '5': 8, '10': 'isEnabled'},
    const {'1': 'isWeddyService', '3': 9, '4': 1, '5': 8, '10': 'isWeddyService'},
  ],
};

/// Descriptor for `TimelineItem`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List timelineItemDescriptor = $convert.base64Decode('CgxUaW1lbGluZUl0ZW0SFgoGaXRlbUlkGAEgASgFUgZpdGVtSWQSFAoFdGl0bGUYAiABKAlSBXRpdGxlEhIKBHRvZG8YAyABKAlSBHRvZG8SIAoLZGVzY3JpcHRpb24YBCABKAlSC2Rlc2NyaXB0aW9uEiwKEXZlbmRvclNlcnZpY2VDb2RlGAUgASgFUhF2ZW5kb3JTZXJ2aWNlQ29kZRIgCgtpc01hbmRhdG9yeRgGIAEoCFILaXNNYW5kYXRvcnkSHAoJaXNDaGVja2VkGAcgASgIUglpc0NoZWNrZWQSHAoJaXNFbmFibGVkGAggASgIUglpc0VuYWJsZWQSJgoOaXNXZWRkeVNlcnZpY2UYCSABKAhSDmlzV2VkZHlTZXJ2aWNl');
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
    const {'1': 'weddingStyleCode', '3': 1, '4': 1, '5': 5, '10': 'weddingStyleCode'},
    const {'1': 'weddingRemaingDays', '3': 2, '4': 1, '5': 5, '10': 'weddingRemaingDays'},
    const {'1': 'taskProgressRate', '3': 3, '4': 1, '5': 5, '10': 'taskProgressRate'},
    const {'1': 'timelineGroupItemList', '3': 4, '4': 3, '5': 11, '6': '.TimelineGroupItem', '10': 'timelineGroupItemList'},
  ],
};

/// Descriptor for `TimelineResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List timelineResponseDescriptor = $convert.base64Decode('ChBUaW1lbGluZVJlc3BvbnNlEioKEHdlZGRpbmdTdHlsZUNvZGUYASABKAVSEHdlZGRpbmdTdHlsZUNvZGUSLgoSd2VkZGluZ1JlbWFpbmdEYXlzGAIgASgFUhJ3ZWRkaW5nUmVtYWluZ0RheXMSKgoQdGFza1Byb2dyZXNzUmF0ZRgDIAEoBVIQdGFza1Byb2dyZXNzUmF0ZRJIChV0aW1lbGluZUdyb3VwSXRlbUxpc3QYBCADKAsyEi5UaW1lbGluZUdyb3VwSXRlbVIVdGltZWxpbmVHcm91cEl0ZW1MaXN0');
@$core.Deprecated('Use saveTimelineRequestDescriptor instead')
const SaveTimelineRequest$json = const {
  '1': 'SaveTimelineRequest',
  '2': const [
    const {'1': 'weddingStyleCode', '3': 1, '4': 1, '5': 5, '10': 'weddingStyleCode'},
    const {'1': 'timelineGroupItemList', '3': 2, '4': 3, '5': 11, '6': '.TimelineGroupItem', '10': 'timelineGroupItemList'},
  ],
};

/// Descriptor for `SaveTimelineRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List saveTimelineRequestDescriptor = $convert.base64Decode('ChNTYXZlVGltZWxpbmVSZXF1ZXN0EioKEHdlZGRpbmdTdHlsZUNvZGUYASABKAVSEHdlZGRpbmdTdHlsZUNvZGUSSAoVdGltZWxpbmVHcm91cEl0ZW1MaXN0GAIgAygLMhIuVGltZWxpbmVHcm91cEl0ZW1SFXRpbWVsaW5lR3JvdXBJdGVtTGlzdA==');
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
    const {'1': 'ceremonyDate', '3': 2, '4': 1, '5': 9, '10': 'ceremonyDate'},
    const {'1': 'weddingAdminDivisionCode', '3': 3, '4': 1, '5': 5, '10': 'weddingAdminDivisionCode'},
    const {'1': 'weddingBudget', '3': 4, '4': 1, '5': 3, '10': 'weddingBudget'},
    const {'1': 'numberOfGuest', '3': 5, '4': 1, '5': 5, '10': 'numberOfGuest'},
    const {'1': 'hasPush', '3': 6, '4': 1, '5': 8, '10': 'hasPush'},
    const {'1': 'hasMarketingPush', '3': 7, '4': 1, '5': 8, '10': 'hasMarketingPush'},
    const {'1': 'birthDay', '3': 8, '4': 1, '5': 9, '10': 'birthDay'},
    const {'1': 'weddingStyleCode', '3': 9, '4': 1, '5': 5, '10': 'weddingStyleCode'},
    const {'1': 'relationShipCode', '3': 10, '4': 1, '5': 5, '10': 'relationShipCode'},
  ],
};

/// Descriptor for `SaveUserProfileRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List saveUserProfileRequestDescriptor = $convert.base64Decode('ChZTYXZlVXNlclByb2ZpbGVSZXF1ZXN0EhIKBG5hbWUYASABKAlSBG5hbWUSIgoMY2VyZW1vbnlEYXRlGAIgASgJUgxjZXJlbW9ueURhdGUSOgoYd2VkZGluZ0FkbWluRGl2aXNpb25Db2RlGAMgASgFUhh3ZWRkaW5nQWRtaW5EaXZpc2lvbkNvZGUSJAoNd2VkZGluZ0J1ZGdldBgEIAEoA1INd2VkZGluZ0J1ZGdldBIkCg1udW1iZXJPZkd1ZXN0GAUgASgFUg1udW1iZXJPZkd1ZXN0EhgKB2hhc1B1c2gYBiABKAhSB2hhc1B1c2gSKgoQaGFzTWFya2V0aW5nUHVzaBgHIAEoCFIQaGFzTWFya2V0aW5nUHVzaBIaCghiaXJ0aERheRgIIAEoCVIIYmlydGhEYXkSKgoQd2VkZGluZ1N0eWxlQ29kZRgJIAEoBVIQd2VkZGluZ1N0eWxlQ29kZRIqChByZWxhdGlvblNoaXBDb2RlGAogASgFUhByZWxhdGlvblNoaXBDb2Rl');
@$core.Deprecated('Use userProfileResponseDescriptor instead')
const UserProfileResponse$json = const {
  '1': 'UserProfileResponse',
  '2': const [
    const {'1': 'name', '3': 1, '4': 1, '5': 9, '10': 'name'},
    const {'1': 'ceremonyDate', '3': 2, '4': 1, '5': 9, '10': 'ceremonyDate'},
    const {'1': 'weddingAdminDivisionCode', '3': 3, '4': 1, '5': 5, '10': 'weddingAdminDivisionCode'},
    const {'1': 'weddingBudget', '3': 4, '4': 1, '5': 3, '10': 'weddingBudget'},
    const {'1': 'numberOfGuest', '3': 5, '4': 1, '5': 5, '10': 'numberOfGuest'},
    const {'1': 'hasPush', '3': 6, '4': 1, '5': 8, '10': 'hasPush'},
    const {'1': 'hasMarketingPush', '3': 7, '4': 1, '5': 8, '10': 'hasMarketingPush'},
    const {'1': 'birthDay', '3': 8, '4': 1, '5': 9, '10': 'birthDay'},
    const {'1': 'weddingStyleCode', '3': 9, '4': 1, '5': 5, '10': 'weddingStyleCode'},
    const {'1': 'relationShipCode', '3': 10, '4': 1, '5': 5, '10': 'relationShipCode'},
  ],
};

/// Descriptor for `UserProfileResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List userProfileResponseDescriptor = $convert.base64Decode('ChNVc2VyUHJvZmlsZVJlc3BvbnNlEhIKBG5hbWUYASABKAlSBG5hbWUSIgoMY2VyZW1vbnlEYXRlGAIgASgJUgxjZXJlbW9ueURhdGUSOgoYd2VkZGluZ0FkbWluRGl2aXNpb25Db2RlGAMgASgFUhh3ZWRkaW5nQWRtaW5EaXZpc2lvbkNvZGUSJAoNd2VkZGluZ0J1ZGdldBgEIAEoA1INd2VkZGluZ0J1ZGdldBIkCg1udW1iZXJPZkd1ZXN0GAUgASgFUg1udW1iZXJPZkd1ZXN0EhgKB2hhc1B1c2gYBiABKAhSB2hhc1B1c2gSKgoQaGFzTWFya2V0aW5nUHVzaBgHIAEoCFIQaGFzTWFya2V0aW5nUHVzaBIaCghiaXJ0aERheRgIIAEoCVIIYmlydGhEYXkSKgoQd2VkZGluZ1N0eWxlQ29kZRgJIAEoBVIQd2VkZGluZ1N0eWxlQ29kZRIqChByZWxhdGlvblNoaXBDb2RlGAogASgFUhByZWxhdGlvblNoaXBDb2Rl');
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
