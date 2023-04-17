///
//  Generated code. Do not modify.
//  source: app_biz.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:core' as $core;

import 'package:fixnum/fixnum.dart' as $fixnum;
import 'package:protobuf/protobuf.dart' as $pb;

import '../common/app_common.pb.dart' as $0;

class Empty extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'Empty',
      createEmptyInstance: create)
    ..hasRequiredFields = false;

  Empty._() : super();
  factory Empty() => create();
  factory Empty.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory Empty.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  Empty clone() => Empty()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  Empty copyWith(void Function(Empty) updates) =>
      super.copyWith((message) => updates(message as Empty))
          as Empty; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Empty create() => Empty._();
  Empty createEmptyInstance() => create();
  static $pb.PbList<Empty> createRepeated() => $pb.PbList<Empty>();
  @$core.pragma('dart2js:noInline')
  static Empty getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Empty>(create);
  static Empty? _defaultInstance;
}

class Budget extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'Budget',
      createEmptyInstance: create)
    ..aInt64(
        1,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'Budget',
        protoName: 'Budget')
    ..hasRequiredFields = false;

  Budget._() : super();
  factory Budget({
    $fixnum.Int64? budget,
  }) {
    final _result = create();
    if (budget != null) {
      _result.budget = budget;
    }
    return _result;
  }
  factory Budget.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory Budget.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  Budget clone() => Budget()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  Budget copyWith(void Function(Budget) updates) =>
      super.copyWith((message) => updates(message as Budget))
          as Budget; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Budget create() => Budget._();
  Budget createEmptyInstance() => create();
  static $pb.PbList<Budget> createRepeated() => $pb.PbList<Budget>();
  @$core.pragma('dart2js:noInline')
  static Budget getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Budget>(create);
  static Budget? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get budget => $_getI64(0);
  @$pb.TagNumber(1)
  set budget($fixnum.Int64 v) {
    $_setInt64(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasBudget() => $_has(0);
  @$pb.TagNumber(1)
  void clearBudget() => clearField(1);
}

class ContentsRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'ContentsRequest',
      createEmptyInstance: create)
    ..pPS(
        1,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'tags')
    ..hasRequiredFields = false;

  ContentsRequest._() : super();
  factory ContentsRequest({
    $core.Iterable<$core.String>? tags,
  }) {
    final _result = create();
    if (tags != null) {
      _result.tags.addAll(tags);
    }
    return _result;
  }
  factory ContentsRequest.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory ContentsRequest.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  ContentsRequest clone() => ContentsRequest()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  ContentsRequest copyWith(void Function(ContentsRequest) updates) =>
      super.copyWith((message) => updates(message as ContentsRequest))
          as ContentsRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ContentsRequest create() => ContentsRequest._();
  ContentsRequest createEmptyInstance() => create();
  static $pb.PbList<ContentsRequest> createRepeated() =>
      $pb.PbList<ContentsRequest>();
  @$core.pragma('dart2js:noInline')
  static ContentsRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ContentsRequest>(create);
  static ContentsRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$core.String> get tags => $_getList(0);
}

class ContentsItem extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'ContentsItem',
      createEmptyInstance: create)
    ..aInt64(
        1,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'itemId',
        protoName: 'itemId')
    ..aInt64(
        2,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'vendorProfileId',
        protoName: 'vendorProfileId')
    ..aOS(
        3,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'url')
    ..hasRequiredFields = false;

  ContentsItem._() : super();
  factory ContentsItem({
    $fixnum.Int64? itemId,
    $fixnum.Int64? vendorProfileId,
    $core.String? url,
  }) {
    final _result = create();
    if (itemId != null) {
      _result.itemId = itemId;
    }
    if (vendorProfileId != null) {
      _result.vendorProfileId = vendorProfileId;
    }
    if (url != null) {
      _result.url = url;
    }
    return _result;
  }
  factory ContentsItem.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory ContentsItem.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  ContentsItem clone() => ContentsItem()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  ContentsItem copyWith(void Function(ContentsItem) updates) =>
      super.copyWith((message) => updates(message as ContentsItem))
          as ContentsItem; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ContentsItem create() => ContentsItem._();
  ContentsItem createEmptyInstance() => create();
  static $pb.PbList<ContentsItem> createRepeated() =>
      $pb.PbList<ContentsItem>();
  @$core.pragma('dart2js:noInline')
  static ContentsItem getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ContentsItem>(create);
  static ContentsItem? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get itemId => $_getI64(0);
  @$pb.TagNumber(1)
  set itemId($fixnum.Int64 v) {
    $_setInt64(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasItemId() => $_has(0);
  @$pb.TagNumber(1)
  void clearItemId() => clearField(1);

  @$pb.TagNumber(2)
  $fixnum.Int64 get vendorProfileId => $_getI64(1);
  @$pb.TagNumber(2)
  set vendorProfileId($fixnum.Int64 v) {
    $_setInt64(1, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasVendorProfileId() => $_has(1);
  @$pb.TagNumber(2)
  void clearVendorProfileId() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get url => $_getSZ(2);
  @$pb.TagNumber(3)
  set url($core.String v) {
    $_setString(2, v);
  }

  @$pb.TagNumber(3)
  $core.bool hasUrl() => $_has(2);
  @$pb.TagNumber(3)
  void clearUrl() => clearField(3);
}

class ContentsResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'ContentsResponse',
      createEmptyInstance: create)
    ..pc<ContentsItem>(
        1,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'contentsItemList',
        $pb.PbFieldType.PM,
        protoName: 'contentsItemList',
        subBuilder: ContentsItem.create)
    ..hasRequiredFields = false;

  ContentsResponse._() : super();
  factory ContentsResponse({
    $core.Iterable<ContentsItem>? contentsItemList,
  }) {
    final _result = create();
    if (contentsItemList != null) {
      _result.contentsItemList.addAll(contentsItemList);
    }
    return _result;
  }
  factory ContentsResponse.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory ContentsResponse.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  ContentsResponse clone() => ContentsResponse()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  ContentsResponse copyWith(void Function(ContentsResponse) updates) =>
      super.copyWith((message) => updates(message as ContentsResponse))
          as ContentsResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ContentsResponse create() => ContentsResponse._();
  ContentsResponse createEmptyInstance() => create();
  static $pb.PbList<ContentsResponse> createRepeated() =>
      $pb.PbList<ContentsResponse>();
  @$core.pragma('dart2js:noInline')
  static ContentsResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ContentsResponse>(create);
  static ContentsResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<ContentsItem> get contentsItemList => $_getList(0);
}

class PaginationRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'PaginationRequest',
      createEmptyInstance: create)
    ..a<$core.int>(
        1,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'offset',
        $pb.PbFieldType.O3)
    ..a<$core.int>(
        2,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'rowCount',
        $pb.PbFieldType.O3,
        protoName: 'rowCount')
    ..aOS(
        3,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'searchText',
        protoName: 'searchText')
    ..hasRequiredFields = false;

  PaginationRequest._() : super();
  factory PaginationRequest({
    $core.int? offset,
    $core.int? rowCount,
    $core.String? searchText,
  }) {
    final _result = create();
    if (offset != null) {
      _result.offset = offset;
    }
    if (rowCount != null) {
      _result.rowCount = rowCount;
    }
    if (searchText != null) {
      _result.searchText = searchText;
    }
    return _result;
  }
  factory PaginationRequest.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory PaginationRequest.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  PaginationRequest clone() => PaginationRequest()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  PaginationRequest copyWith(void Function(PaginationRequest) updates) =>
      super.copyWith((message) => updates(message as PaginationRequest))
          as PaginationRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static PaginationRequest create() => PaginationRequest._();
  PaginationRequest createEmptyInstance() => create();
  static $pb.PbList<PaginationRequest> createRepeated() =>
      $pb.PbList<PaginationRequest>();
  @$core.pragma('dart2js:noInline')
  static PaginationRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<PaginationRequest>(create);
  static PaginationRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get offset => $_getIZ(0);
  @$pb.TagNumber(1)
  set offset($core.int v) {
    $_setSignedInt32(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasOffset() => $_has(0);
  @$pb.TagNumber(1)
  void clearOffset() => clearField(1);

  @$pb.TagNumber(2)
  $core.int get rowCount => $_getIZ(1);
  @$pb.TagNumber(2)
  set rowCount($core.int v) {
    $_setSignedInt32(1, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasRowCount() => $_has(1);
  @$pb.TagNumber(2)
  void clearRowCount() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get searchText => $_getSZ(2);
  @$pb.TagNumber(3)
  set searchText($core.String v) {
    $_setString(2, v);
  }

  @$pb.TagNumber(3)
  $core.bool hasSearchText() => $_has(2);
  @$pb.TagNumber(3)
  void clearSearchText() => clearField(3);
}

class VendorProfileId extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'VendorProfileId',
      createEmptyInstance: create)
    ..aInt64(
        1,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'VendorProfileId',
        protoName: 'VendorProfileId')
    ..hasRequiredFields = false;

  VendorProfileId._() : super();
  factory VendorProfileId({
    $fixnum.Int64? vendorProfileId,
  }) {
    final _result = create();
    if (vendorProfileId != null) {
      _result.vendorProfileId = vendorProfileId;
    }
    return _result;
  }
  factory VendorProfileId.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory VendorProfileId.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  VendorProfileId clone() => VendorProfileId()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  VendorProfileId copyWith(void Function(VendorProfileId) updates) =>
      super.copyWith((message) => updates(message as VendorProfileId))
          as VendorProfileId; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static VendorProfileId create() => VendorProfileId._();
  VendorProfileId createEmptyInstance() => create();
  static $pb.PbList<VendorProfileId> createRepeated() =>
      $pb.PbList<VendorProfileId>();
  @$core.pragma('dart2js:noInline')
  static VendorProfileId getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<VendorProfileId>(create);
  static VendorProfileId? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get vendorProfileId => $_getI64(0);
  @$pb.TagNumber(1)
  set vendorProfileId($fixnum.Int64 v) {
    $_setInt64(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasVendorProfileId() => $_has(0);
  @$pb.TagNumber(1)
  void clearVendorProfileId() => clearField(1);
}

class GetVendorDressImageInfoResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'GetVendorDressImageInfoResponse',
      createEmptyInstance: create)
    ..aInt64(
        1,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'itemId',
        protoName: 'itemId')
    ..aInt64(
        2,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'vendorProfileId',
        protoName: 'vendorProfileId')
    ..aInt64(
        3,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'vendorServiceCode',
        protoName: 'vendorServiceCode')
    ..aOS(
        4,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'vendorName',
        protoName: 'vendorName')
    ..aOS(
        5,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'itemTitle',
        protoName: 'itemTitle')
    ..aInt64(
        6,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'itemPrice',
        protoName: 'itemPrice')
    ..aOS(
        7,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'description')
    ..pPS(
        8,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'imageUrl',
        protoName: 'imageUrl')
    ..aOB(
        9,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'isLike',
        protoName: 'isLike')
    ..hasRequiredFields = false;

  GetVendorDressImageInfoResponse._() : super();
  factory GetVendorDressImageInfoResponse({
    $fixnum.Int64? itemId,
    $fixnum.Int64? vendorProfileId,
    $fixnum.Int64? vendorServiceCode,
    $core.String? vendorName,
    $core.String? itemTitle,
    $fixnum.Int64? itemPrice,
    $core.String? description,
    $core.Iterable<$core.String>? imageUrl,
    $core.bool? isLike,
  }) {
    final _result = create();
    if (itemId != null) {
      _result.itemId = itemId;
    }
    if (vendorProfileId != null) {
      _result.vendorProfileId = vendorProfileId;
    }
    if (vendorServiceCode != null) {
      _result.vendorServiceCode = vendorServiceCode;
    }
    if (vendorName != null) {
      _result.vendorName = vendorName;
    }
    if (itemTitle != null) {
      _result.itemTitle = itemTitle;
    }
    if (itemPrice != null) {
      _result.itemPrice = itemPrice;
    }
    if (description != null) {
      _result.description = description;
    }
    if (imageUrl != null) {
      _result.imageUrl.addAll(imageUrl);
    }
    if (isLike != null) {
      _result.isLike = isLike;
    }
    return _result;
  }
  factory GetVendorDressImageInfoResponse.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory GetVendorDressImageInfoResponse.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  GetVendorDressImageInfoResponse clone() =>
      GetVendorDressImageInfoResponse()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  GetVendorDressImageInfoResponse copyWith(
          void Function(GetVendorDressImageInfoResponse) updates) =>
      super.copyWith(
              (message) => updates(message as GetVendorDressImageInfoResponse))
          as GetVendorDressImageInfoResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GetVendorDressImageInfoResponse create() =>
      GetVendorDressImageInfoResponse._();
  GetVendorDressImageInfoResponse createEmptyInstance() => create();
  static $pb.PbList<GetVendorDressImageInfoResponse> createRepeated() =>
      $pb.PbList<GetVendorDressImageInfoResponse>();
  @$core.pragma('dart2js:noInline')
  static GetVendorDressImageInfoResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<GetVendorDressImageInfoResponse>(
          create);
  static GetVendorDressImageInfoResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get itemId => $_getI64(0);
  @$pb.TagNumber(1)
  set itemId($fixnum.Int64 v) {
    $_setInt64(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasItemId() => $_has(0);
  @$pb.TagNumber(1)
  void clearItemId() => clearField(1);

  @$pb.TagNumber(2)
  $fixnum.Int64 get vendorProfileId => $_getI64(1);
  @$pb.TagNumber(2)
  set vendorProfileId($fixnum.Int64 v) {
    $_setInt64(1, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasVendorProfileId() => $_has(1);
  @$pb.TagNumber(2)
  void clearVendorProfileId() => clearField(2);

  @$pb.TagNumber(3)
  $fixnum.Int64 get vendorServiceCode => $_getI64(2);
  @$pb.TagNumber(3)
  set vendorServiceCode($fixnum.Int64 v) {
    $_setInt64(2, v);
  }

  @$pb.TagNumber(3)
  $core.bool hasVendorServiceCode() => $_has(2);
  @$pb.TagNumber(3)
  void clearVendorServiceCode() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get vendorName => $_getSZ(3);
  @$pb.TagNumber(4)
  set vendorName($core.String v) {
    $_setString(3, v);
  }

  @$pb.TagNumber(4)
  $core.bool hasVendorName() => $_has(3);
  @$pb.TagNumber(4)
  void clearVendorName() => clearField(4);

  @$pb.TagNumber(5)
  $core.String get itemTitle => $_getSZ(4);
  @$pb.TagNumber(5)
  set itemTitle($core.String v) {
    $_setString(4, v);
  }

  @$pb.TagNumber(5)
  $core.bool hasItemTitle() => $_has(4);
  @$pb.TagNumber(5)
  void clearItemTitle() => clearField(5);

  @$pb.TagNumber(6)
  $fixnum.Int64 get itemPrice => $_getI64(5);
  @$pb.TagNumber(6)
  set itemPrice($fixnum.Int64 v) {
    $_setInt64(5, v);
  }

  @$pb.TagNumber(6)
  $core.bool hasItemPrice() => $_has(5);
  @$pb.TagNumber(6)
  void clearItemPrice() => clearField(6);

  @$pb.TagNumber(7)
  $core.String get description => $_getSZ(6);
  @$pb.TagNumber(7)
  set description($core.String v) {
    $_setString(6, v);
  }

  @$pb.TagNumber(7)
  $core.bool hasDescription() => $_has(6);
  @$pb.TagNumber(7)
  void clearDescription() => clearField(7);

  @$pb.TagNumber(8)
  $core.List<$core.String> get imageUrl => $_getList(7);

  @$pb.TagNumber(9)
  $core.bool get isLike => $_getBF(8);
  @$pb.TagNumber(9)
  set isLike($core.bool v) {
    $_setBool(8, v);
  }

  @$pb.TagNumber(9)
  $core.bool hasIsLike() => $_has(8);
  @$pb.TagNumber(9)
  void clearIsLike() => clearField(9);
}

class Memo extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'Memo',
      createEmptyInstance: create)
    ..aInt64(
        1,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'id')
    ..aOS(
        2,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'title')
    ..aOS(
        3,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'contents')
    ..aOS(
        4,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'creationDateTime',
        protoName: 'creationDateTime')
    ..hasRequiredFields = false;

  Memo._() : super();
  factory Memo({
    $fixnum.Int64? id,
    $core.String? title,
    $core.String? contents,
    $core.String? creationDateTime,
  }) {
    final _result = create();
    if (id != null) {
      _result.id = id;
    }
    if (title != null) {
      _result.title = title;
    }
    if (contents != null) {
      _result.contents = contents;
    }
    if (creationDateTime != null) {
      _result.creationDateTime = creationDateTime;
    }
    return _result;
  }
  factory Memo.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory Memo.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  Memo clone() => Memo()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  Memo copyWith(void Function(Memo) updates) =>
      super.copyWith((message) => updates(message as Memo))
          as Memo; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Memo create() => Memo._();
  Memo createEmptyInstance() => create();
  static $pb.PbList<Memo> createRepeated() => $pb.PbList<Memo>();
  @$core.pragma('dart2js:noInline')
  static Memo getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Memo>(create);
  static Memo? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get id => $_getI64(0);
  @$pb.TagNumber(1)
  set id($fixnum.Int64 v) {
    $_setInt64(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get title => $_getSZ(1);
  @$pb.TagNumber(2)
  set title($core.String v) {
    $_setString(1, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasTitle() => $_has(1);
  @$pb.TagNumber(2)
  void clearTitle() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get contents => $_getSZ(2);
  @$pb.TagNumber(3)
  set contents($core.String v) {
    $_setString(2, v);
  }

  @$pb.TagNumber(3)
  $core.bool hasContents() => $_has(2);
  @$pb.TagNumber(3)
  void clearContents() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get creationDateTime => $_getSZ(3);
  @$pb.TagNumber(4)
  set creationDateTime($core.String v) {
    $_setString(3, v);
  }

  @$pb.TagNumber(4)
  $core.bool hasCreationDateTime() => $_has(3);
  @$pb.TagNumber(4)
  void clearCreationDateTime() => clearField(4);
}

class MemoRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'MemoRequest',
      createEmptyInstance: create)
    ..aOM<Memo>(
        1,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'memo',
        subBuilder: Memo.create)
    ..hasRequiredFields = false;

  MemoRequest._() : super();
  factory MemoRequest({
    Memo? memo,
  }) {
    final _result = create();
    if (memo != null) {
      _result.memo = memo;
    }
    return _result;
  }
  factory MemoRequest.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory MemoRequest.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  MemoRequest clone() => MemoRequest()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  MemoRequest copyWith(void Function(MemoRequest) updates) =>
      super.copyWith((message) => updates(message as MemoRequest))
          as MemoRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static MemoRequest create() => MemoRequest._();
  MemoRequest createEmptyInstance() => create();
  static $pb.PbList<MemoRequest> createRepeated() => $pb.PbList<MemoRequest>();
  @$core.pragma('dart2js:noInline')
  static MemoRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<MemoRequest>(create);
  static MemoRequest? _defaultInstance;

  @$pb.TagNumber(1)
  Memo get memo => $_getN(0);
  @$pb.TagNumber(1)
  set memo(Memo v) {
    setField(1, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasMemo() => $_has(0);
  @$pb.TagNumber(1)
  void clearMemo() => clearField(1);
  @$pb.TagNumber(1)
  Memo ensureMemo() => $_ensure(0);
}

class MemoResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'MemoResponse',
      createEmptyInstance: create)
    ..pc<Memo>(
        1,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'memoList',
        $pb.PbFieldType.PM,
        protoName: 'memoList',
        subBuilder: Memo.create)
    ..hasRequiredFields = false;

  MemoResponse._() : super();
  factory MemoResponse({
    $core.Iterable<Memo>? memoList,
  }) {
    final _result = create();
    if (memoList != null) {
      _result.memoList.addAll(memoList);
    }
    return _result;
  }
  factory MemoResponse.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory MemoResponse.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  MemoResponse clone() => MemoResponse()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  MemoResponse copyWith(void Function(MemoResponse) updates) =>
      super.copyWith((message) => updates(message as MemoResponse))
          as MemoResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static MemoResponse create() => MemoResponse._();
  MemoResponse createEmptyInstance() => create();
  static $pb.PbList<MemoResponse> createRepeated() =>
      $pb.PbList<MemoResponse>();
  @$core.pragma('dart2js:noInline')
  static MemoResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<MemoResponse>(create);
  static MemoResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<Memo> get memoList => $_getList(0);
}

class VendorServiceItem extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'VendorServiceItem',
      createEmptyInstance: create)
    ..aInt64(
        1,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'itemId',
        protoName: 'itemId')
    ..aInt64(
        2,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'vendorProfileId',
        protoName: 'vendorProfileId')
    ..a<$core.int>(
        3,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'vendorServiceCode',
        $pb.PbFieldType.O3,
        protoName: 'vendorServiceCode')
    ..aInt64(
        4,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'itemPrice',
        protoName: 'itemPrice')
    ..aOB(
        5,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'isUsed',
        protoName: 'isUsed')
    ..aOS(
        6,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'vendorName',
        protoName: 'vendorName')
    ..hasRequiredFields = false;

  VendorServiceItem._() : super();
  factory VendorServiceItem({
    $fixnum.Int64? itemId,
    $fixnum.Int64? vendorProfileId,
    $core.int? vendorServiceCode,
    $fixnum.Int64? itemPrice,
    $core.bool? isUsed,
    $core.String? vendorName,
  }) {
    final _result = create();
    if (itemId != null) {
      _result.itemId = itemId;
    }
    if (vendorProfileId != null) {
      _result.vendorProfileId = vendorProfileId;
    }
    if (vendorServiceCode != null) {
      _result.vendorServiceCode = vendorServiceCode;
    }
    if (itemPrice != null) {
      _result.itemPrice = itemPrice;
    }
    if (isUsed != null) {
      _result.isUsed = isUsed;
    }
    if (vendorName != null) {
      _result.vendorName = vendorName;
    }
    return _result;
  }
  factory VendorServiceItem.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory VendorServiceItem.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  VendorServiceItem clone() => VendorServiceItem()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  VendorServiceItem copyWith(void Function(VendorServiceItem) updates) =>
      super.copyWith((message) => updates(message as VendorServiceItem))
          as VendorServiceItem; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static VendorServiceItem create() => VendorServiceItem._();
  VendorServiceItem createEmptyInstance() => create();
  static $pb.PbList<VendorServiceItem> createRepeated() =>
      $pb.PbList<VendorServiceItem>();
  @$core.pragma('dart2js:noInline')
  static VendorServiceItem getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<VendorServiceItem>(create);
  static VendorServiceItem? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get itemId => $_getI64(0);
  @$pb.TagNumber(1)
  set itemId($fixnum.Int64 v) {
    $_setInt64(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasItemId() => $_has(0);
  @$pb.TagNumber(1)
  void clearItemId() => clearField(1);

  @$pb.TagNumber(2)
  $fixnum.Int64 get vendorProfileId => $_getI64(1);
  @$pb.TagNumber(2)
  set vendorProfileId($fixnum.Int64 v) {
    $_setInt64(1, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasVendorProfileId() => $_has(1);
  @$pb.TagNumber(2)
  void clearVendorProfileId() => clearField(2);

  @$pb.TagNumber(3)
  $core.int get vendorServiceCode => $_getIZ(2);
  @$pb.TagNumber(3)
  set vendorServiceCode($core.int v) {
    $_setSignedInt32(2, v);
  }

  @$pb.TagNumber(3)
  $core.bool hasVendorServiceCode() => $_has(2);
  @$pb.TagNumber(3)
  void clearVendorServiceCode() => clearField(3);

  @$pb.TagNumber(4)
  $fixnum.Int64 get itemPrice => $_getI64(3);
  @$pb.TagNumber(4)
  set itemPrice($fixnum.Int64 v) {
    $_setInt64(3, v);
  }

  @$pb.TagNumber(4)
  $core.bool hasItemPrice() => $_has(3);
  @$pb.TagNumber(4)
  void clearItemPrice() => clearField(4);

  @$pb.TagNumber(5)
  $core.bool get isUsed => $_getBF(4);
  @$pb.TagNumber(5)
  set isUsed($core.bool v) {
    $_setBool(4, v);
  }

  @$pb.TagNumber(5)
  $core.bool hasIsUsed() => $_has(4);
  @$pb.TagNumber(5)
  void clearIsUsed() => clearField(5);

  @$pb.TagNumber(6)
  $core.String get vendorName => $_getSZ(5);
  @$pb.TagNumber(6)
  set vendorName($core.String v) {
    $_setString(5, v);
  }

  @$pb.TagNumber(6)
  $core.bool hasVendorName() => $_has(5);
  @$pb.TagNumber(6)
  void clearVendorName() => clearField(6);
}

class VendorProfile extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'VendorProfile',
      createEmptyInstance: create)
    ..aOS(
        2,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'telNumber',
        protoName: 'telNumber')
    ..aOS(
        3,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'cityAddress',
        protoName: 'cityAddress')
    ..aOS(
        4,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'detailAddress',
        protoName: 'detailAddress')
    ..a<$core.double>(
        5,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'addressLatitude',
        $pb.PbFieldType.OD,
        protoName: 'addressLatitude')
    ..a<$core.double>(
        6,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'addressLongitude',
        $pb.PbFieldType.OD,
        protoName: 'addressLongitude')
    ..aInt64(
        7,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'searchCount',
        protoName: 'searchCount')
    ..aOS(
        8,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'introduction')
    ..aOS(
        9,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'homePageUrl',
        protoName: 'homePageUrl')
    ..aOB(
        10,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'isVendorAvailable',
        protoName: 'isVendorAvailable')
    ..hasRequiredFields = false;

  VendorProfile._() : super();
  factory VendorProfile({
    $core.String? telNumber,
    $core.String? cityAddress,
    $core.String? detailAddress,
    $core.double? addressLatitude,
    $core.double? addressLongitude,
    $fixnum.Int64? searchCount,
    $core.String? introduction,
    $core.String? homePageUrl,
    $core.bool? isVendorAvailable,
  }) {
    final _result = create();
    if (telNumber != null) {
      _result.telNumber = telNumber;
    }
    if (cityAddress != null) {
      _result.cityAddress = cityAddress;
    }
    if (detailAddress != null) {
      _result.detailAddress = detailAddress;
    }
    if (addressLatitude != null) {
      _result.addressLatitude = addressLatitude;
    }
    if (addressLongitude != null) {
      _result.addressLongitude = addressLongitude;
    }
    if (searchCount != null) {
      _result.searchCount = searchCount;
    }
    if (introduction != null) {
      _result.introduction = introduction;
    }
    if (homePageUrl != null) {
      _result.homePageUrl = homePageUrl;
    }
    if (isVendorAvailable != null) {
      _result.isVendorAvailable = isVendorAvailable;
    }
    return _result;
  }
  factory VendorProfile.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory VendorProfile.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  VendorProfile clone() => VendorProfile()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  VendorProfile copyWith(void Function(VendorProfile) updates) =>
      super.copyWith((message) => updates(message as VendorProfile))
          as VendorProfile; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static VendorProfile create() => VendorProfile._();
  VendorProfile createEmptyInstance() => create();
  static $pb.PbList<VendorProfile> createRepeated() =>
      $pb.PbList<VendorProfile>();
  @$core.pragma('dart2js:noInline')
  static VendorProfile getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<VendorProfile>(create);
  static VendorProfile? _defaultInstance;

  @$pb.TagNumber(2)
  $core.String get telNumber => $_getSZ(0);
  @$pb.TagNumber(2)
  set telNumber($core.String v) {
    $_setString(0, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasTelNumber() => $_has(0);
  @$pb.TagNumber(2)
  void clearTelNumber() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get cityAddress => $_getSZ(1);
  @$pb.TagNumber(3)
  set cityAddress($core.String v) {
    $_setString(1, v);
  }

  @$pb.TagNumber(3)
  $core.bool hasCityAddress() => $_has(1);
  @$pb.TagNumber(3)
  void clearCityAddress() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get detailAddress => $_getSZ(2);
  @$pb.TagNumber(4)
  set detailAddress($core.String v) {
    $_setString(2, v);
  }

  @$pb.TagNumber(4)
  $core.bool hasDetailAddress() => $_has(2);
  @$pb.TagNumber(4)
  void clearDetailAddress() => clearField(4);

  @$pb.TagNumber(5)
  $core.double get addressLatitude => $_getN(3);
  @$pb.TagNumber(5)
  set addressLatitude($core.double v) {
    $_setDouble(3, v);
  }

  @$pb.TagNumber(5)
  $core.bool hasAddressLatitude() => $_has(3);
  @$pb.TagNumber(5)
  void clearAddressLatitude() => clearField(5);

  @$pb.TagNumber(6)
  $core.double get addressLongitude => $_getN(4);
  @$pb.TagNumber(6)
  set addressLongitude($core.double v) {
    $_setDouble(4, v);
  }

  @$pb.TagNumber(6)
  $core.bool hasAddressLongitude() => $_has(4);
  @$pb.TagNumber(6)
  void clearAddressLongitude() => clearField(6);

  @$pb.TagNumber(7)
  $fixnum.Int64 get searchCount => $_getI64(5);
  @$pb.TagNumber(7)
  set searchCount($fixnum.Int64 v) {
    $_setInt64(5, v);
  }

  @$pb.TagNumber(7)
  $core.bool hasSearchCount() => $_has(5);
  @$pb.TagNumber(7)
  void clearSearchCount() => clearField(7);

  @$pb.TagNumber(8)
  $core.String get introduction => $_getSZ(6);
  @$pb.TagNumber(8)
  set introduction($core.String v) {
    $_setString(6, v);
  }

  @$pb.TagNumber(8)
  $core.bool hasIntroduction() => $_has(6);
  @$pb.TagNumber(8)
  void clearIntroduction() => clearField(8);

  @$pb.TagNumber(9)
  $core.String get homePageUrl => $_getSZ(7);
  @$pb.TagNumber(9)
  set homePageUrl($core.String v) {
    $_setString(7, v);
  }

  @$pb.TagNumber(9)
  $core.bool hasHomePageUrl() => $_has(7);
  @$pb.TagNumber(9)
  void clearHomePageUrl() => clearField(9);

  @$pb.TagNumber(10)
  $core.bool get isVendorAvailable => $_getBF(8);
  @$pb.TagNumber(10)
  set isVendorAvailable($core.bool v) {
    $_setBool(8, v);
  }

  @$pb.TagNumber(10)
  $core.bool hasIsVendorAvailable() => $_has(8);
  @$pb.TagNumber(10)
  void clearIsVendorAvailable() => clearField(10);
}

class VendorServiceItemDetails extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'VendorServiceItemDetails',
      createEmptyInstance: create)
    ..aInt64(
        1,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'itemId',
        protoName: 'itemId')
    ..aOM<VendorProfile>(
        2,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'vendorProfile',
        protoName: 'vendorProfile',
        subBuilder: VendorProfile.create)
    ..aOB(
        3,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'isUsed',
        protoName: 'isUsed')
    ..pc<VendorServicePrice>(
        12,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'vendorServicePriceList',
        $pb.PbFieldType.PM,
        protoName: 'vendorServicePriceList',
        subBuilder: VendorServicePrice.create)
    ..hasRequiredFields = false;

  VendorServiceItemDetails._() : super();
  factory VendorServiceItemDetails({
    $fixnum.Int64? itemId,
    VendorProfile? vendorProfile,
    $core.bool? isUsed,
    $core.Iterable<VendorServicePrice>? vendorServicePriceList,
  }) {
    final _result = create();
    if (itemId != null) {
      _result.itemId = itemId;
    }
    if (vendorProfile != null) {
      _result.vendorProfile = vendorProfile;
    }
    if (isUsed != null) {
      _result.isUsed = isUsed;
    }
    if (vendorServicePriceList != null) {
      _result.vendorServicePriceList.addAll(vendorServicePriceList);
    }
    return _result;
  }
  factory VendorServiceItemDetails.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory VendorServiceItemDetails.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  VendorServiceItemDetails clone() =>
      VendorServiceItemDetails()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  VendorServiceItemDetails copyWith(
          void Function(VendorServiceItemDetails) updates) =>
      super.copyWith((message) => updates(message as VendorServiceItemDetails))
          as VendorServiceItemDetails; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static VendorServiceItemDetails create() => VendorServiceItemDetails._();
  VendorServiceItemDetails createEmptyInstance() => create();
  static $pb.PbList<VendorServiceItemDetails> createRepeated() =>
      $pb.PbList<VendorServiceItemDetails>();
  @$core.pragma('dart2js:noInline')
  static VendorServiceItemDetails getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<VendorServiceItemDetails>(create);
  static VendorServiceItemDetails? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get itemId => $_getI64(0);
  @$pb.TagNumber(1)
  set itemId($fixnum.Int64 v) {
    $_setInt64(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasItemId() => $_has(0);
  @$pb.TagNumber(1)
  void clearItemId() => clearField(1);

  @$pb.TagNumber(2)
  VendorProfile get vendorProfile => $_getN(1);
  @$pb.TagNumber(2)
  set vendorProfile(VendorProfile v) {
    setField(2, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasVendorProfile() => $_has(1);
  @$pb.TagNumber(2)
  void clearVendorProfile() => clearField(2);
  @$pb.TagNumber(2)
  VendorProfile ensureVendorProfile() => $_ensure(1);

  @$pb.TagNumber(3)
  $core.bool get isUsed => $_getBF(2);
  @$pb.TagNumber(3)
  set isUsed($core.bool v) {
    $_setBool(2, v);
  }

  @$pb.TagNumber(3)
  $core.bool hasIsUsed() => $_has(2);
  @$pb.TagNumber(3)
  void clearIsUsed() => clearField(3);

  @$pb.TagNumber(12)
  $core.List<VendorServicePrice> get vendorServicePriceList => $_getList(3);
}

class VendorServicePrice extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'VendorServicePrice',
      createEmptyInstance: create)
    ..aInt64(
        1,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'itemId',
        protoName: 'itemId')
    ..aOS(
        2,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'title')
    ..aOS(
        3,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'comments')
    ..aInt64(
        4,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'fromPrice',
        protoName: 'fromPrice')
    ..aInt64(
        5,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'toPrice',
        protoName: 'toPrice')
    ..aOB(
        6,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'isRangePrice',
        protoName: 'isRangePrice')
    ..aOB(
        7,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'isPrimary',
        protoName: 'isPrimary')
    ..aOB(
        8,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'isFree',
        protoName: 'isFree')
    ..hasRequiredFields = false;

  VendorServicePrice._() : super();
  factory VendorServicePrice({
    $fixnum.Int64? itemId,
    $core.String? title,
    $core.String? comments,
    $fixnum.Int64? fromPrice,
    $fixnum.Int64? toPrice,
    $core.bool? isRangePrice,
    $core.bool? isPrimary,
    $core.bool? isFree,
  }) {
    final _result = create();
    if (itemId != null) {
      _result.itemId = itemId;
    }
    if (title != null) {
      _result.title = title;
    }
    if (comments != null) {
      _result.comments = comments;
    }
    if (fromPrice != null) {
      _result.fromPrice = fromPrice;
    }
    if (toPrice != null) {
      _result.toPrice = toPrice;
    }
    if (isRangePrice != null) {
      _result.isRangePrice = isRangePrice;
    }
    if (isPrimary != null) {
      _result.isPrimary = isPrimary;
    }
    if (isFree != null) {
      _result.isFree = isFree;
    }
    return _result;
  }
  factory VendorServicePrice.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory VendorServicePrice.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  VendorServicePrice clone() => VendorServicePrice()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  VendorServicePrice copyWith(void Function(VendorServicePrice) updates) =>
      super.copyWith((message) => updates(message as VendorServicePrice))
          as VendorServicePrice; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static VendorServicePrice create() => VendorServicePrice._();
  VendorServicePrice createEmptyInstance() => create();
  static $pb.PbList<VendorServicePrice> createRepeated() =>
      $pb.PbList<VendorServicePrice>();
  @$core.pragma('dart2js:noInline')
  static VendorServicePrice getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<VendorServicePrice>(create);
  static VendorServicePrice? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get itemId => $_getI64(0);
  @$pb.TagNumber(1)
  set itemId($fixnum.Int64 v) {
    $_setInt64(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasItemId() => $_has(0);
  @$pb.TagNumber(1)
  void clearItemId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get title => $_getSZ(1);
  @$pb.TagNumber(2)
  set title($core.String v) {
    $_setString(1, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasTitle() => $_has(1);
  @$pb.TagNumber(2)
  void clearTitle() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get comments => $_getSZ(2);
  @$pb.TagNumber(3)
  set comments($core.String v) {
    $_setString(2, v);
  }

  @$pb.TagNumber(3)
  $core.bool hasComments() => $_has(2);
  @$pb.TagNumber(3)
  void clearComments() => clearField(3);

  @$pb.TagNumber(4)
  $fixnum.Int64 get fromPrice => $_getI64(3);
  @$pb.TagNumber(4)
  set fromPrice($fixnum.Int64 v) {
    $_setInt64(3, v);
  }

  @$pb.TagNumber(4)
  $core.bool hasFromPrice() => $_has(3);
  @$pb.TagNumber(4)
  void clearFromPrice() => clearField(4);

  @$pb.TagNumber(5)
  $fixnum.Int64 get toPrice => $_getI64(4);
  @$pb.TagNumber(5)
  set toPrice($fixnum.Int64 v) {
    $_setInt64(4, v);
  }

  @$pb.TagNumber(5)
  $core.bool hasToPrice() => $_has(4);
  @$pb.TagNumber(5)
  void clearToPrice() => clearField(5);

  @$pb.TagNumber(6)
  $core.bool get isRangePrice => $_getBF(5);
  @$pb.TagNumber(6)
  set isRangePrice($core.bool v) {
    $_setBool(5, v);
  }

  @$pb.TagNumber(6)
  $core.bool hasIsRangePrice() => $_has(5);
  @$pb.TagNumber(6)
  void clearIsRangePrice() => clearField(6);

  @$pb.TagNumber(7)
  $core.bool get isPrimary => $_getBF(6);
  @$pb.TagNumber(7)
  set isPrimary($core.bool v) {
    $_setBool(6, v);
  }

  @$pb.TagNumber(7)
  $core.bool hasIsPrimary() => $_has(6);
  @$pb.TagNumber(7)
  void clearIsPrimary() => clearField(7);

  @$pb.TagNumber(8)
  $core.bool get isFree => $_getBF(7);
  @$pb.TagNumber(8)
  set isFree($core.bool v) {
    $_setBool(7, v);
  }

  @$pb.TagNumber(8)
  $core.bool hasIsFree() => $_has(7);
  @$pb.TagNumber(8)
  void clearIsFree() => clearField(8);
}

class TimelineItem extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'TimelineItem',
      createEmptyInstance: create)
    ..a<$core.int>(
        1,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'itemId',
        $pb.PbFieldType.O3,
        protoName: 'itemId')
    ..aOS(
        2,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'title')
    ..aOS(
        3,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'todo')
    ..aOS(
        4,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'description')
    ..a<$core.int>(
        5,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'vendorServiceCode',
        $pb.PbFieldType.O3,
        protoName: 'vendorServiceCode')
    ..aOB(
        6,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'isMandatory',
        protoName: 'isMandatory')
    ..aOB(
        7,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'isChecked',
        protoName: 'isChecked')
    ..aOB(
        8,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'isNotEnabled',
        protoName: 'isNotEnabled')
    ..aOB(
        9,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'isWeddyService',
        protoName: 'isWeddyService')
    ..aOS(
        10,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'memo')
    ..aOS(
        11,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'logoImageUrl',
        protoName: 'logoImageUrl')
    ..hasRequiredFields = false;

  TimelineItem._() : super();
  factory TimelineItem({
    $core.int? itemId,
    $core.String? title,
    $core.String? todo,
    $core.String? description,
    $core.int? vendorServiceCode,
    $core.bool? isMandatory,
    $core.bool? isChecked,
    $core.bool? isNotEnabled,
    $core.bool? isWeddyService,
    $core.String? memo,
    $core.String? logoImageUrl,
  }) {
    final _result = create();
    if (itemId != null) {
      _result.itemId = itemId;
    }
    if (title != null) {
      _result.title = title;
    }
    if (todo != null) {
      _result.todo = todo;
    }
    if (description != null) {
      _result.description = description;
    }
    if (vendorServiceCode != null) {
      _result.vendorServiceCode = vendorServiceCode;
    }
    if (isMandatory != null) {
      _result.isMandatory = isMandatory;
    }
    if (isChecked != null) {
      _result.isChecked = isChecked;
    }
    if (isNotEnabled != null) {
      _result.isNotEnabled = isNotEnabled;
    }
    if (isWeddyService != null) {
      _result.isWeddyService = isWeddyService;
    }
    if (memo != null) {
      _result.memo = memo;
    }
    if (logoImageUrl != null) {
      _result.logoImageUrl = logoImageUrl;
    }
    return _result;
  }
  factory TimelineItem.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory TimelineItem.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  TimelineItem clone() => TimelineItem()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  TimelineItem copyWith(void Function(TimelineItem) updates) =>
      super.copyWith((message) => updates(message as TimelineItem))
          as TimelineItem; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static TimelineItem create() => TimelineItem._();
  TimelineItem createEmptyInstance() => create();
  static $pb.PbList<TimelineItem> createRepeated() =>
      $pb.PbList<TimelineItem>();
  @$core.pragma('dart2js:noInline')
  static TimelineItem getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<TimelineItem>(create);
  static TimelineItem? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get itemId => $_getIZ(0);
  @$pb.TagNumber(1)
  set itemId($core.int v) {
    $_setSignedInt32(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasItemId() => $_has(0);
  @$pb.TagNumber(1)
  void clearItemId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get title => $_getSZ(1);
  @$pb.TagNumber(2)
  set title($core.String v) {
    $_setString(1, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasTitle() => $_has(1);
  @$pb.TagNumber(2)
  void clearTitle() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get todo => $_getSZ(2);
  @$pb.TagNumber(3)
  set todo($core.String v) {
    $_setString(2, v);
  }

  @$pb.TagNumber(3)
  $core.bool hasTodo() => $_has(2);
  @$pb.TagNumber(3)
  void clearTodo() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get description => $_getSZ(3);
  @$pb.TagNumber(4)
  set description($core.String v) {
    $_setString(3, v);
  }

  @$pb.TagNumber(4)
  $core.bool hasDescription() => $_has(3);
  @$pb.TagNumber(4)
  void clearDescription() => clearField(4);

  @$pb.TagNumber(5)
  $core.int get vendorServiceCode => $_getIZ(4);
  @$pb.TagNumber(5)
  set vendorServiceCode($core.int v) {
    $_setSignedInt32(4, v);
  }

  @$pb.TagNumber(5)
  $core.bool hasVendorServiceCode() => $_has(4);
  @$pb.TagNumber(5)
  void clearVendorServiceCode() => clearField(5);

  @$pb.TagNumber(6)
  $core.bool get isMandatory => $_getBF(5);
  @$pb.TagNumber(6)
  set isMandatory($core.bool v) {
    $_setBool(5, v);
  }

  @$pb.TagNumber(6)
  $core.bool hasIsMandatory() => $_has(5);
  @$pb.TagNumber(6)
  void clearIsMandatory() => clearField(6);

  @$pb.TagNumber(7)
  $core.bool get isChecked => $_getBF(6);
  @$pb.TagNumber(7)
  set isChecked($core.bool v) {
    $_setBool(6, v);
  }

  @$pb.TagNumber(7)
  $core.bool hasIsChecked() => $_has(6);
  @$pb.TagNumber(7)
  void clearIsChecked() => clearField(7);

  @$pb.TagNumber(8)
  $core.bool get isNotEnabled => $_getBF(7);
  @$pb.TagNumber(8)
  set isNotEnabled($core.bool v) {
    $_setBool(7, v);
  }

  @$pb.TagNumber(8)
  $core.bool hasIsNotEnabled() => $_has(7);
  @$pb.TagNumber(8)
  void clearIsNotEnabled() => clearField(8);

  @$pb.TagNumber(9)
  $core.bool get isWeddyService => $_getBF(8);
  @$pb.TagNumber(9)
  set isWeddyService($core.bool v) {
    $_setBool(8, v);
  }

  @$pb.TagNumber(9)
  $core.bool hasIsWeddyService() => $_has(8);
  @$pb.TagNumber(9)
  void clearIsWeddyService() => clearField(9);

  @$pb.TagNumber(10)
  $core.String get memo => $_getSZ(9);
  @$pb.TagNumber(10)
  set memo($core.String v) {
    $_setString(9, v);
  }

  @$pb.TagNumber(10)
  $core.bool hasMemo() => $_has(9);
  @$pb.TagNumber(10)
  void clearMemo() => clearField(10);

  @$pb.TagNumber(11)
  $core.String get logoImageUrl => $_getSZ(10);
  @$pb.TagNumber(11)
  set logoImageUrl($core.String v) {
    $_setString(10, v);
  }

  @$pb.TagNumber(11)
  $core.bool hasLogoImageUrl() => $_has(10);
  @$pb.TagNumber(11)
  void clearLogoImageUrl() => clearField(11);
}

class TimelineGroupItem extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'TimelineGroupItem',
      createEmptyInstance: create)
    ..a<$core.int>(
        1,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'groupId',
        $pb.PbFieldType.O3,
        protoName: 'groupId')
    ..aOS(
        2,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'title')
    ..aOS(
        3,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'subTitle',
        protoName: 'subTitle')
    ..pc<TimelineItem>(
        4,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'timelineItemList',
        $pb.PbFieldType.PM,
        protoName: 'timelineItemList',
        subBuilder: TimelineItem.create)
    ..hasRequiredFields = false;

  TimelineGroupItem._() : super();
  factory TimelineGroupItem({
    $core.int? groupId,
    $core.String? title,
    $core.String? subTitle,
    $core.Iterable<TimelineItem>? timelineItemList,
  }) {
    final _result = create();
    if (groupId != null) {
      _result.groupId = groupId;
    }
    if (title != null) {
      _result.title = title;
    }
    if (subTitle != null) {
      _result.subTitle = subTitle;
    }
    if (timelineItemList != null) {
      _result.timelineItemList.addAll(timelineItemList);
    }
    return _result;
  }
  factory TimelineGroupItem.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory TimelineGroupItem.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  TimelineGroupItem clone() => TimelineGroupItem()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  TimelineGroupItem copyWith(void Function(TimelineGroupItem) updates) =>
      super.copyWith((message) => updates(message as TimelineGroupItem))
          as TimelineGroupItem; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static TimelineGroupItem create() => TimelineGroupItem._();
  TimelineGroupItem createEmptyInstance() => create();
  static $pb.PbList<TimelineGroupItem> createRepeated() =>
      $pb.PbList<TimelineGroupItem>();
  @$core.pragma('dart2js:noInline')
  static TimelineGroupItem getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<TimelineGroupItem>(create);
  static TimelineGroupItem? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get groupId => $_getIZ(0);
  @$pb.TagNumber(1)
  set groupId($core.int v) {
    $_setSignedInt32(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasGroupId() => $_has(0);
  @$pb.TagNumber(1)
  void clearGroupId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get title => $_getSZ(1);
  @$pb.TagNumber(2)
  set title($core.String v) {
    $_setString(1, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasTitle() => $_has(1);
  @$pb.TagNumber(2)
  void clearTitle() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get subTitle => $_getSZ(2);
  @$pb.TagNumber(3)
  set subTitle($core.String v) {
    $_setString(2, v);
  }

  @$pb.TagNumber(3)
  $core.bool hasSubTitle() => $_has(2);
  @$pb.TagNumber(3)
  void clearSubTitle() => clearField(3);

  @$pb.TagNumber(4)
  $core.List<TimelineItem> get timelineItemList => $_getList(3);
}

class TimelineResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'TimelineResponse',
      createEmptyInstance: create)
    ..a<$core.int>(
        1,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'weddingRemaingDays',
        $pb.PbFieldType.O3,
        protoName: 'weddingRemaingDays')
    ..a<$core.int>(
        2,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'taskProgressRate',
        $pb.PbFieldType.O3,
        protoName: 'taskProgressRate')
    ..pc<TimelineGroupItem>(
        3,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'timelineGroupItemList',
        $pb.PbFieldType.PM,
        protoName: 'timelineGroupItemList',
        subBuilder: TimelineGroupItem.create)
    ..hasRequiredFields = false;

  TimelineResponse._() : super();
  factory TimelineResponse({
    $core.int? weddingRemaingDays,
    $core.int? taskProgressRate,
    $core.Iterable<TimelineGroupItem>? timelineGroupItemList,
  }) {
    final _result = create();
    if (weddingRemaingDays != null) {
      _result.weddingRemaingDays = weddingRemaingDays;
    }
    if (taskProgressRate != null) {
      _result.taskProgressRate = taskProgressRate;
    }
    if (timelineGroupItemList != null) {
      _result.timelineGroupItemList.addAll(timelineGroupItemList);
    }
    return _result;
  }
  factory TimelineResponse.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory TimelineResponse.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  TimelineResponse clone() => TimelineResponse()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  TimelineResponse copyWith(void Function(TimelineResponse) updates) =>
      super.copyWith((message) => updates(message as TimelineResponse))
          as TimelineResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static TimelineResponse create() => TimelineResponse._();
  TimelineResponse createEmptyInstance() => create();
  static $pb.PbList<TimelineResponse> createRepeated() =>
      $pb.PbList<TimelineResponse>();
  @$core.pragma('dart2js:noInline')
  static TimelineResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<TimelineResponse>(create);
  static TimelineResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get weddingRemaingDays => $_getIZ(0);
  @$pb.TagNumber(1)
  set weddingRemaingDays($core.int v) {
    $_setSignedInt32(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasWeddingRemaingDays() => $_has(0);
  @$pb.TagNumber(1)
  void clearWeddingRemaingDays() => clearField(1);

  @$pb.TagNumber(2)
  $core.int get taskProgressRate => $_getIZ(1);
  @$pb.TagNumber(2)
  set taskProgressRate($core.int v) {
    $_setSignedInt32(1, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasTaskProgressRate() => $_has(1);
  @$pb.TagNumber(2)
  void clearTaskProgressRate() => clearField(2);

  @$pb.TagNumber(3)
  $core.List<TimelineGroupItem> get timelineGroupItemList => $_getList(2);
}

class SaveTimelineRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'SaveTimelineRequest',
      createEmptyInstance: create)
    ..pc<TimelineGroupItem>(
        1,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'timelineGroupItemList',
        $pb.PbFieldType.PM,
        protoName: 'timelineGroupItemList',
        subBuilder: TimelineGroupItem.create)
    ..hasRequiredFields = false;

  SaveTimelineRequest._() : super();
  factory SaveTimelineRequest({
    $core.Iterable<TimelineGroupItem>? timelineGroupItemList,
  }) {
    final _result = create();
    if (timelineGroupItemList != null) {
      _result.timelineGroupItemList.addAll(timelineGroupItemList);
    }
    return _result;
  }
  factory SaveTimelineRequest.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory SaveTimelineRequest.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  SaveTimelineRequest clone() => SaveTimelineRequest()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  SaveTimelineRequest copyWith(void Function(SaveTimelineRequest) updates) =>
      super.copyWith((message) => updates(message as SaveTimelineRequest))
          as SaveTimelineRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static SaveTimelineRequest create() => SaveTimelineRequest._();
  SaveTimelineRequest createEmptyInstance() => create();
  static $pb.PbList<SaveTimelineRequest> createRepeated() =>
      $pb.PbList<SaveTimelineRequest>();
  @$core.pragma('dart2js:noInline')
  static SaveTimelineRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<SaveTimelineRequest>(create);
  static SaveTimelineRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<TimelineGroupItem> get timelineGroupItemList => $_getList(0);
}

class ModifyTimelineRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'ModifyTimelineRequest',
      createEmptyInstance: create)
    ..aInt64(
        1,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'groupId',
        protoName: 'groupId')
    ..aInt64(
        2,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'ItemId',
        protoName: 'ItemId')
    ..aOB(
        3,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'isChecked',
        protoName: 'isChecked')
    ..aOB(
        4,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'isNotEnabled',
        protoName: 'isNotEnabled')
    ..aOS(
        5,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'memo')
    ..hasRequiredFields = false;

  ModifyTimelineRequest._() : super();
  factory ModifyTimelineRequest({
    $fixnum.Int64? groupId,
    $fixnum.Int64? itemId,
    $core.bool? isChecked,
    $core.bool? isNotEnabled,
    $core.String? memo,
  }) {
    final _result = create();
    if (groupId != null) {
      _result.groupId = groupId;
    }
    if (itemId != null) {
      _result.itemId = itemId;
    }
    if (isChecked != null) {
      _result.isChecked = isChecked;
    }
    if (isNotEnabled != null) {
      _result.isNotEnabled = isNotEnabled;
    }
    if (memo != null) {
      _result.memo = memo;
    }
    return _result;
  }
  factory ModifyTimelineRequest.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory ModifyTimelineRequest.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  ModifyTimelineRequest clone() =>
      ModifyTimelineRequest()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  ModifyTimelineRequest copyWith(
          void Function(ModifyTimelineRequest) updates) =>
      super.copyWith((message) => updates(message as ModifyTimelineRequest))
          as ModifyTimelineRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ModifyTimelineRequest create() => ModifyTimelineRequest._();
  ModifyTimelineRequest createEmptyInstance() => create();
  static $pb.PbList<ModifyTimelineRequest> createRepeated() =>
      $pb.PbList<ModifyTimelineRequest>();
  @$core.pragma('dart2js:noInline')
  static ModifyTimelineRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ModifyTimelineRequest>(create);
  static ModifyTimelineRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get groupId => $_getI64(0);
  @$pb.TagNumber(1)
  set groupId($fixnum.Int64 v) {
    $_setInt64(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasGroupId() => $_has(0);
  @$pb.TagNumber(1)
  void clearGroupId() => clearField(1);

  @$pb.TagNumber(2)
  $fixnum.Int64 get itemId => $_getI64(1);
  @$pb.TagNumber(2)
  set itemId($fixnum.Int64 v) {
    $_setInt64(1, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasItemId() => $_has(1);
  @$pb.TagNumber(2)
  void clearItemId() => clearField(2);

  @$pb.TagNumber(3)
  $core.bool get isChecked => $_getBF(2);
  @$pb.TagNumber(3)
  set isChecked($core.bool v) {
    $_setBool(2, v);
  }

  @$pb.TagNumber(3)
  $core.bool hasIsChecked() => $_has(2);
  @$pb.TagNumber(3)
  void clearIsChecked() => clearField(3);

  @$pb.TagNumber(4)
  $core.bool get isNotEnabled => $_getBF(3);
  @$pb.TagNumber(4)
  set isNotEnabled($core.bool v) {
    $_setBool(3, v);
  }

  @$pb.TagNumber(4)
  $core.bool hasIsNotEnabled() => $_has(3);
  @$pb.TagNumber(4)
  void clearIsNotEnabled() => clearField(4);

  @$pb.TagNumber(5)
  $core.String get memo => $_getSZ(4);
  @$pb.TagNumber(5)
  set memo($core.String v) {
    $_setString(4, v);
  }

  @$pb.TagNumber(5)
  $core.bool hasMemo() => $_has(4);
  @$pb.TagNumber(5)
  void clearMemo() => clearField(5);
}

class ModifyTimelineResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'ModifyTimelineResponse',
      createEmptyInstance: create)
    ..aInt64(
        1,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'groupId',
        protoName: 'groupId')
    ..aInt64(
        2,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'ItemId',
        protoName: 'ItemId')
    ..aOB(
        3,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'isChecked',
        protoName: 'isChecked')
    ..aOB(
        4,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'isNotEnabled',
        protoName: 'isNotEnabled')
    ..aOS(
        5,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'memo')
    ..hasRequiredFields = false;

  ModifyTimelineResponse._() : super();
  factory ModifyTimelineResponse({
    $fixnum.Int64? groupId,
    $fixnum.Int64? itemId,
    $core.bool? isChecked,
    $core.bool? isNotEnabled,
    $core.String? memo,
  }) {
    final _result = create();
    if (groupId != null) {
      _result.groupId = groupId;
    }
    if (itemId != null) {
      _result.itemId = itemId;
    }
    if (isChecked != null) {
      _result.isChecked = isChecked;
    }
    if (isNotEnabled != null) {
      _result.isNotEnabled = isNotEnabled;
    }
    if (memo != null) {
      _result.memo = memo;
    }
    return _result;
  }
  factory ModifyTimelineResponse.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory ModifyTimelineResponse.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  ModifyTimelineResponse clone() =>
      ModifyTimelineResponse()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  ModifyTimelineResponse copyWith(
          void Function(ModifyTimelineResponse) updates) =>
      super.copyWith((message) => updates(message as ModifyTimelineResponse))
          as ModifyTimelineResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ModifyTimelineResponse create() => ModifyTimelineResponse._();
  ModifyTimelineResponse createEmptyInstance() => create();
  static $pb.PbList<ModifyTimelineResponse> createRepeated() =>
      $pb.PbList<ModifyTimelineResponse>();
  @$core.pragma('dart2js:noInline')
  static ModifyTimelineResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ModifyTimelineResponse>(create);
  static ModifyTimelineResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get groupId => $_getI64(0);
  @$pb.TagNumber(1)
  set groupId($fixnum.Int64 v) {
    $_setInt64(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasGroupId() => $_has(0);
  @$pb.TagNumber(1)
  void clearGroupId() => clearField(1);

  @$pb.TagNumber(2)
  $fixnum.Int64 get itemId => $_getI64(1);
  @$pb.TagNumber(2)
  set itemId($fixnum.Int64 v) {
    $_setInt64(1, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasItemId() => $_has(1);
  @$pb.TagNumber(2)
  void clearItemId() => clearField(2);

  @$pb.TagNumber(3)
  $core.bool get isChecked => $_getBF(2);
  @$pb.TagNumber(3)
  set isChecked($core.bool v) {
    $_setBool(2, v);
  }

  @$pb.TagNumber(3)
  $core.bool hasIsChecked() => $_has(2);
  @$pb.TagNumber(3)
  void clearIsChecked() => clearField(3);

  @$pb.TagNumber(4)
  $core.bool get isNotEnabled => $_getBF(3);
  @$pb.TagNumber(4)
  set isNotEnabled($core.bool v) {
    $_setBool(3, v);
  }

  @$pb.TagNumber(4)
  $core.bool hasIsNotEnabled() => $_has(3);
  @$pb.TagNumber(4)
  void clearIsNotEnabled() => clearField(4);

  @$pb.TagNumber(5)
  $core.String get memo => $_getSZ(4);
  @$pb.TagNumber(5)
  set memo($core.String v) {
    $_setString(4, v);
  }

  @$pb.TagNumber(5)
  $core.bool hasMemo() => $_has(4);
  @$pb.TagNumber(5)
  void clearMemo() => clearField(5);
}

class SimulateUserBudgetRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'SimulateUserBudgetRequest',
      createEmptyInstance: create)
    ..a<$core.double>(
        1,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'priceRate',
        $pb.PbFieldType.OF,
        protoName: 'priceRate')
    ..hasRequiredFields = false;

  SimulateUserBudgetRequest._() : super();
  factory SimulateUserBudgetRequest({
    $core.double? priceRate,
  }) {
    final _result = create();
    if (priceRate != null) {
      _result.priceRate = priceRate;
    }
    return _result;
  }
  factory SimulateUserBudgetRequest.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory SimulateUserBudgetRequest.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  SimulateUserBudgetRequest clone() =>
      SimulateUserBudgetRequest()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  SimulateUserBudgetRequest copyWith(
          void Function(SimulateUserBudgetRequest) updates) =>
      super.copyWith((message) => updates(message as SimulateUserBudgetRequest))
          as SimulateUserBudgetRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static SimulateUserBudgetRequest create() => SimulateUserBudgetRequest._();
  SimulateUserBudgetRequest createEmptyInstance() => create();
  static $pb.PbList<SimulateUserBudgetRequest> createRepeated() =>
      $pb.PbList<SimulateUserBudgetRequest>();
  @$core.pragma('dart2js:noInline')
  static SimulateUserBudgetRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<SimulateUserBudgetRequest>(create);
  static SimulateUserBudgetRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.double get priceRate => $_getN(0);
  @$pb.TagNumber(1)
  set priceRate($core.double v) {
    $_setFloat(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasPriceRate() => $_has(0);
  @$pb.TagNumber(1)
  void clearPriceRate() => clearField(1);
}

class SimulateUserBudgetResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'SimulateUserBudgetResponse',
      createEmptyInstance: create)
    ..aInt64(
        1,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'sumOfPrice',
        protoName: 'sumOfPrice')
    ..pc<VendorServiceItem>(
        2,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'vendorServiceItemList',
        $pb.PbFieldType.PM,
        protoName: 'vendorServiceItemList',
        subBuilder: VendorServiceItem.create)
    ..hasRequiredFields = false;

  SimulateUserBudgetResponse._() : super();
  factory SimulateUserBudgetResponse({
    $fixnum.Int64? sumOfPrice,
    $core.Iterable<VendorServiceItem>? vendorServiceItemList,
  }) {
    final _result = create();
    if (sumOfPrice != null) {
      _result.sumOfPrice = sumOfPrice;
    }
    if (vendorServiceItemList != null) {
      _result.vendorServiceItemList.addAll(vendorServiceItemList);
    }
    return _result;
  }
  factory SimulateUserBudgetResponse.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory SimulateUserBudgetResponse.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  SimulateUserBudgetResponse clone() =>
      SimulateUserBudgetResponse()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  SimulateUserBudgetResponse copyWith(
          void Function(SimulateUserBudgetResponse) updates) =>
      super.copyWith(
              (message) => updates(message as SimulateUserBudgetResponse))
          as SimulateUserBudgetResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static SimulateUserBudgetResponse create() => SimulateUserBudgetResponse._();
  SimulateUserBudgetResponse createEmptyInstance() => create();
  static $pb.PbList<SimulateUserBudgetResponse> createRepeated() =>
      $pb.PbList<SimulateUserBudgetResponse>();
  @$core.pragma('dart2js:noInline')
  static SimulateUserBudgetResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<SimulateUserBudgetResponse>(create);
  static SimulateUserBudgetResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get sumOfPrice => $_getI64(0);
  @$pb.TagNumber(1)
  set sumOfPrice($fixnum.Int64 v) {
    $_setInt64(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasSumOfPrice() => $_has(0);
  @$pb.TagNumber(1)
  void clearSumOfPrice() => clearField(1);

  @$pb.TagNumber(2)
  $core.List<VendorServiceItem> get vendorServiceItemList => $_getList(1);
}

class GetSimulateVendorItemResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'GetSimulateVendorItemResponse',
      createEmptyInstance: create)
    ..pc<SimulateVendorItem>(
        1,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'simulateVendorItemList',
        $pb.PbFieldType.PM,
        protoName: 'simulateVendorItemList',
        subBuilder: SimulateVendorItem.create)
    ..hasRequiredFields = false;

  GetSimulateVendorItemResponse._() : super();
  factory GetSimulateVendorItemResponse({
    $core.Iterable<SimulateVendorItem>? simulateVendorItemList,
  }) {
    final _result = create();
    if (simulateVendorItemList != null) {
      _result.simulateVendorItemList.addAll(simulateVendorItemList);
    }
    return _result;
  }
  factory GetSimulateVendorItemResponse.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory GetSimulateVendorItemResponse.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  GetSimulateVendorItemResponse clone() =>
      GetSimulateVendorItemResponse()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  GetSimulateVendorItemResponse copyWith(
          void Function(GetSimulateVendorItemResponse) updates) =>
      super.copyWith(
              (message) => updates(message as GetSimulateVendorItemResponse))
          as GetSimulateVendorItemResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GetSimulateVendorItemResponse create() =>
      GetSimulateVendorItemResponse._();
  GetSimulateVendorItemResponse createEmptyInstance() => create();
  static $pb.PbList<GetSimulateVendorItemResponse> createRepeated() =>
      $pb.PbList<GetSimulateVendorItemResponse>();
  @$core.pragma('dart2js:noInline')
  static GetSimulateVendorItemResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<GetSimulateVendorItemResponse>(create);
  static GetSimulateVendorItemResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<SimulateVendorItem> get simulateVendorItemList => $_getList(0);
}

class AddSimulateItemRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'AddSimulateItemRequest',
      createEmptyInstance: create)
    ..pc<VendorServiceItem>(
        1,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'vendorServiceItemList',
        $pb.PbFieldType.PM,
        protoName: 'vendorServiceItemList',
        subBuilder: VendorServiceItem.create)
    ..hasRequiredFields = false;

  AddSimulateItemRequest._() : super();
  factory AddSimulateItemRequest({
    $core.Iterable<VendorServiceItem>? vendorServiceItemList,
  }) {
    final _result = create();
    if (vendorServiceItemList != null) {
      _result.vendorServiceItemList.addAll(vendorServiceItemList);
    }
    return _result;
  }
  factory AddSimulateItemRequest.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory AddSimulateItemRequest.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  AddSimulateItemRequest clone() =>
      AddSimulateItemRequest()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  AddSimulateItemRequest copyWith(
          void Function(AddSimulateItemRequest) updates) =>
      super.copyWith((message) => updates(message as AddSimulateItemRequest))
          as AddSimulateItemRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static AddSimulateItemRequest create() => AddSimulateItemRequest._();
  AddSimulateItemRequest createEmptyInstance() => create();
  static $pb.PbList<AddSimulateItemRequest> createRepeated() =>
      $pb.PbList<AddSimulateItemRequest>();
  @$core.pragma('dart2js:noInline')
  static AddSimulateItemRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<AddSimulateItemRequest>(create);
  static AddSimulateItemRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<VendorServiceItem> get vendorServiceItemList => $_getList(0);
}

class CheckListItem extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'CheckListItem',
      createEmptyInstance: create)
    ..aOB(
        1,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'isEnabled',
        protoName: 'isEnabled')
    ..aOM<VendorServiceItem>(
        2,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'vendorServiceItem',
        protoName: 'vendorServiceItem',
        subBuilder: VendorServiceItem.create)
    ..hasRequiredFields = false;

  CheckListItem._() : super();
  factory CheckListItem({
    $core.bool? isEnabled,
    VendorServiceItem? vendorServiceItem,
  }) {
    final _result = create();
    if (isEnabled != null) {
      _result.isEnabled = isEnabled;
    }
    if (vendorServiceItem != null) {
      _result.vendorServiceItem = vendorServiceItem;
    }
    return _result;
  }
  factory CheckListItem.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory CheckListItem.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  CheckListItem clone() => CheckListItem()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  CheckListItem copyWith(void Function(CheckListItem) updates) =>
      super.copyWith((message) => updates(message as CheckListItem))
          as CheckListItem; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static CheckListItem create() => CheckListItem._();
  CheckListItem createEmptyInstance() => create();
  static $pb.PbList<CheckListItem> createRepeated() =>
      $pb.PbList<CheckListItem>();
  @$core.pragma('dart2js:noInline')
  static CheckListItem getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<CheckListItem>(create);
  static CheckListItem? _defaultInstance;

  @$pb.TagNumber(1)
  $core.bool get isEnabled => $_getBF(0);
  @$pb.TagNumber(1)
  set isEnabled($core.bool v) {
    $_setBool(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasIsEnabled() => $_has(0);
  @$pb.TagNumber(1)
  void clearIsEnabled() => clearField(1);

  @$pb.TagNumber(2)
  VendorServiceItem get vendorServiceItem => $_getN(1);
  @$pb.TagNumber(2)
  set vendorServiceItem(VendorServiceItem v) {
    setField(2, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasVendorServiceItem() => $_has(1);
  @$pb.TagNumber(2)
  void clearVendorServiceItem() => clearField(2);
  @$pb.TagNumber(2)
  VendorServiceItem ensureVendorServiceItem() => $_ensure(1);
}

class CheckListResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'CheckListResponse',
      createEmptyInstance: create)
    ..aInt64(
        1,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'myBudget',
        protoName: 'myBudget')
    ..aInt64(
        2,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'checkListBudget',
        protoName: 'checkListBudget')
    ..pc<CheckListItem>(
        3,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'CheckListItemList',
        $pb.PbFieldType.PM,
        protoName: 'CheckListItemList',
        subBuilder: CheckListItem.create)
    ..hasRequiredFields = false;

  CheckListResponse._() : super();
  factory CheckListResponse({
    $fixnum.Int64? myBudget,
    $fixnum.Int64? checkListBudget,
    $core.Iterable<CheckListItem>? checkListItemList,
  }) {
    final _result = create();
    if (myBudget != null) {
      _result.myBudget = myBudget;
    }
    if (checkListBudget != null) {
      _result.checkListBudget = checkListBudget;
    }
    if (checkListItemList != null) {
      _result.checkListItemList.addAll(checkListItemList);
    }
    return _result;
  }
  factory CheckListResponse.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory CheckListResponse.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  CheckListResponse clone() => CheckListResponse()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  CheckListResponse copyWith(void Function(CheckListResponse) updates) =>
      super.copyWith((message) => updates(message as CheckListResponse))
          as CheckListResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static CheckListResponse create() => CheckListResponse._();
  CheckListResponse createEmptyInstance() => create();
  static $pb.PbList<CheckListResponse> createRepeated() =>
      $pb.PbList<CheckListResponse>();
  @$core.pragma('dart2js:noInline')
  static CheckListResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<CheckListResponse>(create);
  static CheckListResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get myBudget => $_getI64(0);
  @$pb.TagNumber(1)
  set myBudget($fixnum.Int64 v) {
    $_setInt64(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasMyBudget() => $_has(0);
  @$pb.TagNumber(1)
  void clearMyBudget() => clearField(1);

  @$pb.TagNumber(2)
  $fixnum.Int64 get checkListBudget => $_getI64(1);
  @$pb.TagNumber(2)
  set checkListBudget($fixnum.Int64 v) {
    $_setInt64(1, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasCheckListBudget() => $_has(1);
  @$pb.TagNumber(2)
  void clearCheckListBudget() => clearField(2);

  @$pb.TagNumber(3)
  $core.List<CheckListItem> get checkListItemList => $_getList(2);
}

class EnableChecklistItemRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'EnableChecklistItemRequest',
      createEmptyInstance: create)
    ..a<$core.int>(
        1,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'vendorServiceCode',
        $pb.PbFieldType.O3,
        protoName: 'vendorServiceCode')
    ..aInt64(
        2,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'vendorServiceItemId',
        protoName: 'vendorServiceItemId')
    ..aOB(
        3,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'isEnabled',
        protoName: 'isEnabled')
    ..hasRequiredFields = false;

  EnableChecklistItemRequest._() : super();
  factory EnableChecklistItemRequest({
    $core.int? vendorServiceCode,
    $fixnum.Int64? vendorServiceItemId,
    $core.bool? isEnabled,
  }) {
    final _result = create();
    if (vendorServiceCode != null) {
      _result.vendorServiceCode = vendorServiceCode;
    }
    if (vendorServiceItemId != null) {
      _result.vendorServiceItemId = vendorServiceItemId;
    }
    if (isEnabled != null) {
      _result.isEnabled = isEnabled;
    }
    return _result;
  }
  factory EnableChecklistItemRequest.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory EnableChecklistItemRequest.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  EnableChecklistItemRequest clone() =>
      EnableChecklistItemRequest()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  EnableChecklistItemRequest copyWith(
          void Function(EnableChecklistItemRequest) updates) =>
      super.copyWith(
              (message) => updates(message as EnableChecklistItemRequest))
          as EnableChecklistItemRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static EnableChecklistItemRequest create() => EnableChecklistItemRequest._();
  EnableChecklistItemRequest createEmptyInstance() => create();
  static $pb.PbList<EnableChecklistItemRequest> createRepeated() =>
      $pb.PbList<EnableChecklistItemRequest>();
  @$core.pragma('dart2js:noInline')
  static EnableChecklistItemRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<EnableChecklistItemRequest>(create);
  static EnableChecklistItemRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get vendorServiceCode => $_getIZ(0);
  @$pb.TagNumber(1)
  set vendorServiceCode($core.int v) {
    $_setSignedInt32(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasVendorServiceCode() => $_has(0);
  @$pb.TagNumber(1)
  void clearVendorServiceCode() => clearField(1);

  @$pb.TagNumber(2)
  $fixnum.Int64 get vendorServiceItemId => $_getI64(1);
  @$pb.TagNumber(2)
  set vendorServiceItemId($fixnum.Int64 v) {
    $_setInt64(1, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasVendorServiceItemId() => $_has(1);
  @$pb.TagNumber(2)
  void clearVendorServiceItemId() => clearField(2);

  @$pb.TagNumber(3)
  $core.bool get isEnabled => $_getBF(2);
  @$pb.TagNumber(3)
  set isEnabled($core.bool v) {
    $_setBool(2, v);
  }

  @$pb.TagNumber(3)
  $core.bool hasIsEnabled() => $_has(2);
  @$pb.TagNumber(3)
  void clearIsEnabled() => clearField(3);
}

class ChangeChecklistVendorRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'ChangeChecklistVendorRequest',
      createEmptyInstance: create)
    ..a<$core.int>(
        1,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'vendorServiceCode',
        $pb.PbFieldType.O3,
        protoName: 'vendorServiceCode')
    ..aInt64(
        2,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'vendorServiceItemId',
        protoName: 'vendorServiceItemId')
    ..hasRequiredFields = false;

  ChangeChecklistVendorRequest._() : super();
  factory ChangeChecklistVendorRequest({
    $core.int? vendorServiceCode,
    $fixnum.Int64? vendorServiceItemId,
  }) {
    final _result = create();
    if (vendorServiceCode != null) {
      _result.vendorServiceCode = vendorServiceCode;
    }
    if (vendorServiceItemId != null) {
      _result.vendorServiceItemId = vendorServiceItemId;
    }
    return _result;
  }
  factory ChangeChecklistVendorRequest.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory ChangeChecklistVendorRequest.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  ChangeChecklistVendorRequest clone() =>
      ChangeChecklistVendorRequest()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  ChangeChecklistVendorRequest copyWith(
          void Function(ChangeChecklistVendorRequest) updates) =>
      super.copyWith(
              (message) => updates(message as ChangeChecklistVendorRequest))
          as ChangeChecklistVendorRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ChangeChecklistVendorRequest create() =>
      ChangeChecklistVendorRequest._();
  ChangeChecklistVendorRequest createEmptyInstance() => create();
  static $pb.PbList<ChangeChecklistVendorRequest> createRepeated() =>
      $pb.PbList<ChangeChecklistVendorRequest>();
  @$core.pragma('dart2js:noInline')
  static ChangeChecklistVendorRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ChangeChecklistVendorRequest>(create);
  static ChangeChecklistVendorRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get vendorServiceCode => $_getIZ(0);
  @$pb.TagNumber(1)
  set vendorServiceCode($core.int v) {
    $_setSignedInt32(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasVendorServiceCode() => $_has(0);
  @$pb.TagNumber(1)
  void clearVendorServiceCode() => clearField(1);

  @$pb.TagNumber(2)
  $fixnum.Int64 get vendorServiceItemId => $_getI64(1);
  @$pb.TagNumber(2)
  set vendorServiceItemId($fixnum.Int64 v) {
    $_setInt64(1, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasVendorServiceItemId() => $_has(1);
  @$pb.TagNumber(2)
  void clearVendorServiceItemId() => clearField(2);
}

class VendorServiceDetailsRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'VendorServiceDetailsRequest',
      createEmptyInstance: create)
    ..aInt64(
        1,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'vendorServiceItemId',
        protoName: 'vendorServiceItemId')
    ..hasRequiredFields = false;

  VendorServiceDetailsRequest._() : super();
  factory VendorServiceDetailsRequest({
    $fixnum.Int64? vendorServiceItemId,
  }) {
    final _result = create();
    if (vendorServiceItemId != null) {
      _result.vendorServiceItemId = vendorServiceItemId;
    }
    return _result;
  }
  factory VendorServiceDetailsRequest.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory VendorServiceDetailsRequest.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  VendorServiceDetailsRequest clone() =>
      VendorServiceDetailsRequest()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  VendorServiceDetailsRequest copyWith(
          void Function(VendorServiceDetailsRequest) updates) =>
      super.copyWith(
              (message) => updates(message as VendorServiceDetailsRequest))
          as VendorServiceDetailsRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static VendorServiceDetailsRequest create() =>
      VendorServiceDetailsRequest._();
  VendorServiceDetailsRequest createEmptyInstance() => create();
  static $pb.PbList<VendorServiceDetailsRequest> createRepeated() =>
      $pb.PbList<VendorServiceDetailsRequest>();
  @$core.pragma('dart2js:noInline')
  static VendorServiceDetailsRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<VendorServiceDetailsRequest>(create);
  static VendorServiceDetailsRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get vendorServiceItemId => $_getI64(0);
  @$pb.TagNumber(1)
  set vendorServiceItemId($fixnum.Int64 v) {
    $_setInt64(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasVendorServiceItemId() => $_has(0);
  @$pb.TagNumber(1)
  void clearVendorServiceItemId() => clearField(1);
}

class VendorServiceDetailsResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'VendorServiceDetailsResponse',
      createEmptyInstance: create)
    ..aOM<VendorServiceItemDetails>(
        1,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'vendorServiceItemDetails',
        protoName: 'vendorServiceItemDetails',
        subBuilder: VendorServiceItemDetails.create)
    ..hasRequiredFields = false;

  VendorServiceDetailsResponse._() : super();
  factory VendorServiceDetailsResponse({
    VendorServiceItemDetails? vendorServiceItemDetails,
  }) {
    final _result = create();
    if (vendorServiceItemDetails != null) {
      _result.vendorServiceItemDetails = vendorServiceItemDetails;
    }
    return _result;
  }
  factory VendorServiceDetailsResponse.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory VendorServiceDetailsResponse.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  VendorServiceDetailsResponse clone() =>
      VendorServiceDetailsResponse()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  VendorServiceDetailsResponse copyWith(
          void Function(VendorServiceDetailsResponse) updates) =>
      super.copyWith(
              (message) => updates(message as VendorServiceDetailsResponse))
          as VendorServiceDetailsResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static VendorServiceDetailsResponse create() =>
      VendorServiceDetailsResponse._();
  VendorServiceDetailsResponse createEmptyInstance() => create();
  static $pb.PbList<VendorServiceDetailsResponse> createRepeated() =>
      $pb.PbList<VendorServiceDetailsResponse>();
  @$core.pragma('dart2js:noInline')
  static VendorServiceDetailsResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<VendorServiceDetailsResponse>(create);
  static VendorServiceDetailsResponse? _defaultInstance;

  @$pb.TagNumber(1)
  VendorServiceItemDetails get vendorServiceItemDetails => $_getN(0);
  @$pb.TagNumber(1)
  set vendorServiceItemDetails(VendorServiceItemDetails v) {
    setField(1, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasVendorServiceItemDetails() => $_has(0);
  @$pb.TagNumber(1)
  void clearVendorServiceItemDetails() => clearField(1);
  @$pb.TagNumber(1)
  VendorServiceItemDetails ensureVendorServiceItemDetails() => $_ensure(0);
}

class ShareChecklistRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'ShareChecklistRequest',
      createEmptyInstance: create)
    ..aInt64(
        1,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'targetUserPhoneNumber',
        protoName: 'targetUserPhoneNumber')
    ..hasRequiredFields = false;

  ShareChecklistRequest._() : super();
  factory ShareChecklistRequest({
    $fixnum.Int64? targetUserPhoneNumber,
  }) {
    final _result = create();
    if (targetUserPhoneNumber != null) {
      _result.targetUserPhoneNumber = targetUserPhoneNumber;
    }
    return _result;
  }
  factory ShareChecklistRequest.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory ShareChecklistRequest.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  ShareChecklistRequest clone() =>
      ShareChecklistRequest()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  ShareChecklistRequest copyWith(
          void Function(ShareChecklistRequest) updates) =>
      super.copyWith((message) => updates(message as ShareChecklistRequest))
          as ShareChecklistRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ShareChecklistRequest create() => ShareChecklistRequest._();
  ShareChecklistRequest createEmptyInstance() => create();
  static $pb.PbList<ShareChecklistRequest> createRepeated() =>
      $pb.PbList<ShareChecklistRequest>();
  @$core.pragma('dart2js:noInline')
  static ShareChecklistRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ShareChecklistRequest>(create);
  static ShareChecklistRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get targetUserPhoneNumber => $_getI64(0);
  @$pb.TagNumber(1)
  set targetUserPhoneNumber($fixnum.Int64 v) {
    $_setInt64(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasTargetUserPhoneNumber() => $_has(0);
  @$pb.TagNumber(1)
  void clearTargetUserPhoneNumber() => clearField(1);
}

class VendorCategoryMenuResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'VendorCategoryMenuResponse',
      createEmptyInstance: create)
    ..aOM<$0.AppResultResponse>(
        1,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'response',
        subBuilder: $0.AppResultResponse.create)
    ..aOS(
        2,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'suggestedSearchTags',
        protoName: 'suggestedSearchTags')
    ..p<$core.int>(
        3,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'vendorServiceCode',
        $pb.PbFieldType.K3,
        protoName: 'vendorServiceCode')
    ..hasRequiredFields = false;

  VendorCategoryMenuResponse._() : super();
  factory VendorCategoryMenuResponse({
    $0.AppResultResponse? response,
    $core.String? suggestedSearchTags,
    $core.Iterable<$core.int>? vendorServiceCode,
  }) {
    final _result = create();
    if (response != null) {
      _result.response = response;
    }
    if (suggestedSearchTags != null) {
      _result.suggestedSearchTags = suggestedSearchTags;
    }
    if (vendorServiceCode != null) {
      _result.vendorServiceCode.addAll(vendorServiceCode);
    }
    return _result;
  }
  factory VendorCategoryMenuResponse.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory VendorCategoryMenuResponse.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  VendorCategoryMenuResponse clone() =>
      VendorCategoryMenuResponse()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  VendorCategoryMenuResponse copyWith(
          void Function(VendorCategoryMenuResponse) updates) =>
      super.copyWith(
              (message) => updates(message as VendorCategoryMenuResponse))
          as VendorCategoryMenuResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static VendorCategoryMenuResponse create() => VendorCategoryMenuResponse._();
  VendorCategoryMenuResponse createEmptyInstance() => create();
  static $pb.PbList<VendorCategoryMenuResponse> createRepeated() =>
      $pb.PbList<VendorCategoryMenuResponse>();
  @$core.pragma('dart2js:noInline')
  static VendorCategoryMenuResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<VendorCategoryMenuResponse>(create);
  static VendorCategoryMenuResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $0.AppResultResponse get response => $_getN(0);
  @$pb.TagNumber(1)
  set response($0.AppResultResponse v) {
    setField(1, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasResponse() => $_has(0);
  @$pb.TagNumber(1)
  void clearResponse() => clearField(1);
  @$pb.TagNumber(1)
  $0.AppResultResponse ensureResponse() => $_ensure(0);

  @$pb.TagNumber(2)
  $core.String get suggestedSearchTags => $_getSZ(1);
  @$pb.TagNumber(2)
  set suggestedSearchTags($core.String v) {
    $_setString(1, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasSuggestedSearchTags() => $_has(1);
  @$pb.TagNumber(2)
  void clearSuggestedSearchTags() => clearField(2);

  @$pb.TagNumber(3)
  $core.List<$core.int> get vendorServiceCode => $_getList(2);
}

class SearchVendorServiceRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'SearchVendorServiceRequest',
      createEmptyInstance: create)
    ..a<$core.int>(
        1,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'vendorServiceCode',
        $pb.PbFieldType.O3,
        protoName: 'vendorServiceCode')
    ..aOS(
        2,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'tags')
    ..hasRequiredFields = false;

  SearchVendorServiceRequest._() : super();
  factory SearchVendorServiceRequest({
    $core.int? vendorServiceCode,
    $core.String? tags,
  }) {
    final _result = create();
    if (vendorServiceCode != null) {
      _result.vendorServiceCode = vendorServiceCode;
    }
    if (tags != null) {
      _result.tags = tags;
    }
    return _result;
  }
  factory SearchVendorServiceRequest.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory SearchVendorServiceRequest.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  SearchVendorServiceRequest clone() =>
      SearchVendorServiceRequest()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  SearchVendorServiceRequest copyWith(
          void Function(SearchVendorServiceRequest) updates) =>
      super.copyWith(
              (message) => updates(message as SearchVendorServiceRequest))
          as SearchVendorServiceRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static SearchVendorServiceRequest create() => SearchVendorServiceRequest._();
  SearchVendorServiceRequest createEmptyInstance() => create();
  static $pb.PbList<SearchVendorServiceRequest> createRepeated() =>
      $pb.PbList<SearchVendorServiceRequest>();
  @$core.pragma('dart2js:noInline')
  static SearchVendorServiceRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<SearchVendorServiceRequest>(create);
  static SearchVendorServiceRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get vendorServiceCode => $_getIZ(0);
  @$pb.TagNumber(1)
  set vendorServiceCode($core.int v) {
    $_setSignedInt32(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasVendorServiceCode() => $_has(0);
  @$pb.TagNumber(1)
  void clearVendorServiceCode() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get tags => $_getSZ(1);
  @$pb.TagNumber(2)
  set tags($core.String v) {
    $_setString(1, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasTags() => $_has(1);
  @$pb.TagNumber(2)
  void clearTags() => clearField(2);
}

class SaveUserProfileRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'SaveUserProfileRequest',
      createEmptyInstance: create)
    ..aOS(
        1,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'name')
    ..a<$core.int>(
        2,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'relationShipCode',
        $pb.PbFieldType.O3,
        protoName: 'relationShipCode')
    ..aOS(
        3,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'ceremonyDate',
        protoName: 'ceremonyDate')
    ..a<$core.int>(
        4,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'weddingAdminDivisionCode',
        $pb.PbFieldType.O3,
        protoName: 'weddingAdminDivisionCode')
    ..aInt64(
        5,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'weddingBudget',
        protoName: 'weddingBudget')
    ..hasRequiredFields = false;

  SaveUserProfileRequest._() : super();
  factory SaveUserProfileRequest({
    $core.String? name,
    $core.int? relationShipCode,
    $core.String? ceremonyDate,
    $core.int? weddingAdminDivisionCode,
    $fixnum.Int64? weddingBudget,
  }) {
    final _result = create();
    if (name != null) {
      _result.name = name;
    }
    if (relationShipCode != null) {
      _result.relationShipCode = relationShipCode;
    }
    if (ceremonyDate != null) {
      _result.ceremonyDate = ceremonyDate;
    }
    if (weddingAdminDivisionCode != null) {
      _result.weddingAdminDivisionCode = weddingAdminDivisionCode;
    }
    if (weddingBudget != null) {
      _result.weddingBudget = weddingBudget;
    }
    return _result;
  }
  factory SaveUserProfileRequest.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory SaveUserProfileRequest.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  SaveUserProfileRequest clone() =>
      SaveUserProfileRequest()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  SaveUserProfileRequest copyWith(
          void Function(SaveUserProfileRequest) updates) =>
      super.copyWith((message) => updates(message as SaveUserProfileRequest))
          as SaveUserProfileRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static SaveUserProfileRequest create() => SaveUserProfileRequest._();
  SaveUserProfileRequest createEmptyInstance() => create();
  static $pb.PbList<SaveUserProfileRequest> createRepeated() =>
      $pb.PbList<SaveUserProfileRequest>();
  @$core.pragma('dart2js:noInline')
  static SaveUserProfileRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<SaveUserProfileRequest>(create);
  static SaveUserProfileRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get name => $_getSZ(0);
  @$pb.TagNumber(1)
  set name($core.String v) {
    $_setString(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasName() => $_has(0);
  @$pb.TagNumber(1)
  void clearName() => clearField(1);

  @$pb.TagNumber(2)
  $core.int get relationShipCode => $_getIZ(1);
  @$pb.TagNumber(2)
  set relationShipCode($core.int v) {
    $_setSignedInt32(1, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasRelationShipCode() => $_has(1);
  @$pb.TagNumber(2)
  void clearRelationShipCode() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get ceremonyDate => $_getSZ(2);
  @$pb.TagNumber(3)
  set ceremonyDate($core.String v) {
    $_setString(2, v);
  }

  @$pb.TagNumber(3)
  $core.bool hasCeremonyDate() => $_has(2);
  @$pb.TagNumber(3)
  void clearCeremonyDate() => clearField(3);

  @$pb.TagNumber(4)
  $core.int get weddingAdminDivisionCode => $_getIZ(3);
  @$pb.TagNumber(4)
  set weddingAdminDivisionCode($core.int v) {
    $_setSignedInt32(3, v);
  }

  @$pb.TagNumber(4)
  $core.bool hasWeddingAdminDivisionCode() => $_has(3);
  @$pb.TagNumber(4)
  void clearWeddingAdminDivisionCode() => clearField(4);

  @$pb.TagNumber(5)
  $fixnum.Int64 get weddingBudget => $_getI64(4);
  @$pb.TagNumber(5)
  set weddingBudget($fixnum.Int64 v) {
    $_setInt64(4, v);
  }

  @$pb.TagNumber(5)
  $core.bool hasWeddingBudget() => $_has(4);
  @$pb.TagNumber(5)
  void clearWeddingBudget() => clearField(5);
}

class UserProfileResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'UserProfileResponse',
      createEmptyInstance: create)
    ..aOS(
        1,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'name')
    ..aOS(
        2,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'userId',
        protoName: 'userId')
    ..aOS(
        3,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'phoneNumber',
        protoName: 'phoneNumber')
    ..aOS(
        4,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'email')
    ..a<$core.int>(
        5,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'relationShipCode',
        $pb.PbFieldType.O3,
        protoName: 'relationShipCode')
    ..aOS(
        6,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'ceremonyDate',
        protoName: 'ceremonyDate')
    ..a<$core.int>(
        7,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'weddingAdminDivisionCode',
        $pb.PbFieldType.O3,
        protoName: 'weddingAdminDivisionCode')
    ..aInt64(
        8,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'weddingBudget',
        protoName: 'weddingBudget')
    ..hasRequiredFields = false;

  UserProfileResponse._() : super();
  factory UserProfileResponse({
    $core.String? name,
    $core.String? userId,
    $core.String? phoneNumber,
    $core.String? email,
    $core.int? relationShipCode,
    $core.String? ceremonyDate,
    $core.int? weddingAdminDivisionCode,
    $fixnum.Int64? weddingBudget,
  }) {
    final _result = create();
    if (name != null) {
      _result.name = name;
    }
    if (userId != null) {
      _result.userId = userId;
    }
    if (phoneNumber != null) {
      _result.phoneNumber = phoneNumber;
    }
    if (email != null) {
      _result.email = email;
    }
    if (relationShipCode != null) {
      _result.relationShipCode = relationShipCode;
    }
    if (ceremonyDate != null) {
      _result.ceremonyDate = ceremonyDate;
    }
    if (weddingAdminDivisionCode != null) {
      _result.weddingAdminDivisionCode = weddingAdminDivisionCode;
    }
    if (weddingBudget != null) {
      _result.weddingBudget = weddingBudget;
    }
    return _result;
  }
  factory UserProfileResponse.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory UserProfileResponse.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  UserProfileResponse clone() => UserProfileResponse()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  UserProfileResponse copyWith(void Function(UserProfileResponse) updates) =>
      super.copyWith((message) => updates(message as UserProfileResponse))
          as UserProfileResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static UserProfileResponse create() => UserProfileResponse._();
  UserProfileResponse createEmptyInstance() => create();
  static $pb.PbList<UserProfileResponse> createRepeated() =>
      $pb.PbList<UserProfileResponse>();
  @$core.pragma('dart2js:noInline')
  static UserProfileResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<UserProfileResponse>(create);
  static UserProfileResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get name => $_getSZ(0);
  @$pb.TagNumber(1)
  set name($core.String v) {
    $_setString(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasName() => $_has(0);
  @$pb.TagNumber(1)
  void clearName() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get userId => $_getSZ(1);
  @$pb.TagNumber(2)
  set userId($core.String v) {
    $_setString(1, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasUserId() => $_has(1);
  @$pb.TagNumber(2)
  void clearUserId() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get phoneNumber => $_getSZ(2);
  @$pb.TagNumber(3)
  set phoneNumber($core.String v) {
    $_setString(2, v);
  }

  @$pb.TagNumber(3)
  $core.bool hasPhoneNumber() => $_has(2);
  @$pb.TagNumber(3)
  void clearPhoneNumber() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get email => $_getSZ(3);
  @$pb.TagNumber(4)
  set email($core.String v) {
    $_setString(3, v);
  }

  @$pb.TagNumber(4)
  $core.bool hasEmail() => $_has(3);
  @$pb.TagNumber(4)
  void clearEmail() => clearField(4);

  @$pb.TagNumber(5)
  $core.int get relationShipCode => $_getIZ(4);
  @$pb.TagNumber(5)
  set relationShipCode($core.int v) {
    $_setSignedInt32(4, v);
  }

  @$pb.TagNumber(5)
  $core.bool hasRelationShipCode() => $_has(4);
  @$pb.TagNumber(5)
  void clearRelationShipCode() => clearField(5);

  @$pb.TagNumber(6)
  $core.String get ceremonyDate => $_getSZ(5);
  @$pb.TagNumber(6)
  set ceremonyDate($core.String v) {
    $_setString(5, v);
  }

  @$pb.TagNumber(6)
  $core.bool hasCeremonyDate() => $_has(5);
  @$pb.TagNumber(6)
  void clearCeremonyDate() => clearField(6);

  @$pb.TagNumber(7)
  $core.int get weddingAdminDivisionCode => $_getIZ(6);
  @$pb.TagNumber(7)
  set weddingAdminDivisionCode($core.int v) {
    $_setSignedInt32(6, v);
  }

  @$pb.TagNumber(7)
  $core.bool hasWeddingAdminDivisionCode() => $_has(6);
  @$pb.TagNumber(7)
  void clearWeddingAdminDivisionCode() => clearField(7);

  @$pb.TagNumber(8)
  $fixnum.Int64 get weddingBudget => $_getI64(7);
  @$pb.TagNumber(8)
  set weddingBudget($fixnum.Int64 v) {
    $_setInt64(7, v);
  }

  @$pb.TagNumber(8)
  $core.bool hasWeddingBudget() => $_has(7);
  @$pb.TagNumber(8)
  void clearWeddingBudget() => clearField(8);
}

class Bookmark extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'Bookmark',
      createEmptyInstance: create)
    ..aInt64(
        1,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'vendorProfileId',
        protoName: 'vendorProfileId')
    ..aOS(
        2,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'markingDate',
        protoName: 'markingDate')
    ..aOS(
        3,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'vendorName',
        protoName: 'vendorName')
    ..a<$core.int>(
        4,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'vendorServiceCode',
        $pb.PbFieldType.O3,
        protoName: 'vendorServiceCode')
    ..hasRequiredFields = false;

  Bookmark._() : super();
  factory Bookmark({
    $fixnum.Int64? vendorProfileId,
    $core.String? markingDate,
    $core.String? vendorName,
    $core.int? vendorServiceCode,
  }) {
    final _result = create();
    if (vendorProfileId != null) {
      _result.vendorProfileId = vendorProfileId;
    }
    if (markingDate != null) {
      _result.markingDate = markingDate;
    }
    if (vendorName != null) {
      _result.vendorName = vendorName;
    }
    if (vendorServiceCode != null) {
      _result.vendorServiceCode = vendorServiceCode;
    }
    return _result;
  }
  factory Bookmark.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory Bookmark.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  Bookmark clone() => Bookmark()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  Bookmark copyWith(void Function(Bookmark) updates) =>
      super.copyWith((message) => updates(message as Bookmark))
          as Bookmark; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Bookmark create() => Bookmark._();
  Bookmark createEmptyInstance() => create();
  static $pb.PbList<Bookmark> createRepeated() => $pb.PbList<Bookmark>();
  @$core.pragma('dart2js:noInline')
  static Bookmark getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Bookmark>(create);
  static Bookmark? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get vendorProfileId => $_getI64(0);
  @$pb.TagNumber(1)
  set vendorProfileId($fixnum.Int64 v) {
    $_setInt64(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasVendorProfileId() => $_has(0);
  @$pb.TagNumber(1)
  void clearVendorProfileId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get markingDate => $_getSZ(1);
  @$pb.TagNumber(2)
  set markingDate($core.String v) {
    $_setString(1, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasMarkingDate() => $_has(1);
  @$pb.TagNumber(2)
  void clearMarkingDate() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get vendorName => $_getSZ(2);
  @$pb.TagNumber(3)
  set vendorName($core.String v) {
    $_setString(2, v);
  }

  @$pb.TagNumber(3)
  $core.bool hasVendorName() => $_has(2);
  @$pb.TagNumber(3)
  void clearVendorName() => clearField(3);

  @$pb.TagNumber(4)
  $core.int get vendorServiceCode => $_getIZ(3);
  @$pb.TagNumber(4)
  set vendorServiceCode($core.int v) {
    $_setSignedInt32(3, v);
  }

  @$pb.TagNumber(4)
  $core.bool hasVendorServiceCode() => $_has(3);
  @$pb.TagNumber(4)
  void clearVendorServiceCode() => clearField(4);
}

class BookmarkRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'BookmarkRequest',
      createEmptyInstance: create)
    ..aInt64(
        1,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'vendorProfileId',
        protoName: 'vendorProfileId')
    ..hasRequiredFields = false;

  BookmarkRequest._() : super();
  factory BookmarkRequest({
    $fixnum.Int64? vendorProfileId,
  }) {
    final _result = create();
    if (vendorProfileId != null) {
      _result.vendorProfileId = vendorProfileId;
    }
    return _result;
  }
  factory BookmarkRequest.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory BookmarkRequest.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  BookmarkRequest clone() => BookmarkRequest()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  BookmarkRequest copyWith(void Function(BookmarkRequest) updates) =>
      super.copyWith((message) => updates(message as BookmarkRequest))
          as BookmarkRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static BookmarkRequest create() => BookmarkRequest._();
  BookmarkRequest createEmptyInstance() => create();
  static $pb.PbList<BookmarkRequest> createRepeated() =>
      $pb.PbList<BookmarkRequest>();
  @$core.pragma('dart2js:noInline')
  static BookmarkRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<BookmarkRequest>(create);
  static BookmarkRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get vendorProfileId => $_getI64(0);
  @$pb.TagNumber(1)
  set vendorProfileId($fixnum.Int64 v) {
    $_setInt64(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasVendorProfileId() => $_has(0);
  @$pb.TagNumber(1)
  void clearVendorProfileId() => clearField(1);
}

class BookmarkResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'BookmarkResponse',
      createEmptyInstance: create)
    ..pc<Bookmark>(
        1,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'bookmarkList',
        $pb.PbFieldType.PM,
        protoName: 'bookmarkList',
        subBuilder: Bookmark.create)
    ..hasRequiredFields = false;

  BookmarkResponse._() : super();
  factory BookmarkResponse({
    $core.Iterable<Bookmark>? bookmarkList,
  }) {
    final _result = create();
    if (bookmarkList != null) {
      _result.bookmarkList.addAll(bookmarkList);
    }
    return _result;
  }
  factory BookmarkResponse.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory BookmarkResponse.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  BookmarkResponse clone() => BookmarkResponse()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  BookmarkResponse copyWith(void Function(BookmarkResponse) updates) =>
      super.copyWith((message) => updates(message as BookmarkResponse))
          as BookmarkResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static BookmarkResponse create() => BookmarkResponse._();
  BookmarkResponse createEmptyInstance() => create();
  static $pb.PbList<BookmarkResponse> createRepeated() =>
      $pb.PbList<BookmarkResponse>();
  @$core.pragma('dart2js:noInline')
  static BookmarkResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<BookmarkResponse>(create);
  static BookmarkResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<Bookmark> get bookmarkList => $_getList(0);
}

class Consulting extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'Consulting',
      createEmptyInstance: create)
    ..aInt64(
        1,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'consultingVendorId',
        protoName: 'consultingVendorId')
    ..aInt64(
        2,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'vendorProfileId',
        protoName: 'vendorProfileId')
    ..aInt64(
        3,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'userAccountId',
        protoName: 'userAccountId')
    ..aInt64(
        4,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'vendorServiceCode',
        protoName: 'vendorServiceCode')
    ..pc<ConsultingItem>(
        5,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'consultingItemList',
        $pb.PbFieldType.PM,
        protoName: 'consultingItemList',
        subBuilder: ConsultingItem.create)
    ..aOS(
        6,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'vendorName',
        protoName: 'vendorName')
    ..hasRequiredFields = false;

  Consulting._() : super();
  factory Consulting({
    $fixnum.Int64? consultingVendorId,
    $fixnum.Int64? vendorProfileId,
    $fixnum.Int64? userAccountId,
    $fixnum.Int64? vendorServiceCode,
    $core.Iterable<ConsultingItem>? consultingItemList,
    $core.String? vendorName,
  }) {
    final _result = create();
    if (consultingVendorId != null) {
      _result.consultingVendorId = consultingVendorId;
    }
    if (vendorProfileId != null) {
      _result.vendorProfileId = vendorProfileId;
    }
    if (userAccountId != null) {
      _result.userAccountId = userAccountId;
    }
    if (vendorServiceCode != null) {
      _result.vendorServiceCode = vendorServiceCode;
    }
    if (consultingItemList != null) {
      _result.consultingItemList.addAll(consultingItemList);
    }
    if (vendorName != null) {
      _result.vendorName = vendorName;
    }
    return _result;
  }
  factory Consulting.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory Consulting.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  Consulting clone() => Consulting()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  Consulting copyWith(void Function(Consulting) updates) =>
      super.copyWith((message) => updates(message as Consulting))
          as Consulting; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Consulting create() => Consulting._();
  Consulting createEmptyInstance() => create();
  static $pb.PbList<Consulting> createRepeated() => $pb.PbList<Consulting>();
  @$core.pragma('dart2js:noInline')
  static Consulting getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<Consulting>(create);
  static Consulting? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get consultingVendorId => $_getI64(0);
  @$pb.TagNumber(1)
  set consultingVendorId($fixnum.Int64 v) {
    $_setInt64(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasConsultingVendorId() => $_has(0);
  @$pb.TagNumber(1)
  void clearConsultingVendorId() => clearField(1);

  @$pb.TagNumber(2)
  $fixnum.Int64 get vendorProfileId => $_getI64(1);
  @$pb.TagNumber(2)
  set vendorProfileId($fixnum.Int64 v) {
    $_setInt64(1, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasVendorProfileId() => $_has(1);
  @$pb.TagNumber(2)
  void clearVendorProfileId() => clearField(2);

  @$pb.TagNumber(3)
  $fixnum.Int64 get userAccountId => $_getI64(2);
  @$pb.TagNumber(3)
  set userAccountId($fixnum.Int64 v) {
    $_setInt64(2, v);
  }

  @$pb.TagNumber(3)
  $core.bool hasUserAccountId() => $_has(2);
  @$pb.TagNumber(3)
  void clearUserAccountId() => clearField(3);

  @$pb.TagNumber(4)
  $fixnum.Int64 get vendorServiceCode => $_getI64(3);
  @$pb.TagNumber(4)
  set vendorServiceCode($fixnum.Int64 v) {
    $_setInt64(3, v);
  }

  @$pb.TagNumber(4)
  $core.bool hasVendorServiceCode() => $_has(3);
  @$pb.TagNumber(4)
  void clearVendorServiceCode() => clearField(4);

  @$pb.TagNumber(5)
  $core.List<ConsultingItem> get consultingItemList => $_getList(4);

  @$pb.TagNumber(6)
  $core.String get vendorName => $_getSZ(5);
  @$pb.TagNumber(6)
  set vendorName($core.String v) {
    $_setString(5, v);
  }

  @$pb.TagNumber(6)
  $core.bool hasVendorName() => $_has(5);
  @$pb.TagNumber(6)
  void clearVendorName() => clearField(6);
}

class ConsultingItem extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'ConsultingItem',
      createEmptyInstance: create)
    ..aInt64(
        1,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'itemId',
        protoName: 'itemId')
    ..aInt64(
        2,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'price')
    ..aInt64(
        3,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'amount')
    ..aInt64(
        4,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'totalPrice',
        protoName: 'totalPrice')
    ..aInt64(
        5,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'priceId',
        protoName: 'priceId')
    ..aOS(
        6,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'title')
    ..pPS(
        7,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'imageUrl',
        protoName: 'imageUrl')
    ..hasRequiredFields = false;

  ConsultingItem._() : super();
  factory ConsultingItem({
    $fixnum.Int64? itemId,
    $fixnum.Int64? price,
    $fixnum.Int64? amount,
    $fixnum.Int64? totalPrice,
    $fixnum.Int64? priceId,
    $core.String? title,
    $core.Iterable<$core.String>? imageUrl,
  }) {
    final _result = create();
    if (itemId != null) {
      _result.itemId = itemId;
    }
    if (price != null) {
      _result.price = price;
    }
    if (amount != null) {
      _result.amount = amount;
    }
    if (totalPrice != null) {
      _result.totalPrice = totalPrice;
    }
    if (priceId != null) {
      _result.priceId = priceId;
    }
    if (title != null) {
      _result.title = title;
    }
    if (imageUrl != null) {
      _result.imageUrl.addAll(imageUrl);
    }
    return _result;
  }
  factory ConsultingItem.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory ConsultingItem.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  ConsultingItem clone() => ConsultingItem()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  ConsultingItem copyWith(void Function(ConsultingItem) updates) =>
      super.copyWith((message) => updates(message as ConsultingItem))
          as ConsultingItem; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ConsultingItem create() => ConsultingItem._();
  ConsultingItem createEmptyInstance() => create();
  static $pb.PbList<ConsultingItem> createRepeated() =>
      $pb.PbList<ConsultingItem>();
  @$core.pragma('dart2js:noInline')
  static ConsultingItem getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ConsultingItem>(create);
  static ConsultingItem? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get itemId => $_getI64(0);
  @$pb.TagNumber(1)
  set itemId($fixnum.Int64 v) {
    $_setInt64(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasItemId() => $_has(0);
  @$pb.TagNumber(1)
  void clearItemId() => clearField(1);

  @$pb.TagNumber(2)
  $fixnum.Int64 get price => $_getI64(1);
  @$pb.TagNumber(2)
  set price($fixnum.Int64 v) {
    $_setInt64(1, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasPrice() => $_has(1);
  @$pb.TagNumber(2)
  void clearPrice() => clearField(2);

  @$pb.TagNumber(3)
  $fixnum.Int64 get amount => $_getI64(2);
  @$pb.TagNumber(3)
  set amount($fixnum.Int64 v) {
    $_setInt64(2, v);
  }

  @$pb.TagNumber(3)
  $core.bool hasAmount() => $_has(2);
  @$pb.TagNumber(3)
  void clearAmount() => clearField(3);

  @$pb.TagNumber(4)
  $fixnum.Int64 get totalPrice => $_getI64(3);
  @$pb.TagNumber(4)
  set totalPrice($fixnum.Int64 v) {
    $_setInt64(3, v);
  }

  @$pb.TagNumber(4)
  $core.bool hasTotalPrice() => $_has(3);
  @$pb.TagNumber(4)
  void clearTotalPrice() => clearField(4);

  @$pb.TagNumber(5)
  $fixnum.Int64 get priceId => $_getI64(4);
  @$pb.TagNumber(5)
  set priceId($fixnum.Int64 v) {
    $_setInt64(4, v);
  }

  @$pb.TagNumber(5)
  $core.bool hasPriceId() => $_has(4);
  @$pb.TagNumber(5)
  void clearPriceId() => clearField(5);

  @$pb.TagNumber(6)
  $core.String get title => $_getSZ(5);
  @$pb.TagNumber(6)
  set title($core.String v) {
    $_setString(5, v);
  }

  @$pb.TagNumber(6)
  $core.bool hasTitle() => $_has(5);
  @$pb.TagNumber(6)
  void clearTitle() => clearField(6);

  @$pb.TagNumber(7)
  $core.List<$core.String> get imageUrl => $_getList(6);
}

class AddConsultingRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'AddConsultingRequest',
      createEmptyInstance: create)
    ..aOS(
        1,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'contactName',
        protoName: 'contactName')
    ..aOS(
        2,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'contactTelNumber',
        protoName: 'contactTelNumber')
    ..aOS(
        3,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'contactEmail',
        protoName: 'contactEmail')
    ..a<$core.int>(
        4,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'contactCode',
        $pb.PbFieldType.O3,
        protoName: 'contactCode')
    ..pc<Consulting>(
        5,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'consultingList',
        $pb.PbFieldType.PM,
        protoName: 'consultingList',
        subBuilder: Consulting.create)
    ..hasRequiredFields = false;

  AddConsultingRequest._() : super();
  factory AddConsultingRequest({
    $core.String? contactName,
    $core.String? contactTelNumber,
    $core.String? contactEmail,
    $core.int? contactCode,
    $core.Iterable<Consulting>? consultingList,
  }) {
    final _result = create();
    if (contactName != null) {
      _result.contactName = contactName;
    }
    if (contactTelNumber != null) {
      _result.contactTelNumber = contactTelNumber;
    }
    if (contactEmail != null) {
      _result.contactEmail = contactEmail;
    }
    if (contactCode != null) {
      _result.contactCode = contactCode;
    }
    if (consultingList != null) {
      _result.consultingList.addAll(consultingList);
    }
    return _result;
  }
  factory AddConsultingRequest.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory AddConsultingRequest.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  AddConsultingRequest clone() =>
      AddConsultingRequest()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  AddConsultingRequest copyWith(void Function(AddConsultingRequest) updates) =>
      super.copyWith((message) => updates(message as AddConsultingRequest))
          as AddConsultingRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static AddConsultingRequest create() => AddConsultingRequest._();
  AddConsultingRequest createEmptyInstance() => create();
  static $pb.PbList<AddConsultingRequest> createRepeated() =>
      $pb.PbList<AddConsultingRequest>();
  @$core.pragma('dart2js:noInline')
  static AddConsultingRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<AddConsultingRequest>(create);
  static AddConsultingRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get contactName => $_getSZ(0);
  @$pb.TagNumber(1)
  set contactName($core.String v) {
    $_setString(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasContactName() => $_has(0);
  @$pb.TagNumber(1)
  void clearContactName() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get contactTelNumber => $_getSZ(1);
  @$pb.TagNumber(2)
  set contactTelNumber($core.String v) {
    $_setString(1, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasContactTelNumber() => $_has(1);
  @$pb.TagNumber(2)
  void clearContactTelNumber() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get contactEmail => $_getSZ(2);
  @$pb.TagNumber(3)
  set contactEmail($core.String v) {
    $_setString(2, v);
  }

  @$pb.TagNumber(3)
  $core.bool hasContactEmail() => $_has(2);
  @$pb.TagNumber(3)
  void clearContactEmail() => clearField(3);

  @$pb.TagNumber(4)
  $core.int get contactCode => $_getIZ(3);
  @$pb.TagNumber(4)
  set contactCode($core.int v) {
    $_setSignedInt32(3, v);
  }

  @$pb.TagNumber(4)
  $core.bool hasContactCode() => $_has(3);
  @$pb.TagNumber(4)
  void clearContactCode() => clearField(4);

  @$pb.TagNumber(5)
  $core.List<Consulting> get consultingList => $_getList(4);
}

class GetExistConsultingUserListResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'GetExistConsultingUserListResponse',
      createEmptyInstance: create)
    ..pc<ExistConsultingUserProfile>(
        1,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'userProfileList',
        $pb.PbFieldType.PM,
        protoName: 'userProfileList',
        subBuilder: ExistConsultingUserProfile.create)
    ..hasRequiredFields = false;

  GetExistConsultingUserListResponse._() : super();
  factory GetExistConsultingUserListResponse({
    $core.Iterable<ExistConsultingUserProfile>? userProfileList,
  }) {
    final _result = create();
    if (userProfileList != null) {
      _result.userProfileList.addAll(userProfileList);
    }
    return _result;
  }
  factory GetExistConsultingUserListResponse.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory GetExistConsultingUserListResponse.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  GetExistConsultingUserListResponse clone() =>
      GetExistConsultingUserListResponse()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  GetExistConsultingUserListResponse copyWith(
          void Function(GetExistConsultingUserListResponse) updates) =>
      super.copyWith((message) =>
              updates(message as GetExistConsultingUserListResponse))
          as GetExistConsultingUserListResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GetExistConsultingUserListResponse create() =>
      GetExistConsultingUserListResponse._();
  GetExistConsultingUserListResponse createEmptyInstance() => create();
  static $pb.PbList<GetExistConsultingUserListResponse> createRepeated() =>
      $pb.PbList<GetExistConsultingUserListResponse>();
  @$core.pragma('dart2js:noInline')
  static GetExistConsultingUserListResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<GetExistConsultingUserListResponse>(
          create);
  static GetExistConsultingUserListResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<ExistConsultingUserProfile> get userProfileList => $_getList(0);
}

class ExistConsultingUserProfile extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'ExistConsultingUserProfile',
      createEmptyInstance: create)
    ..aInt64(
        1,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'userAccountId',
        protoName: 'userAccountId')
    ..aOS(
        2,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'name')
    ..aOS(
        3,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'phoneNumber',
        protoName: 'phoneNumber')
    ..aOS(
        4,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'ceremonyDate',
        protoName: 'ceremonyDate')
    ..aOB(
        5,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'isSubmit',
        protoName: 'isSubmit')
    ..aOB(
        6,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'isContracted',
        protoName: 'isContracted')
    ..hasRequiredFields = false;

  ExistConsultingUserProfile._() : super();
  factory ExistConsultingUserProfile({
    $fixnum.Int64? userAccountId,
    $core.String? name,
    $core.String? phoneNumber,
    $core.String? ceremonyDate,
    $core.bool? isSubmit,
    $core.bool? isContracted,
  }) {
    final _result = create();
    if (userAccountId != null) {
      _result.userAccountId = userAccountId;
    }
    if (name != null) {
      _result.name = name;
    }
    if (phoneNumber != null) {
      _result.phoneNumber = phoneNumber;
    }
    if (ceremonyDate != null) {
      _result.ceremonyDate = ceremonyDate;
    }
    if (isSubmit != null) {
      _result.isSubmit = isSubmit;
    }
    if (isContracted != null) {
      _result.isContracted = isContracted;
    }
    return _result;
  }
  factory ExistConsultingUserProfile.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory ExistConsultingUserProfile.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  ExistConsultingUserProfile clone() =>
      ExistConsultingUserProfile()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  ExistConsultingUserProfile copyWith(
          void Function(ExistConsultingUserProfile) updates) =>
      super.copyWith(
              (message) => updates(message as ExistConsultingUserProfile))
          as ExistConsultingUserProfile; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ExistConsultingUserProfile create() => ExistConsultingUserProfile._();
  ExistConsultingUserProfile createEmptyInstance() => create();
  static $pb.PbList<ExistConsultingUserProfile> createRepeated() =>
      $pb.PbList<ExistConsultingUserProfile>();
  @$core.pragma('dart2js:noInline')
  static ExistConsultingUserProfile getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ExistConsultingUserProfile>(create);
  static ExistConsultingUserProfile? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get userAccountId => $_getI64(0);
  @$pb.TagNumber(1)
  set userAccountId($fixnum.Int64 v) {
    $_setInt64(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasUserAccountId() => $_has(0);
  @$pb.TagNumber(1)
  void clearUserAccountId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get name => $_getSZ(1);
  @$pb.TagNumber(2)
  set name($core.String v) {
    $_setString(1, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasName() => $_has(1);
  @$pb.TagNumber(2)
  void clearName() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get phoneNumber => $_getSZ(2);
  @$pb.TagNumber(3)
  set phoneNumber($core.String v) {
    $_setString(2, v);
  }

  @$pb.TagNumber(3)
  $core.bool hasPhoneNumber() => $_has(2);
  @$pb.TagNumber(3)
  void clearPhoneNumber() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get ceremonyDate => $_getSZ(3);
  @$pb.TagNumber(4)
  set ceremonyDate($core.String v) {
    $_setString(3, v);
  }

  @$pb.TagNumber(4)
  $core.bool hasCeremonyDate() => $_has(3);
  @$pb.TagNumber(4)
  void clearCeremonyDate() => clearField(4);

  @$pb.TagNumber(5)
  $core.bool get isSubmit => $_getBF(4);
  @$pb.TagNumber(5)
  set isSubmit($core.bool v) {
    $_setBool(4, v);
  }

  @$pb.TagNumber(5)
  $core.bool hasIsSubmit() => $_has(4);
  @$pb.TagNumber(5)
  void clearIsSubmit() => clearField(5);

  @$pb.TagNumber(6)
  $core.bool get isContracted => $_getBF(5);
  @$pb.TagNumber(6)
  set isContracted($core.bool v) {
    $_setBool(5, v);
  }

  @$pb.TagNumber(6)
  $core.bool hasIsContracted() => $_has(5);
  @$pb.TagNumber(6)
  void clearIsContracted() => clearField(6);
}

class AddUserScrapRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'AddUserScrapRequest',
      createEmptyInstance: create)
    ..aInt64(
        1,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'vendorProfileId',
        protoName: 'vendorProfileId')
    ..aInt64(
        2,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'vendorServiceCode',
        protoName: 'vendorServiceCode')
    ..pc<ScrapItem>(
        4,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'scrapItemList',
        $pb.PbFieldType.PM,
        protoName: 'scrapItemList',
        subBuilder: ScrapItem.create)
    ..hasRequiredFields = false;

  AddUserScrapRequest._() : super();
  factory AddUserScrapRequest({
    $fixnum.Int64? vendorProfileId,
    $fixnum.Int64? vendorServiceCode,
    $core.Iterable<ScrapItem>? scrapItemList,
  }) {
    final _result = create();
    if (vendorProfileId != null) {
      _result.vendorProfileId = vendorProfileId;
    }
    if (vendorServiceCode != null) {
      _result.vendorServiceCode = vendorServiceCode;
    }
    if (scrapItemList != null) {
      _result.scrapItemList.addAll(scrapItemList);
    }
    return _result;
  }
  factory AddUserScrapRequest.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory AddUserScrapRequest.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  AddUserScrapRequest clone() => AddUserScrapRequest()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  AddUserScrapRequest copyWith(void Function(AddUserScrapRequest) updates) =>
      super.copyWith((message) => updates(message as AddUserScrapRequest))
          as AddUserScrapRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static AddUserScrapRequest create() => AddUserScrapRequest._();
  AddUserScrapRequest createEmptyInstance() => create();
  static $pb.PbList<AddUserScrapRequest> createRepeated() =>
      $pb.PbList<AddUserScrapRequest>();
  @$core.pragma('dart2js:noInline')
  static AddUserScrapRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<AddUserScrapRequest>(create);
  static AddUserScrapRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get vendorProfileId => $_getI64(0);
  @$pb.TagNumber(1)
  set vendorProfileId($fixnum.Int64 v) {
    $_setInt64(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasVendorProfileId() => $_has(0);
  @$pb.TagNumber(1)
  void clearVendorProfileId() => clearField(1);

  @$pb.TagNumber(2)
  $fixnum.Int64 get vendorServiceCode => $_getI64(1);
  @$pb.TagNumber(2)
  set vendorServiceCode($fixnum.Int64 v) {
    $_setInt64(1, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasVendorServiceCode() => $_has(1);
  @$pb.TagNumber(2)
  void clearVendorServiceCode() => clearField(2);

  @$pb.TagNumber(4)
  $core.List<ScrapItem> get scrapItemList => $_getList(2);
}

class ScrapItem extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'ScrapItem',
      createEmptyInstance: create)
    ..aInt64(
        1,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'id')
    ..aInt64(
        2,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'amount')
    ..aInt64(
        3,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'totalPrice')
    ..aOM<VendorItem>(
        4,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'vendorItem',
        protoName: 'vendorItem',
        subBuilder: VendorItem.create)
    ..hasRequiredFields = false;

  ScrapItem._() : super();
  factory ScrapItem({
    $fixnum.Int64? id,
    $fixnum.Int64? amount,
    $fixnum.Int64? totalPrice,
    VendorItem? vendorItem,
  }) {
    final _result = create();
    if (id != null) {
      _result.id = id;
    }
    if (amount != null) {
      _result.amount = amount;
    }
    if (totalPrice != null) {
      _result.totalPrice = totalPrice;
    }
    if (vendorItem != null) {
      _result.vendorItem = vendorItem;
    }
    return _result;
  }
  factory ScrapItem.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory ScrapItem.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  ScrapItem clone() => ScrapItem()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  ScrapItem copyWith(void Function(ScrapItem) updates) =>
      super.copyWith((message) => updates(message as ScrapItem))
          as ScrapItem; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ScrapItem create() => ScrapItem._();
  ScrapItem createEmptyInstance() => create();
  static $pb.PbList<ScrapItem> createRepeated() => $pb.PbList<ScrapItem>();
  @$core.pragma('dart2js:noInline')
  static ScrapItem getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ScrapItem>(create);
  static ScrapItem? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get id => $_getI64(0);
  @$pb.TagNumber(1)
  set id($fixnum.Int64 v) {
    $_setInt64(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);

  @$pb.TagNumber(2)
  $fixnum.Int64 get amount => $_getI64(1);
  @$pb.TagNumber(2)
  set amount($fixnum.Int64 v) {
    $_setInt64(1, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasAmount() => $_has(1);
  @$pb.TagNumber(2)
  void clearAmount() => clearField(2);

  @$pb.TagNumber(3)
  $fixnum.Int64 get totalPrice => $_getI64(2);
  @$pb.TagNumber(3)
  set totalPrice($fixnum.Int64 v) {
    $_setInt64(2, v);
  }

  @$pb.TagNumber(3)
  $core.bool hasTotalPrice() => $_has(2);
  @$pb.TagNumber(3)
  void clearTotalPrice() => clearField(3);

  @$pb.TagNumber(4)
  VendorItem get vendorItem => $_getN(3);
  @$pb.TagNumber(4)
  set vendorItem(VendorItem v) {
    setField(4, v);
  }

  @$pb.TagNumber(4)
  $core.bool hasVendorItem() => $_has(3);
  @$pb.TagNumber(4)
  void clearVendorItem() => clearField(4);
  @$pb.TagNumber(4)
  VendorItem ensureVendorItem() => $_ensure(3);
}

class ScrapVendorInfo extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'ScrapVendorInfo',
      createEmptyInstance: create)
    ..aInt64(
        1,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'scrapId',
        protoName: 'scrapId')
    ..aInt64(
        2,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'vendorProfileId',
        protoName: 'vendorProfileId')
    ..aInt64(
        3,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'vendorServiceCode',
        protoName: 'vendorServiceCode')
    ..aOM<BasicInfo>(
        4,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'basicInfo',
        protoName: 'basicInfo',
        subBuilder: BasicInfo.create)
    ..pc<ScrapItem>(
        5,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'scrapItemList',
        $pb.PbFieldType.PM,
        protoName: 'scrapItemList',
        subBuilder: ScrapItem.create)
    ..aInt64(
        6,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'totalLikes',
        protoName: 'totalLikes')
    ..hasRequiredFields = false;

  ScrapVendorInfo._() : super();
  factory ScrapVendorInfo({
    $fixnum.Int64? scrapId,
    $fixnum.Int64? vendorProfileId,
    $fixnum.Int64? vendorServiceCode,
    BasicInfo? basicInfo,
    $core.Iterable<ScrapItem>? scrapItemList,
    $fixnum.Int64? totalLikes,
  }) {
    final _result = create();
    if (scrapId != null) {
      _result.scrapId = scrapId;
    }
    if (vendorProfileId != null) {
      _result.vendorProfileId = vendorProfileId;
    }
    if (vendorServiceCode != null) {
      _result.vendorServiceCode = vendorServiceCode;
    }
    if (basicInfo != null) {
      _result.basicInfo = basicInfo;
    }
    if (scrapItemList != null) {
      _result.scrapItemList.addAll(scrapItemList);
    }
    if (totalLikes != null) {
      _result.totalLikes = totalLikes;
    }
    return _result;
  }
  factory ScrapVendorInfo.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory ScrapVendorInfo.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  ScrapVendorInfo clone() => ScrapVendorInfo()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  ScrapVendorInfo copyWith(void Function(ScrapVendorInfo) updates) =>
      super.copyWith((message) => updates(message as ScrapVendorInfo))
          as ScrapVendorInfo; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ScrapVendorInfo create() => ScrapVendorInfo._();
  ScrapVendorInfo createEmptyInstance() => create();
  static $pb.PbList<ScrapVendorInfo> createRepeated() =>
      $pb.PbList<ScrapVendorInfo>();
  @$core.pragma('dart2js:noInline')
  static ScrapVendorInfo getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ScrapVendorInfo>(create);
  static ScrapVendorInfo? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get scrapId => $_getI64(0);
  @$pb.TagNumber(1)
  set scrapId($fixnum.Int64 v) {
    $_setInt64(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasScrapId() => $_has(0);
  @$pb.TagNumber(1)
  void clearScrapId() => clearField(1);

  @$pb.TagNumber(2)
  $fixnum.Int64 get vendorProfileId => $_getI64(1);
  @$pb.TagNumber(2)
  set vendorProfileId($fixnum.Int64 v) {
    $_setInt64(1, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasVendorProfileId() => $_has(1);
  @$pb.TagNumber(2)
  void clearVendorProfileId() => clearField(2);

  @$pb.TagNumber(3)
  $fixnum.Int64 get vendorServiceCode => $_getI64(2);
  @$pb.TagNumber(3)
  set vendorServiceCode($fixnum.Int64 v) {
    $_setInt64(2, v);
  }

  @$pb.TagNumber(3)
  $core.bool hasVendorServiceCode() => $_has(2);
  @$pb.TagNumber(3)
  void clearVendorServiceCode() => clearField(3);

  @$pb.TagNumber(4)
  BasicInfo get basicInfo => $_getN(3);
  @$pb.TagNumber(4)
  set basicInfo(BasicInfo v) {
    setField(4, v);
  }

  @$pb.TagNumber(4)
  $core.bool hasBasicInfo() => $_has(3);
  @$pb.TagNumber(4)
  void clearBasicInfo() => clearField(4);
  @$pb.TagNumber(4)
  BasicInfo ensureBasicInfo() => $_ensure(3);

  @$pb.TagNumber(5)
  $core.List<ScrapItem> get scrapItemList => $_getList(4);

  @$pb.TagNumber(6)
  $fixnum.Int64 get totalLikes => $_getI64(5);
  @$pb.TagNumber(6)
  set totalLikes($fixnum.Int64 v) {
    $_setInt64(5, v);
  }

  @$pb.TagNumber(6)
  $core.bool hasTotalLikes() => $_has(5);
  @$pb.TagNumber(6)
  void clearTotalLikes() => clearField(6);
}

class GetUserScrapListResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'GetUserScrapListResponse',
      createEmptyInstance: create)
    ..pc<ScrapVendorInfo>(
        1,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'scrapVendorInfo',
        $pb.PbFieldType.PM,
        protoName: 'scrapVendorInfo',
        subBuilder: ScrapVendorInfo.create)
    ..hasRequiredFields = false;

  GetUserScrapListResponse._() : super();
  factory GetUserScrapListResponse({
    $core.Iterable<ScrapVendorInfo>? scrapVendorInfo,
  }) {
    final _result = create();
    if (scrapVendorInfo != null) {
      _result.scrapVendorInfo.addAll(scrapVendorInfo);
    }
    return _result;
  }
  factory GetUserScrapListResponse.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory GetUserScrapListResponse.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  GetUserScrapListResponse clone() =>
      GetUserScrapListResponse()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  GetUserScrapListResponse copyWith(
          void Function(GetUserScrapListResponse) updates) =>
      super.copyWith((message) => updates(message as GetUserScrapListResponse))
          as GetUserScrapListResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GetUserScrapListResponse create() => GetUserScrapListResponse._();
  GetUserScrapListResponse createEmptyInstance() => create();
  static $pb.PbList<GetUserScrapListResponse> createRepeated() =>
      $pb.PbList<GetUserScrapListResponse>();
  @$core.pragma('dart2js:noInline')
  static GetUserScrapListResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<GetUserScrapListResponse>(create);
  static GetUserScrapListResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<ScrapVendorInfo> get scrapVendorInfo => $_getList(0);
}

class RemoveUserScrapItemRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'RemoveUserScrapItemRequest',
      createEmptyInstance: create)
    ..aInt64(
        1,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'scrapId',
        protoName: 'scrapId')
    ..aInt64(
        2,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'scrapItemId',
        protoName: 'scrapItemId')
    ..aInt64(
        3,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'vendorProfileId',
        protoName: 'vendorProfileId')
    ..hasRequiredFields = false;

  RemoveUserScrapItemRequest._() : super();
  factory RemoveUserScrapItemRequest({
    $fixnum.Int64? scrapId,
    $fixnum.Int64? scrapItemId,
    $fixnum.Int64? vendorProfileId,
  }) {
    final _result = create();
    if (scrapId != null) {
      _result.scrapId = scrapId;
    }
    if (scrapItemId != null) {
      _result.scrapItemId = scrapItemId;
    }
    if (vendorProfileId != null) {
      _result.vendorProfileId = vendorProfileId;
    }
    return _result;
  }
  factory RemoveUserScrapItemRequest.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory RemoveUserScrapItemRequest.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  RemoveUserScrapItemRequest clone() =>
      RemoveUserScrapItemRequest()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  RemoveUserScrapItemRequest copyWith(
          void Function(RemoveUserScrapItemRequest) updates) =>
      super.copyWith(
              (message) => updates(message as RemoveUserScrapItemRequest))
          as RemoveUserScrapItemRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static RemoveUserScrapItemRequest create() => RemoveUserScrapItemRequest._();
  RemoveUserScrapItemRequest createEmptyInstance() => create();
  static $pb.PbList<RemoveUserScrapItemRequest> createRepeated() =>
      $pb.PbList<RemoveUserScrapItemRequest>();
  @$core.pragma('dart2js:noInline')
  static RemoveUserScrapItemRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<RemoveUserScrapItemRequest>(create);
  static RemoveUserScrapItemRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get scrapId => $_getI64(0);
  @$pb.TagNumber(1)
  set scrapId($fixnum.Int64 v) {
    $_setInt64(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasScrapId() => $_has(0);
  @$pb.TagNumber(1)
  void clearScrapId() => clearField(1);

  @$pb.TagNumber(2)
  $fixnum.Int64 get scrapItemId => $_getI64(1);
  @$pb.TagNumber(2)
  set scrapItemId($fixnum.Int64 v) {
    $_setInt64(1, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasScrapItemId() => $_has(1);
  @$pb.TagNumber(2)
  void clearScrapItemId() => clearField(2);

  @$pb.TagNumber(3)
  $fixnum.Int64 get vendorProfileId => $_getI64(2);
  @$pb.TagNumber(3)
  set vendorProfileId($fixnum.Int64 v) {
    $_setInt64(2, v);
  }

  @$pb.TagNumber(3)
  $core.bool hasVendorProfileId() => $_has(2);
  @$pb.TagNumber(3)
  void clearVendorProfileId() => clearField(3);
}

class GetUserConsultingListResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'GetUserConsultingListResponse',
      createEmptyInstance: create)
    ..pc<UserConsultingInfo>(
        1,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'userConsultingInfoList',
        $pb.PbFieldType.PM,
        protoName: 'userConsultingInfoList',
        subBuilder: UserConsultingInfo.create)
    ..hasRequiredFields = false;

  GetUserConsultingListResponse._() : super();
  factory GetUserConsultingListResponse({
    $core.Iterable<UserConsultingInfo>? userConsultingInfoList,
  }) {
    final _result = create();
    if (userConsultingInfoList != null) {
      _result.userConsultingInfoList.addAll(userConsultingInfoList);
    }
    return _result;
  }
  factory GetUserConsultingListResponse.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory GetUserConsultingListResponse.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  GetUserConsultingListResponse clone() =>
      GetUserConsultingListResponse()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  GetUserConsultingListResponse copyWith(
          void Function(GetUserConsultingListResponse) updates) =>
      super.copyWith(
              (message) => updates(message as GetUserConsultingListResponse))
          as GetUserConsultingListResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GetUserConsultingListResponse create() =>
      GetUserConsultingListResponse._();
  GetUserConsultingListResponse createEmptyInstance() => create();
  static $pb.PbList<GetUserConsultingListResponse> createRepeated() =>
      $pb.PbList<GetUserConsultingListResponse>();
  @$core.pragma('dart2js:noInline')
  static GetUserConsultingListResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<GetUserConsultingListResponse>(create);
  static GetUserConsultingListResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<UserConsultingInfo> get userConsultingInfoList => $_getList(0);
}

class UserConsultingInfo extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'UserConsultingInfo',
      createEmptyInstance: create)
    ..aInt64(
        1,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'consultingId',
        protoName: 'consultingId')
    ..aOS(
        2,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'contactName',
        protoName: 'contactName')
    ..aOS(
        3,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'contactTelNumber',
        protoName: 'contactTelNumber')
    ..aOS(
        4,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'contactEmail',
        protoName: 'contactEmail')
    ..aInt64(
        5,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'contactCode',
        protoName: 'contactCode')
    ..aOS(
        6,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'ConsultingDate',
        protoName: 'ConsultingDate')
    ..aInt64(
        7,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'statusCode',
        protoName: 'statusCode')
    ..aOS(
        8,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'Memo',
        protoName: 'Memo')
    ..aOS(
        9,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'codeUpdateDate',
        protoName: 'codeUpdateDate')
    ..pc<Consulting>(
        10,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'consultingList',
        $pb.PbFieldType.PM,
        protoName: 'consultingList',
        subBuilder: Consulting.create)
    ..hasRequiredFields = false;

  UserConsultingInfo._() : super();
  factory UserConsultingInfo({
    $fixnum.Int64? consultingId,
    $core.String? contactName,
    $core.String? contactTelNumber,
    $core.String? contactEmail,
    $fixnum.Int64? contactCode,
    $core.String? consultingDate,
    $fixnum.Int64? statusCode,
    $core.String? memo,
    $core.String? codeUpdateDate,
    $core.Iterable<Consulting>? consultingList,
  }) {
    final _result = create();
    if (consultingId != null) {
      _result.consultingId = consultingId;
    }
    if (contactName != null) {
      _result.contactName = contactName;
    }
    if (contactTelNumber != null) {
      _result.contactTelNumber = contactTelNumber;
    }
    if (contactEmail != null) {
      _result.contactEmail = contactEmail;
    }
    if (contactCode != null) {
      _result.contactCode = contactCode;
    }
    if (consultingDate != null) {
      _result.consultingDate = consultingDate;
    }
    if (statusCode != null) {
      _result.statusCode = statusCode;
    }
    if (memo != null) {
      _result.memo = memo;
    }
    if (codeUpdateDate != null) {
      _result.codeUpdateDate = codeUpdateDate;
    }
    if (consultingList != null) {
      _result.consultingList.addAll(consultingList);
    }
    return _result;
  }
  factory UserConsultingInfo.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory UserConsultingInfo.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  UserConsultingInfo clone() => UserConsultingInfo()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  UserConsultingInfo copyWith(void Function(UserConsultingInfo) updates) =>
      super.copyWith((message) => updates(message as UserConsultingInfo))
          as UserConsultingInfo; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static UserConsultingInfo create() => UserConsultingInfo._();
  UserConsultingInfo createEmptyInstance() => create();
  static $pb.PbList<UserConsultingInfo> createRepeated() =>
      $pb.PbList<UserConsultingInfo>();
  @$core.pragma('dart2js:noInline')
  static UserConsultingInfo getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<UserConsultingInfo>(create);
  static UserConsultingInfo? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get consultingId => $_getI64(0);
  @$pb.TagNumber(1)
  set consultingId($fixnum.Int64 v) {
    $_setInt64(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasConsultingId() => $_has(0);
  @$pb.TagNumber(1)
  void clearConsultingId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get contactName => $_getSZ(1);
  @$pb.TagNumber(2)
  set contactName($core.String v) {
    $_setString(1, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasContactName() => $_has(1);
  @$pb.TagNumber(2)
  void clearContactName() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get contactTelNumber => $_getSZ(2);
  @$pb.TagNumber(3)
  set contactTelNumber($core.String v) {
    $_setString(2, v);
  }

  @$pb.TagNumber(3)
  $core.bool hasContactTelNumber() => $_has(2);
  @$pb.TagNumber(3)
  void clearContactTelNumber() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get contactEmail => $_getSZ(3);
  @$pb.TagNumber(4)
  set contactEmail($core.String v) {
    $_setString(3, v);
  }

  @$pb.TagNumber(4)
  $core.bool hasContactEmail() => $_has(3);
  @$pb.TagNumber(4)
  void clearContactEmail() => clearField(4);

  @$pb.TagNumber(5)
  $fixnum.Int64 get contactCode => $_getI64(4);
  @$pb.TagNumber(5)
  set contactCode($fixnum.Int64 v) {
    $_setInt64(4, v);
  }

  @$pb.TagNumber(5)
  $core.bool hasContactCode() => $_has(4);
  @$pb.TagNumber(5)
  void clearContactCode() => clearField(5);

  @$pb.TagNumber(6)
  $core.String get consultingDate => $_getSZ(5);
  @$pb.TagNumber(6)
  set consultingDate($core.String v) {
    $_setString(5, v);
  }

  @$pb.TagNumber(6)
  $core.bool hasConsultingDate() => $_has(5);
  @$pb.TagNumber(6)
  void clearConsultingDate() => clearField(6);

  @$pb.TagNumber(7)
  $fixnum.Int64 get statusCode => $_getI64(6);
  @$pb.TagNumber(7)
  set statusCode($fixnum.Int64 v) {
    $_setInt64(6, v);
  }

  @$pb.TagNumber(7)
  $core.bool hasStatusCode() => $_has(6);
  @$pb.TagNumber(7)
  void clearStatusCode() => clearField(7);

  @$pb.TagNumber(8)
  $core.String get memo => $_getSZ(7);
  @$pb.TagNumber(8)
  set memo($core.String v) {
    $_setString(7, v);
  }

  @$pb.TagNumber(8)
  $core.bool hasMemo() => $_has(7);
  @$pb.TagNumber(8)
  void clearMemo() => clearField(8);

  @$pb.TagNumber(9)
  $core.String get codeUpdateDate => $_getSZ(8);
  @$pb.TagNumber(9)
  set codeUpdateDate($core.String v) {
    $_setString(8, v);
  }

  @$pb.TagNumber(9)
  $core.bool hasCodeUpdateDate() => $_has(8);
  @$pb.TagNumber(9)
  void clearCodeUpdateDate() => clearField(9);

  @$pb.TagNumber(10)
  $core.List<Consulting> get consultingList => $_getList(9);
}

class CancelConsultingRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'CancelConsultingRequest',
      createEmptyInstance: create)
    ..aInt64(
        1,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'consultingId',
        protoName: 'consultingId')
    ..hasRequiredFields = false;

  CancelConsultingRequest._() : super();
  factory CancelConsultingRequest({
    $fixnum.Int64? consultingId,
  }) {
    final _result = create();
    if (consultingId != null) {
      _result.consultingId = consultingId;
    }
    return _result;
  }
  factory CancelConsultingRequest.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory CancelConsultingRequest.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  CancelConsultingRequest clone() =>
      CancelConsultingRequest()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  CancelConsultingRequest copyWith(
          void Function(CancelConsultingRequest) updates) =>
      super.copyWith((message) => updates(message as CancelConsultingRequest))
          as CancelConsultingRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static CancelConsultingRequest create() => CancelConsultingRequest._();
  CancelConsultingRequest createEmptyInstance() => create();
  static $pb.PbList<CancelConsultingRequest> createRepeated() =>
      $pb.PbList<CancelConsultingRequest>();
  @$core.pragma('dart2js:noInline')
  static CancelConsultingRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<CancelConsultingRequest>(create);
  static CancelConsultingRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get consultingId => $_getI64(0);
  @$pb.TagNumber(1)
  set consultingId($fixnum.Int64 v) {
    $_setInt64(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasConsultingId() => $_has(0);
  @$pb.TagNumber(1)
  void clearConsultingId() => clearField(1);
}

class GetVendorCategoryResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'GetVendorCategoryResponse',
      createEmptyInstance: create)
    ..pc<VendorCategory>(
        1,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'vendorCategoryList',
        $pb.PbFieldType.PM,
        protoName: 'vendorCategoryList',
        subBuilder: VendorCategory.create)
    ..hasRequiredFields = false;

  GetVendorCategoryResponse._() : super();
  factory GetVendorCategoryResponse({
    $core.Iterable<VendorCategory>? vendorCategoryList,
  }) {
    final _result = create();
    if (vendorCategoryList != null) {
      _result.vendorCategoryList.addAll(vendorCategoryList);
    }
    return _result;
  }
  factory GetVendorCategoryResponse.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory GetVendorCategoryResponse.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  GetVendorCategoryResponse clone() =>
      GetVendorCategoryResponse()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  GetVendorCategoryResponse copyWith(
          void Function(GetVendorCategoryResponse) updates) =>
      super.copyWith((message) => updates(message as GetVendorCategoryResponse))
          as GetVendorCategoryResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GetVendorCategoryResponse create() => GetVendorCategoryResponse._();
  GetVendorCategoryResponse createEmptyInstance() => create();
  static $pb.PbList<GetVendorCategoryResponse> createRepeated() =>
      $pb.PbList<GetVendorCategoryResponse>();
  @$core.pragma('dart2js:noInline')
  static GetVendorCategoryResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<GetVendorCategoryResponse>(create);
  static GetVendorCategoryResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<VendorCategory> get vendorCategoryList => $_getList(0);
}

class VendorCategory extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'VendorCategory',
      createEmptyInstance: create)
    ..aInt64(
        1,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'vendorServiceCode',
        protoName: 'vendorServiceCode')
    ..aOS(
        2,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'vendorServiceText',
        protoName: 'vendorServiceText')
    ..aOS(
        3,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'vendorIconImageUrl',
        protoName: 'vendorIconImageUrl')
    ..aOB(
        4,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'isMandatory',
        protoName: 'isMandatory')
    ..hasRequiredFields = false;

  VendorCategory._() : super();
  factory VendorCategory({
    $fixnum.Int64? vendorServiceCode,
    $core.String? vendorServiceText,
    $core.String? vendorIconImageUrl,
    $core.bool? isMandatory,
  }) {
    final _result = create();
    if (vendorServiceCode != null) {
      _result.vendorServiceCode = vendorServiceCode;
    }
    if (vendorServiceText != null) {
      _result.vendorServiceText = vendorServiceText;
    }
    if (vendorIconImageUrl != null) {
      _result.vendorIconImageUrl = vendorIconImageUrl;
    }
    if (isMandatory != null) {
      _result.isMandatory = isMandatory;
    }
    return _result;
  }
  factory VendorCategory.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory VendorCategory.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  VendorCategory clone() => VendorCategory()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  VendorCategory copyWith(void Function(VendorCategory) updates) =>
      super.copyWith((message) => updates(message as VendorCategory))
          as VendorCategory; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static VendorCategory create() => VendorCategory._();
  VendorCategory createEmptyInstance() => create();
  static $pb.PbList<VendorCategory> createRepeated() =>
      $pb.PbList<VendorCategory>();
  @$core.pragma('dart2js:noInline')
  static VendorCategory getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<VendorCategory>(create);
  static VendorCategory? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get vendorServiceCode => $_getI64(0);
  @$pb.TagNumber(1)
  set vendorServiceCode($fixnum.Int64 v) {
    $_setInt64(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasVendorServiceCode() => $_has(0);
  @$pb.TagNumber(1)
  void clearVendorServiceCode() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get vendorServiceText => $_getSZ(1);
  @$pb.TagNumber(2)
  set vendorServiceText($core.String v) {
    $_setString(1, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasVendorServiceText() => $_has(1);
  @$pb.TagNumber(2)
  void clearVendorServiceText() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get vendorIconImageUrl => $_getSZ(2);
  @$pb.TagNumber(3)
  set vendorIconImageUrl($core.String v) {
    $_setString(2, v);
  }

  @$pb.TagNumber(3)
  $core.bool hasVendorIconImageUrl() => $_has(2);
  @$pb.TagNumber(3)
  void clearVendorIconImageUrl() => clearField(3);

  @$pb.TagNumber(4)
  $core.bool get isMandatory => $_getBF(3);
  @$pb.TagNumber(4)
  set isMandatory($core.bool v) {
    $_setBool(3, v);
  }

  @$pb.TagNumber(4)
  $core.bool hasIsMandatory() => $_has(3);
  @$pb.TagNumber(4)
  void clearIsMandatory() => clearField(4);
}

class GetVendorListRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'GetVendorListRequest',
      createEmptyInstance: create)
    ..aInt64(
        1,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'vendorServiceCode',
        protoName: 'vendorServiceCode')
    ..aInt64(
        2,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'searchFilter',
        protoName: 'searchFilter')
    ..aOS(
        3,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'searchKeyword',
        protoName: 'searchKeyword')
    ..hasRequiredFields = false;

  GetVendorListRequest._() : super();
  factory GetVendorListRequest({
    $fixnum.Int64? vendorServiceCode,
    $fixnum.Int64? searchFilter,
    $core.String? searchKeyword,
  }) {
    final _result = create();
    if (vendorServiceCode != null) {
      _result.vendorServiceCode = vendorServiceCode;
    }
    if (searchFilter != null) {
      _result.searchFilter = searchFilter;
    }
    if (searchKeyword != null) {
      _result.searchKeyword = searchKeyword;
    }
    return _result;
  }
  factory GetVendorListRequest.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory GetVendorListRequest.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  GetVendorListRequest clone() =>
      GetVendorListRequest()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  GetVendorListRequest copyWith(void Function(GetVendorListRequest) updates) =>
      super.copyWith((message) => updates(message as GetVendorListRequest))
          as GetVendorListRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GetVendorListRequest create() => GetVendorListRequest._();
  GetVendorListRequest createEmptyInstance() => create();
  static $pb.PbList<GetVendorListRequest> createRepeated() =>
      $pb.PbList<GetVendorListRequest>();
  @$core.pragma('dart2js:noInline')
  static GetVendorListRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<GetVendorListRequest>(create);
  static GetVendorListRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get vendorServiceCode => $_getI64(0);
  @$pb.TagNumber(1)
  set vendorServiceCode($fixnum.Int64 v) {
    $_setInt64(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasVendorServiceCode() => $_has(0);
  @$pb.TagNumber(1)
  void clearVendorServiceCode() => clearField(1);

  @$pb.TagNumber(2)
  $fixnum.Int64 get searchFilter => $_getI64(1);
  @$pb.TagNumber(2)
  set searchFilter($fixnum.Int64 v) {
    $_setInt64(1, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasSearchFilter() => $_has(1);
  @$pb.TagNumber(2)
  void clearSearchFilter() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get searchKeyword => $_getSZ(2);
  @$pb.TagNumber(3)
  set searchKeyword($core.String v) {
    $_setString(2, v);
  }

  @$pb.TagNumber(3)
  $core.bool hasSearchKeyword() => $_has(2);
  @$pb.TagNumber(3)
  void clearSearchKeyword() => clearField(3);
}

class GetVendorListResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'GetVendorListResponse',
      createEmptyInstance: create)
    ..pc<SearchVendorProfile>(
        1,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'searchVendorProfileList',
        $pb.PbFieldType.PM,
        protoName: 'searchVendorProfileList',
        subBuilder: SearchVendorProfile.create)
    ..hasRequiredFields = false;

  GetVendorListResponse._() : super();
  factory GetVendorListResponse({
    $core.Iterable<SearchVendorProfile>? searchVendorProfileList,
  }) {
    final _result = create();
    if (searchVendorProfileList != null) {
      _result.searchVendorProfileList.addAll(searchVendorProfileList);
    }
    return _result;
  }
  factory GetVendorListResponse.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory GetVendorListResponse.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  GetVendorListResponse clone() =>
      GetVendorListResponse()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  GetVendorListResponse copyWith(
          void Function(GetVendorListResponse) updates) =>
      super.copyWith((message) => updates(message as GetVendorListResponse))
          as GetVendorListResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GetVendorListResponse create() => GetVendorListResponse._();
  GetVendorListResponse createEmptyInstance() => create();
  static $pb.PbList<GetVendorListResponse> createRepeated() =>
      $pb.PbList<GetVendorListResponse>();
  @$core.pragma('dart2js:noInline')
  static GetVendorListResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<GetVendorListResponse>(create);
  static GetVendorListResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<SearchVendorProfile> get searchVendorProfileList => $_getList(0);
}

class SearchVendorProfile extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'SearchVendorProfile',
      createEmptyInstance: create)
    ..aInt64(
        1,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'id')
    ..aOM<BasicInfo>(
        2,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'basicInfo',
        protoName: 'basicInfo',
        subBuilder: BasicInfo.create)
    ..aOM<CompanyAddress>(
        3,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'companyAddress',
        protoName: 'companyAddress',
        subBuilder: CompanyAddress.create)
    ..pPS(
        4,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'hashtags')
    ..aInt64(
        5,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'vendorServiceCode',
        protoName: 'vendorServiceCode')
    ..aOB(
        6,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'isLike',
        protoName: 'isLike')
    ..aOS(
        7,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'companyStatus',
        protoName: 'companyStatus')
    ..aInt64(
        8,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'totalLikes',
        protoName: 'totalLikes')
    ..hasRequiredFields = false;

  SearchVendorProfile._() : super();
  factory SearchVendorProfile({
    $fixnum.Int64? id,
    BasicInfo? basicInfo,
    CompanyAddress? companyAddress,
    $core.Iterable<$core.String>? hashtags,
    $fixnum.Int64? vendorServiceCode,
    $core.bool? isLike,
    $core.String? companyStatus,
    $fixnum.Int64? totalLikes,
  }) {
    final _result = create();
    if (id != null) {
      _result.id = id;
    }
    if (basicInfo != null) {
      _result.basicInfo = basicInfo;
    }
    if (companyAddress != null) {
      _result.companyAddress = companyAddress;
    }
    if (hashtags != null) {
      _result.hashtags.addAll(hashtags);
    }
    if (vendorServiceCode != null) {
      _result.vendorServiceCode = vendorServiceCode;
    }
    if (isLike != null) {
      _result.isLike = isLike;
    }
    if (companyStatus != null) {
      _result.companyStatus = companyStatus;
    }
    if (totalLikes != null) {
      _result.totalLikes = totalLikes;
    }
    return _result;
  }
  factory SearchVendorProfile.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory SearchVendorProfile.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  SearchVendorProfile clone() => SearchVendorProfile()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  SearchVendorProfile copyWith(void Function(SearchVendorProfile) updates) =>
      super.copyWith((message) => updates(message as SearchVendorProfile))
          as SearchVendorProfile; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static SearchVendorProfile create() => SearchVendorProfile._();
  SearchVendorProfile createEmptyInstance() => create();
  static $pb.PbList<SearchVendorProfile> createRepeated() =>
      $pb.PbList<SearchVendorProfile>();
  @$core.pragma('dart2js:noInline')
  static SearchVendorProfile getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<SearchVendorProfile>(create);
  static SearchVendorProfile? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get id => $_getI64(0);
  @$pb.TagNumber(1)
  set id($fixnum.Int64 v) {
    $_setInt64(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);

  @$pb.TagNumber(2)
  BasicInfo get basicInfo => $_getN(1);
  @$pb.TagNumber(2)
  set basicInfo(BasicInfo v) {
    setField(2, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasBasicInfo() => $_has(1);
  @$pb.TagNumber(2)
  void clearBasicInfo() => clearField(2);
  @$pb.TagNumber(2)
  BasicInfo ensureBasicInfo() => $_ensure(1);

  @$pb.TagNumber(3)
  CompanyAddress get companyAddress => $_getN(2);
  @$pb.TagNumber(3)
  set companyAddress(CompanyAddress v) {
    setField(3, v);
  }

  @$pb.TagNumber(3)
  $core.bool hasCompanyAddress() => $_has(2);
  @$pb.TagNumber(3)
  void clearCompanyAddress() => clearField(3);
  @$pb.TagNumber(3)
  CompanyAddress ensureCompanyAddress() => $_ensure(2);

  @$pb.TagNumber(4)
  $core.List<$core.String> get hashtags => $_getList(3);

  @$pb.TagNumber(5)
  $fixnum.Int64 get vendorServiceCode => $_getI64(4);
  @$pb.TagNumber(5)
  set vendorServiceCode($fixnum.Int64 v) {
    $_setInt64(4, v);
  }

  @$pb.TagNumber(5)
  $core.bool hasVendorServiceCode() => $_has(4);
  @$pb.TagNumber(5)
  void clearVendorServiceCode() => clearField(5);

  @$pb.TagNumber(6)
  $core.bool get isLike => $_getBF(5);
  @$pb.TagNumber(6)
  set isLike($core.bool v) {
    $_setBool(5, v);
  }

  @$pb.TagNumber(6)
  $core.bool hasIsLike() => $_has(5);
  @$pb.TagNumber(6)
  void clearIsLike() => clearField(6);

  @$pb.TagNumber(7)
  $core.String get companyStatus => $_getSZ(6);
  @$pb.TagNumber(7)
  set companyStatus($core.String v) {
    $_setString(6, v);
  }

  @$pb.TagNumber(7)
  $core.bool hasCompanyStatus() => $_has(6);
  @$pb.TagNumber(7)
  void clearCompanyStatus() => clearField(7);

  @$pb.TagNumber(8)
  $fixnum.Int64 get totalLikes => $_getI64(7);
  @$pb.TagNumber(8)
  set totalLikes($fixnum.Int64 v) {
    $_setInt64(7, v);
  }

  @$pb.TagNumber(8)
  $core.bool hasTotalLikes() => $_has(7);
  @$pb.TagNumber(8)
  void clearTotalLikes() => clearField(8);
}

class BasicInfo extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'BasicInfo',
      createEmptyInstance: create)
    ..aOS(
        1,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'companyName',
        protoName: 'companyName')
    ..aOS(
        2,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'bizNumber',
        protoName: 'bizNumber')
    ..aOS(
        3,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'aboutUs',
        protoName: 'aboutUs')
    ..aOS(
        4,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'telNumber',
        protoName: 'telNumber')
    ..aOS(
        5,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'phoneNumber',
        protoName: 'phoneNumber')
    ..aOS(
        6,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'email')
    ..pPS(
        7,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'mainImageUrl',
        protoName: 'mainImageUrl')
    ..hasRequiredFields = false;

  BasicInfo._() : super();
  factory BasicInfo({
    $core.String? companyName,
    $core.String? bizNumber,
    $core.String? aboutUs,
    $core.String? telNumber,
    $core.String? phoneNumber,
    $core.String? email,
    $core.Iterable<$core.String>? mainImageUrl,
  }) {
    final _result = create();
    if (companyName != null) {
      _result.companyName = companyName;
    }
    if (bizNumber != null) {
      _result.bizNumber = bizNumber;
    }
    if (aboutUs != null) {
      _result.aboutUs = aboutUs;
    }
    if (telNumber != null) {
      _result.telNumber = telNumber;
    }
    if (phoneNumber != null) {
      _result.phoneNumber = phoneNumber;
    }
    if (email != null) {
      _result.email = email;
    }
    if (mainImageUrl != null) {
      _result.mainImageUrl.addAll(mainImageUrl);
    }
    return _result;
  }
  factory BasicInfo.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory BasicInfo.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  BasicInfo clone() => BasicInfo()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  BasicInfo copyWith(void Function(BasicInfo) updates) =>
      super.copyWith((message) => updates(message as BasicInfo))
          as BasicInfo; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static BasicInfo create() => BasicInfo._();
  BasicInfo createEmptyInstance() => create();
  static $pb.PbList<BasicInfo> createRepeated() => $pb.PbList<BasicInfo>();
  @$core.pragma('dart2js:noInline')
  static BasicInfo getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<BasicInfo>(create);
  static BasicInfo? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get companyName => $_getSZ(0);
  @$pb.TagNumber(1)
  set companyName($core.String v) {
    $_setString(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasCompanyName() => $_has(0);
  @$pb.TagNumber(1)
  void clearCompanyName() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get bizNumber => $_getSZ(1);
  @$pb.TagNumber(2)
  set bizNumber($core.String v) {
    $_setString(1, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasBizNumber() => $_has(1);
  @$pb.TagNumber(2)
  void clearBizNumber() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get aboutUs => $_getSZ(2);
  @$pb.TagNumber(3)
  set aboutUs($core.String v) {
    $_setString(2, v);
  }

  @$pb.TagNumber(3)
  $core.bool hasAboutUs() => $_has(2);
  @$pb.TagNumber(3)
  void clearAboutUs() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get telNumber => $_getSZ(3);
  @$pb.TagNumber(4)
  set telNumber($core.String v) {
    $_setString(3, v);
  }

  @$pb.TagNumber(4)
  $core.bool hasTelNumber() => $_has(3);
  @$pb.TagNumber(4)
  void clearTelNumber() => clearField(4);

  @$pb.TagNumber(5)
  $core.String get phoneNumber => $_getSZ(4);
  @$pb.TagNumber(5)
  set phoneNumber($core.String v) {
    $_setString(4, v);
  }

  @$pb.TagNumber(5)
  $core.bool hasPhoneNumber() => $_has(4);
  @$pb.TagNumber(5)
  void clearPhoneNumber() => clearField(5);

  @$pb.TagNumber(6)
  $core.String get email => $_getSZ(5);
  @$pb.TagNumber(6)
  set email($core.String v) {
    $_setString(5, v);
  }

  @$pb.TagNumber(6)
  $core.bool hasEmail() => $_has(5);
  @$pb.TagNumber(6)
  void clearEmail() => clearField(6);

  @$pb.TagNumber(7)
  $core.List<$core.String> get mainImageUrl => $_getList(6);
}

class CompanyAddress extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'CompanyAddress',
      createEmptyInstance: create)
    ..aOS(
        1,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'zipCode',
        protoName: 'zipCode')
    ..aOS(
        2,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'cityAddress',
        protoName: 'cityAddress')
    ..aOS(
        3,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'detailAddress',
        protoName: 'detailAddress')
    ..a<$core.double>(
        4,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'addressLatitued',
        $pb.PbFieldType.OD,
        protoName: 'addressLatitued')
    ..a<$core.double>(
        5,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'addressLongitude',
        $pb.PbFieldType.OD,
        protoName: 'addressLongitude')
    ..aInt64(
        6,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'adminDivisionCode',
        protoName: 'adminDivisionCode')
    ..hasRequiredFields = false;

  CompanyAddress._() : super();
  factory CompanyAddress({
    $core.String? zipCode,
    $core.String? cityAddress,
    $core.String? detailAddress,
    $core.double? addressLatitued,
    $core.double? addressLongitude,
    $fixnum.Int64? adminDivisionCode,
  }) {
    final _result = create();
    if (zipCode != null) {
      _result.zipCode = zipCode;
    }
    if (cityAddress != null) {
      _result.cityAddress = cityAddress;
    }
    if (detailAddress != null) {
      _result.detailAddress = detailAddress;
    }
    if (addressLatitued != null) {
      _result.addressLatitued = addressLatitued;
    }
    if (addressLongitude != null) {
      _result.addressLongitude = addressLongitude;
    }
    if (adminDivisionCode != null) {
      _result.adminDivisionCode = adminDivisionCode;
    }
    return _result;
  }
  factory CompanyAddress.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory CompanyAddress.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  CompanyAddress clone() => CompanyAddress()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  CompanyAddress copyWith(void Function(CompanyAddress) updates) =>
      super.copyWith((message) => updates(message as CompanyAddress))
          as CompanyAddress; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static CompanyAddress create() => CompanyAddress._();
  CompanyAddress createEmptyInstance() => create();
  static $pb.PbList<CompanyAddress> createRepeated() =>
      $pb.PbList<CompanyAddress>();
  @$core.pragma('dart2js:noInline')
  static CompanyAddress getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<CompanyAddress>(create);
  static CompanyAddress? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get zipCode => $_getSZ(0);
  @$pb.TagNumber(1)
  set zipCode($core.String v) {
    $_setString(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasZipCode() => $_has(0);
  @$pb.TagNumber(1)
  void clearZipCode() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get cityAddress => $_getSZ(1);
  @$pb.TagNumber(2)
  set cityAddress($core.String v) {
    $_setString(1, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasCityAddress() => $_has(1);
  @$pb.TagNumber(2)
  void clearCityAddress() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get detailAddress => $_getSZ(2);
  @$pb.TagNumber(3)
  set detailAddress($core.String v) {
    $_setString(2, v);
  }

  @$pb.TagNumber(3)
  $core.bool hasDetailAddress() => $_has(2);
  @$pb.TagNumber(3)
  void clearDetailAddress() => clearField(3);

  @$pb.TagNumber(4)
  $core.double get addressLatitued => $_getN(3);
  @$pb.TagNumber(4)
  set addressLatitued($core.double v) {
    $_setDouble(3, v);
  }

  @$pb.TagNumber(4)
  $core.bool hasAddressLatitued() => $_has(3);
  @$pb.TagNumber(4)
  void clearAddressLatitued() => clearField(4);

  @$pb.TagNumber(5)
  $core.double get addressLongitude => $_getN(4);
  @$pb.TagNumber(5)
  set addressLongitude($core.double v) {
    $_setDouble(4, v);
  }

  @$pb.TagNumber(5)
  $core.bool hasAddressLongitude() => $_has(4);
  @$pb.TagNumber(5)
  void clearAddressLongitude() => clearField(5);

  @$pb.TagNumber(6)
  $fixnum.Int64 get adminDivisionCode => $_getI64(5);
  @$pb.TagNumber(6)
  set adminDivisionCode($fixnum.Int64 v) {
    $_setInt64(5, v);
  }

  @$pb.TagNumber(6)
  $core.bool hasAdminDivisionCode() => $_has(5);
  @$pb.TagNumber(6)
  void clearAdminDivisionCode() => clearField(6);
}

class GetVendorInfoRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'GetVendorInfoRequest',
      createEmptyInstance: create)
    ..aInt64(
        1,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'vendorProfileId',
        protoName: 'vendorProfileId')
    ..aInt64(
        2,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'searchFilter',
        protoName: 'searchFilter')
    ..aOS(
        3,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'searchKeyword',
        protoName: 'searchKeyword')
    ..hasRequiredFields = false;

  GetVendorInfoRequest._() : super();
  factory GetVendorInfoRequest({
    $fixnum.Int64? vendorProfileId,
    $fixnum.Int64? searchFilter,
    $core.String? searchKeyword,
  }) {
    final _result = create();
    if (vendorProfileId != null) {
      _result.vendorProfileId = vendorProfileId;
    }
    if (searchFilter != null) {
      _result.searchFilter = searchFilter;
    }
    if (searchKeyword != null) {
      _result.searchKeyword = searchKeyword;
    }
    return _result;
  }
  factory GetVendorInfoRequest.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory GetVendorInfoRequest.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  GetVendorInfoRequest clone() =>
      GetVendorInfoRequest()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  GetVendorInfoRequest copyWith(void Function(GetVendorInfoRequest) updates) =>
      super.copyWith((message) => updates(message as GetVendorInfoRequest))
          as GetVendorInfoRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GetVendorInfoRequest create() => GetVendorInfoRequest._();
  GetVendorInfoRequest createEmptyInstance() => create();
  static $pb.PbList<GetVendorInfoRequest> createRepeated() =>
      $pb.PbList<GetVendorInfoRequest>();
  @$core.pragma('dart2js:noInline')
  static GetVendorInfoRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<GetVendorInfoRequest>(create);
  static GetVendorInfoRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get vendorProfileId => $_getI64(0);
  @$pb.TagNumber(1)
  set vendorProfileId($fixnum.Int64 v) {
    $_setInt64(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasVendorProfileId() => $_has(0);
  @$pb.TagNumber(1)
  void clearVendorProfileId() => clearField(1);

  @$pb.TagNumber(2)
  $fixnum.Int64 get searchFilter => $_getI64(1);
  @$pb.TagNumber(2)
  set searchFilter($fixnum.Int64 v) {
    $_setInt64(1, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasSearchFilter() => $_has(1);
  @$pb.TagNumber(2)
  void clearSearchFilter() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get searchKeyword => $_getSZ(2);
  @$pb.TagNumber(3)
  set searchKeyword($core.String v) {
    $_setString(2, v);
  }

  @$pb.TagNumber(3)
  $core.bool hasSearchKeyword() => $_has(2);
  @$pb.TagNumber(3)
  void clearSearchKeyword() => clearField(3);
}

class GetVendorInfoResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'GetVendorInfoResponse',
      createEmptyInstance: create)
    ..aOM<SearchVendorProfile>(
        1,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'searchVendorProfile',
        protoName: 'searchVendorProfile',
        subBuilder: SearchVendorProfile.create)
    ..pc<VendorItem>(
        2,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'vendorItemList',
        $pb.PbFieldType.PM,
        protoName: 'vendorItemList',
        subBuilder: VendorItem.create)
    ..aOM<VendorWorkingTime>(
        3,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'VendorWorkingTime',
        protoName: 'VendorWorkingTime',
        subBuilder: VendorWorkingTime.create)
    ..hasRequiredFields = false;

  GetVendorInfoResponse._() : super();
  factory GetVendorInfoResponse({
    SearchVendorProfile? searchVendorProfile,
    $core.Iterable<VendorItem>? vendorItemList,
    VendorWorkingTime? vendorWorkingTime,
  }) {
    final _result = create();
    if (searchVendorProfile != null) {
      _result.searchVendorProfile = searchVendorProfile;
    }
    if (vendorItemList != null) {
      _result.vendorItemList.addAll(vendorItemList);
    }
    if (vendorWorkingTime != null) {
      _result.vendorWorkingTime = vendorWorkingTime;
    }
    return _result;
  }
  factory GetVendorInfoResponse.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory GetVendorInfoResponse.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  GetVendorInfoResponse clone() =>
      GetVendorInfoResponse()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  GetVendorInfoResponse copyWith(
          void Function(GetVendorInfoResponse) updates) =>
      super.copyWith((message) => updates(message as GetVendorInfoResponse))
          as GetVendorInfoResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GetVendorInfoResponse create() => GetVendorInfoResponse._();
  GetVendorInfoResponse createEmptyInstance() => create();
  static $pb.PbList<GetVendorInfoResponse> createRepeated() =>
      $pb.PbList<GetVendorInfoResponse>();
  @$core.pragma('dart2js:noInline')
  static GetVendorInfoResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<GetVendorInfoResponse>(create);
  static GetVendorInfoResponse? _defaultInstance;

  @$pb.TagNumber(1)
  SearchVendorProfile get searchVendorProfile => $_getN(0);
  @$pb.TagNumber(1)
  set searchVendorProfile(SearchVendorProfile v) {
    setField(1, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasSearchVendorProfile() => $_has(0);
  @$pb.TagNumber(1)
  void clearSearchVendorProfile() => clearField(1);
  @$pb.TagNumber(1)
  SearchVendorProfile ensureSearchVendorProfile() => $_ensure(0);

  @$pb.TagNumber(2)
  $core.List<VendorItem> get vendorItemList => $_getList(1);

  @$pb.TagNumber(3)
  VendorWorkingTime get vendorWorkingTime => $_getN(2);
  @$pb.TagNumber(3)
  set vendorWorkingTime(VendorWorkingTime v) {
    setField(3, v);
  }

  @$pb.TagNumber(3)
  $core.bool hasVendorWorkingTime() => $_has(2);
  @$pb.TagNumber(3)
  void clearVendorWorkingTime() => clearField(3);
  @$pb.TagNumber(3)
  VendorWorkingTime ensureVendorWorkingTime() => $_ensure(2);
}

class GetWeddinghallInfoResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'GetWeddinghallInfoResponse',
      createEmptyInstance: create)
    ..aOM<SearchVendorProfile>(
        1,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'SearchVendorProfile',
        protoName: 'SearchVendorProfile',
        subBuilder: SearchVendorProfile.create)
    ..aOM<VendorWorkingTime>(
        2,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'VendorWorkingTime',
        protoName: 'VendorWorkingTime',
        subBuilder: VendorWorkingTime.create)
    ..hasRequiredFields = false;

  GetWeddinghallInfoResponse._() : super();
  factory GetWeddinghallInfoResponse({
    SearchVendorProfile? searchVendorProfile,
    VendorWorkingTime? vendorWorkingTime,
  }) {
    final _result = create();
    if (searchVendorProfile != null) {
      _result.searchVendorProfile = searchVendorProfile;
    }
    if (vendorWorkingTime != null) {
      _result.vendorWorkingTime = vendorWorkingTime;
    }
    return _result;
  }
  factory GetWeddinghallInfoResponse.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory GetWeddinghallInfoResponse.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  GetWeddinghallInfoResponse clone() =>
      GetWeddinghallInfoResponse()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  GetWeddinghallInfoResponse copyWith(
          void Function(GetWeddinghallInfoResponse) updates) =>
      super.copyWith(
              (message) => updates(message as GetWeddinghallInfoResponse))
          as GetWeddinghallInfoResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GetWeddinghallInfoResponse create() => GetWeddinghallInfoResponse._();
  GetWeddinghallInfoResponse createEmptyInstance() => create();
  static $pb.PbList<GetWeddinghallInfoResponse> createRepeated() =>
      $pb.PbList<GetWeddinghallInfoResponse>();
  @$core.pragma('dart2js:noInline')
  static GetWeddinghallInfoResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<GetWeddinghallInfoResponse>(create);
  static GetWeddinghallInfoResponse? _defaultInstance;

  @$pb.TagNumber(1)
  SearchVendorProfile get searchVendorProfile => $_getN(0);
  @$pb.TagNumber(1)
  set searchVendorProfile(SearchVendorProfile v) {
    setField(1, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasSearchVendorProfile() => $_has(0);
  @$pb.TagNumber(1)
  void clearSearchVendorProfile() => clearField(1);
  @$pb.TagNumber(1)
  SearchVendorProfile ensureSearchVendorProfile() => $_ensure(0);

  @$pb.TagNumber(2)
  VendorWorkingTime get vendorWorkingTime => $_getN(1);
  @$pb.TagNumber(2)
  set vendorWorkingTime(VendorWorkingTime v) {
    setField(2, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasVendorWorkingTime() => $_has(1);
  @$pb.TagNumber(2)
  void clearVendorWorkingTime() => clearField(2);
  @$pb.TagNumber(2)
  VendorWorkingTime ensureVendorWorkingTime() => $_ensure(1);
}

class GetWeddinghallHallResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'GetWeddinghallHallResponse',
      createEmptyInstance: create)
    ..pc<WeddinghallHall>(
        1,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'weddinghallHall',
        $pb.PbFieldType.PM,
        protoName: 'weddinghallHall',
        subBuilder: WeddinghallHall.create)
    ..aInt64(
        2,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'mealPrice',
        protoName: 'mealPrice')
    ..hasRequiredFields = false;

  GetWeddinghallHallResponse._() : super();
  factory GetWeddinghallHallResponse({
    $core.Iterable<WeddinghallHall>? weddinghallHall,
    $fixnum.Int64? mealPrice,
  }) {
    final _result = create();
    if (weddinghallHall != null) {
      _result.weddinghallHall.addAll(weddinghallHall);
    }
    if (mealPrice != null) {
      _result.mealPrice = mealPrice;
    }
    return _result;
  }
  factory GetWeddinghallHallResponse.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory GetWeddinghallHallResponse.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  GetWeddinghallHallResponse clone() =>
      GetWeddinghallHallResponse()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  GetWeddinghallHallResponse copyWith(
          void Function(GetWeddinghallHallResponse) updates) =>
      super.copyWith(
              (message) => updates(message as GetWeddinghallHallResponse))
          as GetWeddinghallHallResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GetWeddinghallHallResponse create() => GetWeddinghallHallResponse._();
  GetWeddinghallHallResponse createEmptyInstance() => create();
  static $pb.PbList<GetWeddinghallHallResponse> createRepeated() =>
      $pb.PbList<GetWeddinghallHallResponse>();
  @$core.pragma('dart2js:noInline')
  static GetWeddinghallHallResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<GetWeddinghallHallResponse>(create);
  static GetWeddinghallHallResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<WeddinghallHall> get weddinghallHall => $_getList(0);

  @$pb.TagNumber(2)
  $fixnum.Int64 get mealPrice => $_getI64(1);
  @$pb.TagNumber(2)
  set mealPrice($fixnum.Int64 v) {
    $_setInt64(1, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasMealPrice() => $_has(1);
  @$pb.TagNumber(2)
  void clearMealPrice() => clearField(2);
}

class GetWeddinghallItemResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'GetWeddinghallItemResponse',
      createEmptyInstance: create)
    ..pc<WeddinghallItem>(
        1,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'weddinghallItem',
        $pb.PbFieldType.PM,
        protoName: 'weddinghallItem',
        subBuilder: WeddinghallItem.create)
    ..pc<WeddinghallAdditionItem>(
        2,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'weddinghallAdditionItem',
        $pb.PbFieldType.PM,
        protoName: 'weddinghallAdditionItem',
        subBuilder: WeddinghallAdditionItem.create)
    ..hasRequiredFields = false;

  GetWeddinghallItemResponse._() : super();
  factory GetWeddinghallItemResponse({
    $core.Iterable<WeddinghallItem>? weddinghallItem,
    $core.Iterable<WeddinghallAdditionItem>? weddinghallAdditionItem,
  }) {
    final _result = create();
    if (weddinghallItem != null) {
      _result.weddinghallItem.addAll(weddinghallItem);
    }
    if (weddinghallAdditionItem != null) {
      _result.weddinghallAdditionItem.addAll(weddinghallAdditionItem);
    }
    return _result;
  }
  factory GetWeddinghallItemResponse.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory GetWeddinghallItemResponse.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  GetWeddinghallItemResponse clone() =>
      GetWeddinghallItemResponse()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  GetWeddinghallItemResponse copyWith(
          void Function(GetWeddinghallItemResponse) updates) =>
      super.copyWith(
              (message) => updates(message as GetWeddinghallItemResponse))
          as GetWeddinghallItemResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GetWeddinghallItemResponse create() => GetWeddinghallItemResponse._();
  GetWeddinghallItemResponse createEmptyInstance() => create();
  static $pb.PbList<GetWeddinghallItemResponse> createRepeated() =>
      $pb.PbList<GetWeddinghallItemResponse>();
  @$core.pragma('dart2js:noInline')
  static GetWeddinghallItemResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<GetWeddinghallItemResponse>(create);
  static GetWeddinghallItemResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<WeddinghallItem> get weddinghallItem => $_getList(0);

  @$pb.TagNumber(2)
  $core.List<WeddinghallAdditionItem> get weddinghallAdditionItem =>
      $_getList(1);
}

class GetPromotionVideoListResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'GetPromotionVideoListResponse',
      createEmptyInstance: create)
    ..aInt64(
        1,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'vendorProfileId',
        protoName: 'vendorProfileId')
    ..pc<PromotionVideo>(
        2,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'promotionVideoList',
        $pb.PbFieldType.PM,
        protoName: 'promotionVideoList',
        subBuilder: PromotionVideo.create)
    ..hasRequiredFields = false;

  GetPromotionVideoListResponse._() : super();
  factory GetPromotionVideoListResponse({
    $fixnum.Int64? vendorProfileId,
    $core.Iterable<PromotionVideo>? promotionVideoList,
  }) {
    final _result = create();
    if (vendorProfileId != null) {
      _result.vendorProfileId = vendorProfileId;
    }
    if (promotionVideoList != null) {
      _result.promotionVideoList.addAll(promotionVideoList);
    }
    return _result;
  }
  factory GetPromotionVideoListResponse.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory GetPromotionVideoListResponse.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  GetPromotionVideoListResponse clone() =>
      GetPromotionVideoListResponse()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  GetPromotionVideoListResponse copyWith(
          void Function(GetPromotionVideoListResponse) updates) =>
      super.copyWith(
              (message) => updates(message as GetPromotionVideoListResponse))
          as GetPromotionVideoListResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GetPromotionVideoListResponse create() =>
      GetPromotionVideoListResponse._();
  GetPromotionVideoListResponse createEmptyInstance() => create();
  static $pb.PbList<GetPromotionVideoListResponse> createRepeated() =>
      $pb.PbList<GetPromotionVideoListResponse>();
  @$core.pragma('dart2js:noInline')
  static GetPromotionVideoListResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<GetPromotionVideoListResponse>(create);
  static GetPromotionVideoListResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get vendorProfileId => $_getI64(0);
  @$pb.TagNumber(1)
  set vendorProfileId($fixnum.Int64 v) {
    $_setInt64(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasVendorProfileId() => $_has(0);
  @$pb.TagNumber(1)
  void clearVendorProfileId() => clearField(1);

  @$pb.TagNumber(2)
  $core.List<PromotionVideo> get promotionVideoList => $_getList(1);
}

class PromotionVideo extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'PromotionVideo',
      createEmptyInstance: create)
    ..aInt64(
        1,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'videoId',
        protoName: 'videoId')
    ..aInt64(
        2,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'contentsCategoryCode',
        protoName: 'contentsCategoryCode')
    ..aOS(
        3,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'videoUrl',
        protoName: 'videoUrl')
    ..hasRequiredFields = false;

  PromotionVideo._() : super();
  factory PromotionVideo({
    $fixnum.Int64? videoId,
    $fixnum.Int64? contentsCategoryCode,
    $core.String? videoUrl,
  }) {
    final _result = create();
    if (videoId != null) {
      _result.videoId = videoId;
    }
    if (contentsCategoryCode != null) {
      _result.contentsCategoryCode = contentsCategoryCode;
    }
    if (videoUrl != null) {
      _result.videoUrl = videoUrl;
    }
    return _result;
  }
  factory PromotionVideo.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory PromotionVideo.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  PromotionVideo clone() => PromotionVideo()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  PromotionVideo copyWith(void Function(PromotionVideo) updates) =>
      super.copyWith((message) => updates(message as PromotionVideo))
          as PromotionVideo; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static PromotionVideo create() => PromotionVideo._();
  PromotionVideo createEmptyInstance() => create();
  static $pb.PbList<PromotionVideo> createRepeated() =>
      $pb.PbList<PromotionVideo>();
  @$core.pragma('dart2js:noInline')
  static PromotionVideo getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<PromotionVideo>(create);
  static PromotionVideo? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get videoId => $_getI64(0);
  @$pb.TagNumber(1)
  set videoId($fixnum.Int64 v) {
    $_setInt64(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasVideoId() => $_has(0);
  @$pb.TagNumber(1)
  void clearVideoId() => clearField(1);

  @$pb.TagNumber(2)
  $fixnum.Int64 get contentsCategoryCode => $_getI64(1);
  @$pb.TagNumber(2)
  set contentsCategoryCode($fixnum.Int64 v) {
    $_setInt64(1, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasContentsCategoryCode() => $_has(1);
  @$pb.TagNumber(2)
  void clearContentsCategoryCode() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get videoUrl => $_getSZ(2);
  @$pb.TagNumber(3)
  set videoUrl($core.String v) {
    $_setString(2, v);
  }

  @$pb.TagNumber(3)
  $core.bool hasVideoUrl() => $_has(2);
  @$pb.TagNumber(3)
  void clearVideoUrl() => clearField(3);
}

class WeddinghallHall extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'WeddinghallHall',
      createEmptyInstance: create)
    ..aInt64(
        1,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'hallId',
        protoName: 'hallId')
    ..aOS(
        2,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'name')
    ..aOS(
        3,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'comments')
    ..aInt64(
        4,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'minCapacity',
        protoName: 'minCapacity')
    ..aInt64(
        5,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'maxCapacity',
        protoName: 'maxCapacity')
    ..pPS(
        6,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'tags')
    ..aInt64(
        7,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'price')
    ..pPS(
        8,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'hallImageUrl',
        protoName: 'hallImageUrl')
    ..hasRequiredFields = false;

  WeddinghallHall._() : super();
  factory WeddinghallHall({
    $fixnum.Int64? hallId,
    $core.String? name,
    $core.String? comments,
    $fixnum.Int64? minCapacity,
    $fixnum.Int64? maxCapacity,
    $core.Iterable<$core.String>? tags,
    $fixnum.Int64? price,
    $core.Iterable<$core.String>? hallImageUrl,
  }) {
    final _result = create();
    if (hallId != null) {
      _result.hallId = hallId;
    }
    if (name != null) {
      _result.name = name;
    }
    if (comments != null) {
      _result.comments = comments;
    }
    if (minCapacity != null) {
      _result.minCapacity = minCapacity;
    }
    if (maxCapacity != null) {
      _result.maxCapacity = maxCapacity;
    }
    if (tags != null) {
      _result.tags.addAll(tags);
    }
    if (price != null) {
      _result.price = price;
    }
    if (hallImageUrl != null) {
      _result.hallImageUrl.addAll(hallImageUrl);
    }
    return _result;
  }
  factory WeddinghallHall.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory WeddinghallHall.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  WeddinghallHall clone() => WeddinghallHall()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  WeddinghallHall copyWith(void Function(WeddinghallHall) updates) =>
      super.copyWith((message) => updates(message as WeddinghallHall))
          as WeddinghallHall; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static WeddinghallHall create() => WeddinghallHall._();
  WeddinghallHall createEmptyInstance() => create();
  static $pb.PbList<WeddinghallHall> createRepeated() =>
      $pb.PbList<WeddinghallHall>();
  @$core.pragma('dart2js:noInline')
  static WeddinghallHall getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<WeddinghallHall>(create);
  static WeddinghallHall? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get hallId => $_getI64(0);
  @$pb.TagNumber(1)
  set hallId($fixnum.Int64 v) {
    $_setInt64(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasHallId() => $_has(0);
  @$pb.TagNumber(1)
  void clearHallId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get name => $_getSZ(1);
  @$pb.TagNumber(2)
  set name($core.String v) {
    $_setString(1, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasName() => $_has(1);
  @$pb.TagNumber(2)
  void clearName() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get comments => $_getSZ(2);
  @$pb.TagNumber(3)
  set comments($core.String v) {
    $_setString(2, v);
  }

  @$pb.TagNumber(3)
  $core.bool hasComments() => $_has(2);
  @$pb.TagNumber(3)
  void clearComments() => clearField(3);

  @$pb.TagNumber(4)
  $fixnum.Int64 get minCapacity => $_getI64(3);
  @$pb.TagNumber(4)
  set minCapacity($fixnum.Int64 v) {
    $_setInt64(3, v);
  }

  @$pb.TagNumber(4)
  $core.bool hasMinCapacity() => $_has(3);
  @$pb.TagNumber(4)
  void clearMinCapacity() => clearField(4);

  @$pb.TagNumber(5)
  $fixnum.Int64 get maxCapacity => $_getI64(4);
  @$pb.TagNumber(5)
  set maxCapacity($fixnum.Int64 v) {
    $_setInt64(4, v);
  }

  @$pb.TagNumber(5)
  $core.bool hasMaxCapacity() => $_has(4);
  @$pb.TagNumber(5)
  void clearMaxCapacity() => clearField(5);

  @$pb.TagNumber(6)
  $core.List<$core.String> get tags => $_getList(5);

  @$pb.TagNumber(7)
  $fixnum.Int64 get price => $_getI64(6);
  @$pb.TagNumber(7)
  set price($fixnum.Int64 v) {
    $_setInt64(6, v);
  }

  @$pb.TagNumber(7)
  $core.bool hasPrice() => $_has(6);
  @$pb.TagNumber(7)
  void clearPrice() => clearField(7);

  @$pb.TagNumber(8)
  $core.List<$core.String> get hallImageUrl => $_getList(7);
}

class WeddinghallItem extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'WeddinghallItem',
      createEmptyInstance: create)
    ..aInt64(
        1,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'itemId',
        protoName: 'itemId')
    ..aInt64(
        2,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'weddinghallItemCode',
        protoName: 'weddinghallItemCode')
    ..aOS(
        3,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'itemTitle',
        protoName: 'itemTitle')
    ..aOS(
        4,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'comments')
    ..aInt64(
        5,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'price')
    ..aOS(
        6,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'iconUrl',
        protoName: 'iconUrl')
    ..hasRequiredFields = false;

  WeddinghallItem._() : super();
  factory WeddinghallItem({
    $fixnum.Int64? itemId,
    $fixnum.Int64? weddinghallItemCode,
    $core.String? itemTitle,
    $core.String? comments,
    $fixnum.Int64? price,
    $core.String? iconUrl,
  }) {
    final _result = create();
    if (itemId != null) {
      _result.itemId = itemId;
    }
    if (weddinghallItemCode != null) {
      _result.weddinghallItemCode = weddinghallItemCode;
    }
    if (itemTitle != null) {
      _result.itemTitle = itemTitle;
    }
    if (comments != null) {
      _result.comments = comments;
    }
    if (price != null) {
      _result.price = price;
    }
    if (iconUrl != null) {
      _result.iconUrl = iconUrl;
    }
    return _result;
  }
  factory WeddinghallItem.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory WeddinghallItem.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  WeddinghallItem clone() => WeddinghallItem()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  WeddinghallItem copyWith(void Function(WeddinghallItem) updates) =>
      super.copyWith((message) => updates(message as WeddinghallItem))
          as WeddinghallItem; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static WeddinghallItem create() => WeddinghallItem._();
  WeddinghallItem createEmptyInstance() => create();
  static $pb.PbList<WeddinghallItem> createRepeated() =>
      $pb.PbList<WeddinghallItem>();
  @$core.pragma('dart2js:noInline')
  static WeddinghallItem getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<WeddinghallItem>(create);
  static WeddinghallItem? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get itemId => $_getI64(0);
  @$pb.TagNumber(1)
  set itemId($fixnum.Int64 v) {
    $_setInt64(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasItemId() => $_has(0);
  @$pb.TagNumber(1)
  void clearItemId() => clearField(1);

  @$pb.TagNumber(2)
  $fixnum.Int64 get weddinghallItemCode => $_getI64(1);
  @$pb.TagNumber(2)
  set weddinghallItemCode($fixnum.Int64 v) {
    $_setInt64(1, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasWeddinghallItemCode() => $_has(1);
  @$pb.TagNumber(2)
  void clearWeddinghallItemCode() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get itemTitle => $_getSZ(2);
  @$pb.TagNumber(3)
  set itemTitle($core.String v) {
    $_setString(2, v);
  }

  @$pb.TagNumber(3)
  $core.bool hasItemTitle() => $_has(2);
  @$pb.TagNumber(3)
  void clearItemTitle() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get comments => $_getSZ(3);
  @$pb.TagNumber(4)
  set comments($core.String v) {
    $_setString(3, v);
  }

  @$pb.TagNumber(4)
  $core.bool hasComments() => $_has(3);
  @$pb.TagNumber(4)
  void clearComments() => clearField(4);

  @$pb.TagNumber(5)
  $fixnum.Int64 get price => $_getI64(4);
  @$pb.TagNumber(5)
  set price($fixnum.Int64 v) {
    $_setInt64(4, v);
  }

  @$pb.TagNumber(5)
  $core.bool hasPrice() => $_has(4);
  @$pb.TagNumber(5)
  void clearPrice() => clearField(5);

  @$pb.TagNumber(6)
  $core.String get iconUrl => $_getSZ(5);
  @$pb.TagNumber(6)
  set iconUrl($core.String v) {
    $_setString(5, v);
  }

  @$pb.TagNumber(6)
  $core.bool hasIconUrl() => $_has(5);
  @$pb.TagNumber(6)
  void clearIconUrl() => clearField(6);
}

class WeddinghallAdditionItem extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'WeddinghallAdditionItem',
      createEmptyInstance: create)
    ..aInt64(
        1,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'itemId',
        protoName: 'itemId')
    ..aInt64(
        2,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'weddinghallAdditionItemCode',
        protoName: 'weddinghallAdditionItemCode')
    ..aOS(
        3,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'itemTitle',
        protoName: 'itemTitle')
    ..aOS(
        4,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'comments')
    ..aOS(
        5,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'iconUrl',
        protoName: 'iconUrl')
    ..aOB(
        6,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'isUsed',
        protoName: 'isUsed')
    ..hasRequiredFields = false;

  WeddinghallAdditionItem._() : super();
  factory WeddinghallAdditionItem({
    $fixnum.Int64? itemId,
    $fixnum.Int64? weddinghallAdditionItemCode,
    $core.String? itemTitle,
    $core.String? comments,
    $core.String? iconUrl,
    $core.bool? isUsed,
  }) {
    final _result = create();
    if (itemId != null) {
      _result.itemId = itemId;
    }
    if (weddinghallAdditionItemCode != null) {
      _result.weddinghallAdditionItemCode = weddinghallAdditionItemCode;
    }
    if (itemTitle != null) {
      _result.itemTitle = itemTitle;
    }
    if (comments != null) {
      _result.comments = comments;
    }
    if (iconUrl != null) {
      _result.iconUrl = iconUrl;
    }
    if (isUsed != null) {
      _result.isUsed = isUsed;
    }
    return _result;
  }
  factory WeddinghallAdditionItem.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory WeddinghallAdditionItem.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  WeddinghallAdditionItem clone() =>
      WeddinghallAdditionItem()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  WeddinghallAdditionItem copyWith(
          void Function(WeddinghallAdditionItem) updates) =>
      super.copyWith((message) => updates(message as WeddinghallAdditionItem))
          as WeddinghallAdditionItem; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static WeddinghallAdditionItem create() => WeddinghallAdditionItem._();
  WeddinghallAdditionItem createEmptyInstance() => create();
  static $pb.PbList<WeddinghallAdditionItem> createRepeated() =>
      $pb.PbList<WeddinghallAdditionItem>();
  @$core.pragma('dart2js:noInline')
  static WeddinghallAdditionItem getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<WeddinghallAdditionItem>(create);
  static WeddinghallAdditionItem? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get itemId => $_getI64(0);
  @$pb.TagNumber(1)
  set itemId($fixnum.Int64 v) {
    $_setInt64(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasItemId() => $_has(0);
  @$pb.TagNumber(1)
  void clearItemId() => clearField(1);

  @$pb.TagNumber(2)
  $fixnum.Int64 get weddinghallAdditionItemCode => $_getI64(1);
  @$pb.TagNumber(2)
  set weddinghallAdditionItemCode($fixnum.Int64 v) {
    $_setInt64(1, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasWeddinghallAdditionItemCode() => $_has(1);
  @$pb.TagNumber(2)
  void clearWeddinghallAdditionItemCode() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get itemTitle => $_getSZ(2);
  @$pb.TagNumber(3)
  set itemTitle($core.String v) {
    $_setString(2, v);
  }

  @$pb.TagNumber(3)
  $core.bool hasItemTitle() => $_has(2);
  @$pb.TagNumber(3)
  void clearItemTitle() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get comments => $_getSZ(3);
  @$pb.TagNumber(4)
  set comments($core.String v) {
    $_setString(3, v);
  }

  @$pb.TagNumber(4)
  $core.bool hasComments() => $_has(3);
  @$pb.TagNumber(4)
  void clearComments() => clearField(4);

  @$pb.TagNumber(5)
  $core.String get iconUrl => $_getSZ(4);
  @$pb.TagNumber(5)
  set iconUrl($core.String v) {
    $_setString(4, v);
  }

  @$pb.TagNumber(5)
  $core.bool hasIconUrl() => $_has(4);
  @$pb.TagNumber(5)
  void clearIconUrl() => clearField(5);

  @$pb.TagNumber(6)
  $core.bool get isUsed => $_getBF(5);
  @$pb.TagNumber(6)
  set isUsed($core.bool v) {
    $_setBool(5, v);
  }

  @$pb.TagNumber(6)
  $core.bool hasIsUsed() => $_has(5);
  @$pb.TagNumber(6)
  void clearIsUsed() => clearField(6);
}

class VendorItem extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'VendorItem',
      createEmptyInstance: create)
    ..aInt64(
        1,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'itemId',
        protoName: 'itemId')
    ..aInt64(
        2,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'price')
    ..aOS(
        3,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'title')
    ..aOS(
        4,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'description')
    ..aInt64(
        5,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'groupId',
        protoName: 'groupId')
    ..pPS(
        6,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'imageUrl',
        protoName: 'imageUrl')
    ..aOB(
        7,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'isUsed',
        protoName: 'isUsed')
    ..hasRequiredFields = false;

  VendorItem._() : super();
  factory VendorItem({
    $fixnum.Int64? itemId,
    $fixnum.Int64? price,
    $core.String? title,
    $core.String? description,
    $fixnum.Int64? groupId,
    $core.Iterable<$core.String>? imageUrl,
    $core.bool? isUsed,
  }) {
    final _result = create();
    if (itemId != null) {
      _result.itemId = itemId;
    }
    if (price != null) {
      _result.price = price;
    }
    if (title != null) {
      _result.title = title;
    }
    if (description != null) {
      _result.description = description;
    }
    if (groupId != null) {
      _result.groupId = groupId;
    }
    if (imageUrl != null) {
      _result.imageUrl.addAll(imageUrl);
    }
    if (isUsed != null) {
      _result.isUsed = isUsed;
    }
    return _result;
  }
  factory VendorItem.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory VendorItem.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  VendorItem clone() => VendorItem()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  VendorItem copyWith(void Function(VendorItem) updates) =>
      super.copyWith((message) => updates(message as VendorItem))
          as VendorItem; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static VendorItem create() => VendorItem._();
  VendorItem createEmptyInstance() => create();
  static $pb.PbList<VendorItem> createRepeated() => $pb.PbList<VendorItem>();
  @$core.pragma('dart2js:noInline')
  static VendorItem getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<VendorItem>(create);
  static VendorItem? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get itemId => $_getI64(0);
  @$pb.TagNumber(1)
  set itemId($fixnum.Int64 v) {
    $_setInt64(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasItemId() => $_has(0);
  @$pb.TagNumber(1)
  void clearItemId() => clearField(1);

  @$pb.TagNumber(2)
  $fixnum.Int64 get price => $_getI64(1);
  @$pb.TagNumber(2)
  set price($fixnum.Int64 v) {
    $_setInt64(1, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasPrice() => $_has(1);
  @$pb.TagNumber(2)
  void clearPrice() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get title => $_getSZ(2);
  @$pb.TagNumber(3)
  set title($core.String v) {
    $_setString(2, v);
  }

  @$pb.TagNumber(3)
  $core.bool hasTitle() => $_has(2);
  @$pb.TagNumber(3)
  void clearTitle() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get description => $_getSZ(3);
  @$pb.TagNumber(4)
  set description($core.String v) {
    $_setString(3, v);
  }

  @$pb.TagNumber(4)
  $core.bool hasDescription() => $_has(3);
  @$pb.TagNumber(4)
  void clearDescription() => clearField(4);

  @$pb.TagNumber(5)
  $fixnum.Int64 get groupId => $_getI64(4);
  @$pb.TagNumber(5)
  set groupId($fixnum.Int64 v) {
    $_setInt64(4, v);
  }

  @$pb.TagNumber(5)
  $core.bool hasGroupId() => $_has(4);
  @$pb.TagNumber(5)
  void clearGroupId() => clearField(5);

  @$pb.TagNumber(6)
  $core.List<$core.String> get imageUrl => $_getList(5);

  @$pb.TagNumber(7)
  $core.bool get isUsed => $_getBF(6);
  @$pb.TagNumber(7)
  set isUsed($core.bool v) {
    $_setBool(6, v);
  }

  @$pb.TagNumber(7)
  $core.bool hasIsUsed() => $_has(6);
  @$pb.TagNumber(7)
  void clearIsUsed() => clearField(7);
}

class GetVendorItemInfoRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'GetVendorItemInfoRequest',
      createEmptyInstance: create)
    ..aInt64(
        1,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'itemPriceId',
        protoName: 'itemPriceId')
    ..hasRequiredFields = false;

  GetVendorItemInfoRequest._() : super();
  factory GetVendorItemInfoRequest({
    $fixnum.Int64? itemPriceId,
  }) {
    final _result = create();
    if (itemPriceId != null) {
      _result.itemPriceId = itemPriceId;
    }
    return _result;
  }
  factory GetVendorItemInfoRequest.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory GetVendorItemInfoRequest.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  GetVendorItemInfoRequest clone() =>
      GetVendorItemInfoRequest()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  GetVendorItemInfoRequest copyWith(
          void Function(GetVendorItemInfoRequest) updates) =>
      super.copyWith((message) => updates(message as GetVendorItemInfoRequest))
          as GetVendorItemInfoRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GetVendorItemInfoRequest create() => GetVendorItemInfoRequest._();
  GetVendorItemInfoRequest createEmptyInstance() => create();
  static $pb.PbList<GetVendorItemInfoRequest> createRepeated() =>
      $pb.PbList<GetVendorItemInfoRequest>();
  @$core.pragma('dart2js:noInline')
  static GetVendorItemInfoRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<GetVendorItemInfoRequest>(create);
  static GetVendorItemInfoRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get itemPriceId => $_getI64(0);
  @$pb.TagNumber(1)
  set itemPriceId($fixnum.Int64 v) {
    $_setInt64(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasItemPriceId() => $_has(0);
  @$pb.TagNumber(1)
  void clearItemPriceId() => clearField(1);
}

class VendorWorkingTime extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'VendorWorkingTime',
      createEmptyInstance: create)
    ..aInt64(
        1,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'vendorProfileId',
        protoName: 'vendorProfileId')
    ..aInt64(
        2,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'weekdaysOpenTime',
        protoName: 'weekdaysOpenTime')
    ..aInt64(
        3,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'weekdaysCloseTime',
        protoName: 'weekdaysCloseTime')
    ..aInt64(
        4,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'weekendOpenTime',
        protoName: 'weekendOpenTime')
    ..aInt64(
        5,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'weekdendCloseTime',
        protoName: 'weekdendCloseTime')
    ..aOB(
        6,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'isSundayOff',
        protoName: 'isSundayOff')
    ..aOB(
        7,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'isMondayOff',
        protoName: 'isMondayOff')
    ..aOB(
        8,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'isTuesdayOff',
        protoName: 'isTuesdayOff')
    ..aOB(
        9,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'isWednesdayOff',
        protoName: 'isWednesdayOff')
    ..aOB(
        10,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'isThursdayOff',
        protoName: 'isThursdayOff')
    ..aOB(
        11,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'isFridayOff',
        protoName: 'isFridayOff')
    ..aOB(
        12,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'isSaturdayOff',
        protoName: 'isSaturdayOff')
    ..hasRequiredFields = false;

  VendorWorkingTime._() : super();
  factory VendorWorkingTime({
    $fixnum.Int64? vendorProfileId,
    $fixnum.Int64? weekdaysOpenTime,
    $fixnum.Int64? weekdaysCloseTime,
    $fixnum.Int64? weekendOpenTime,
    $fixnum.Int64? weekdendCloseTime,
    $core.bool? isSundayOff,
    $core.bool? isMondayOff,
    $core.bool? isTuesdayOff,
    $core.bool? isWednesdayOff,
    $core.bool? isThursdayOff,
    $core.bool? isFridayOff,
    $core.bool? isSaturdayOff,
  }) {
    final _result = create();
    if (vendorProfileId != null) {
      _result.vendorProfileId = vendorProfileId;
    }
    if (weekdaysOpenTime != null) {
      _result.weekdaysOpenTime = weekdaysOpenTime;
    }
    if (weekdaysCloseTime != null) {
      _result.weekdaysCloseTime = weekdaysCloseTime;
    }
    if (weekendOpenTime != null) {
      _result.weekendOpenTime = weekendOpenTime;
    }
    if (weekdendCloseTime != null) {
      _result.weekdendCloseTime = weekdendCloseTime;
    }
    if (isSundayOff != null) {
      _result.isSundayOff = isSundayOff;
    }
    if (isMondayOff != null) {
      _result.isMondayOff = isMondayOff;
    }
    if (isTuesdayOff != null) {
      _result.isTuesdayOff = isTuesdayOff;
    }
    if (isWednesdayOff != null) {
      _result.isWednesdayOff = isWednesdayOff;
    }
    if (isThursdayOff != null) {
      _result.isThursdayOff = isThursdayOff;
    }
    if (isFridayOff != null) {
      _result.isFridayOff = isFridayOff;
    }
    if (isSaturdayOff != null) {
      _result.isSaturdayOff = isSaturdayOff;
    }
    return _result;
  }
  factory VendorWorkingTime.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory VendorWorkingTime.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  VendorWorkingTime clone() => VendorWorkingTime()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  VendorWorkingTime copyWith(void Function(VendorWorkingTime) updates) =>
      super.copyWith((message) => updates(message as VendorWorkingTime))
          as VendorWorkingTime; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static VendorWorkingTime create() => VendorWorkingTime._();
  VendorWorkingTime createEmptyInstance() => create();
  static $pb.PbList<VendorWorkingTime> createRepeated() =>
      $pb.PbList<VendorWorkingTime>();
  @$core.pragma('dart2js:noInline')
  static VendorWorkingTime getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<VendorWorkingTime>(create);
  static VendorWorkingTime? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get vendorProfileId => $_getI64(0);
  @$pb.TagNumber(1)
  set vendorProfileId($fixnum.Int64 v) {
    $_setInt64(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasVendorProfileId() => $_has(0);
  @$pb.TagNumber(1)
  void clearVendorProfileId() => clearField(1);

  @$pb.TagNumber(2)
  $fixnum.Int64 get weekdaysOpenTime => $_getI64(1);
  @$pb.TagNumber(2)
  set weekdaysOpenTime($fixnum.Int64 v) {
    $_setInt64(1, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasWeekdaysOpenTime() => $_has(1);
  @$pb.TagNumber(2)
  void clearWeekdaysOpenTime() => clearField(2);

  @$pb.TagNumber(3)
  $fixnum.Int64 get weekdaysCloseTime => $_getI64(2);
  @$pb.TagNumber(3)
  set weekdaysCloseTime($fixnum.Int64 v) {
    $_setInt64(2, v);
  }

  @$pb.TagNumber(3)
  $core.bool hasWeekdaysCloseTime() => $_has(2);
  @$pb.TagNumber(3)
  void clearWeekdaysCloseTime() => clearField(3);

  @$pb.TagNumber(4)
  $fixnum.Int64 get weekendOpenTime => $_getI64(3);
  @$pb.TagNumber(4)
  set weekendOpenTime($fixnum.Int64 v) {
    $_setInt64(3, v);
  }

  @$pb.TagNumber(4)
  $core.bool hasWeekendOpenTime() => $_has(3);
  @$pb.TagNumber(4)
  void clearWeekendOpenTime() => clearField(4);

  @$pb.TagNumber(5)
  $fixnum.Int64 get weekdendCloseTime => $_getI64(4);
  @$pb.TagNumber(5)
  set weekdendCloseTime($fixnum.Int64 v) {
    $_setInt64(4, v);
  }

  @$pb.TagNumber(5)
  $core.bool hasWeekdendCloseTime() => $_has(4);
  @$pb.TagNumber(5)
  void clearWeekdendCloseTime() => clearField(5);

  @$pb.TagNumber(6)
  $core.bool get isSundayOff => $_getBF(5);
  @$pb.TagNumber(6)
  set isSundayOff($core.bool v) {
    $_setBool(5, v);
  }

  @$pb.TagNumber(6)
  $core.bool hasIsSundayOff() => $_has(5);
  @$pb.TagNumber(6)
  void clearIsSundayOff() => clearField(6);

  @$pb.TagNumber(7)
  $core.bool get isMondayOff => $_getBF(6);
  @$pb.TagNumber(7)
  set isMondayOff($core.bool v) {
    $_setBool(6, v);
  }

  @$pb.TagNumber(7)
  $core.bool hasIsMondayOff() => $_has(6);
  @$pb.TagNumber(7)
  void clearIsMondayOff() => clearField(7);

  @$pb.TagNumber(8)
  $core.bool get isTuesdayOff => $_getBF(7);
  @$pb.TagNumber(8)
  set isTuesdayOff($core.bool v) {
    $_setBool(7, v);
  }

  @$pb.TagNumber(8)
  $core.bool hasIsTuesdayOff() => $_has(7);
  @$pb.TagNumber(8)
  void clearIsTuesdayOff() => clearField(8);

  @$pb.TagNumber(9)
  $core.bool get isWednesdayOff => $_getBF(8);
  @$pb.TagNumber(9)
  set isWednesdayOff($core.bool v) {
    $_setBool(8, v);
  }

  @$pb.TagNumber(9)
  $core.bool hasIsWednesdayOff() => $_has(8);
  @$pb.TagNumber(9)
  void clearIsWednesdayOff() => clearField(9);

  @$pb.TagNumber(10)
  $core.bool get isThursdayOff => $_getBF(9);
  @$pb.TagNumber(10)
  set isThursdayOff($core.bool v) {
    $_setBool(9, v);
  }

  @$pb.TagNumber(10)
  $core.bool hasIsThursdayOff() => $_has(9);
  @$pb.TagNumber(10)
  void clearIsThursdayOff() => clearField(10);

  @$pb.TagNumber(11)
  $core.bool get isFridayOff => $_getBF(10);
  @$pb.TagNumber(11)
  set isFridayOff($core.bool v) {
    $_setBool(10, v);
  }

  @$pb.TagNumber(11)
  $core.bool hasIsFridayOff() => $_has(10);
  @$pb.TagNumber(11)
  void clearIsFridayOff() => clearField(11);

  @$pb.TagNumber(12)
  $core.bool get isSaturdayOff => $_getBF(11);
  @$pb.TagNumber(12)
  set isSaturdayOff($core.bool v) {
    $_setBool(11, v);
  }

  @$pb.TagNumber(12)
  $core.bool hasIsSaturdayOff() => $_has(11);
  @$pb.TagNumber(12)
  void clearIsSaturdayOff() => clearField(12);
}

class SimulateVendorItem extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'SimulateVendorItem',
      createEmptyInstance: create)
    ..aInt64(
        1,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'itemId',
        protoName: 'itemId')
    ..aInt64(
        2,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'vendorProfileId',
        protoName: 'vendorProfileId')
    ..a<$core.int>(
        3,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'vendorServiceCode',
        $pb.PbFieldType.O3,
        protoName: 'vendorServiceCode')
    ..aOS(
        4,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'itemTitle',
        protoName: 'itemTitle')
    ..aInt64(
        5,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'itemPrice',
        protoName: 'itemPrice')
    ..aOS(
        6,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'itemImageUrl',
        protoName: 'itemImageUrl')
    ..aOS(
        7,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'vendorName',
        protoName: 'vendorName')
    ..hasRequiredFields = false;

  SimulateVendorItem._() : super();
  factory SimulateVendorItem({
    $fixnum.Int64? itemId,
    $fixnum.Int64? vendorProfileId,
    $core.int? vendorServiceCode,
    $core.String? itemTitle,
    $fixnum.Int64? itemPrice,
    $core.String? itemImageUrl,
    $core.String? vendorName,
  }) {
    final _result = create();
    if (itemId != null) {
      _result.itemId = itemId;
    }
    if (vendorProfileId != null) {
      _result.vendorProfileId = vendorProfileId;
    }
    if (vendorServiceCode != null) {
      _result.vendorServiceCode = vendorServiceCode;
    }
    if (itemTitle != null) {
      _result.itemTitle = itemTitle;
    }
    if (itemPrice != null) {
      _result.itemPrice = itemPrice;
    }
    if (itemImageUrl != null) {
      _result.itemImageUrl = itemImageUrl;
    }
    if (vendorName != null) {
      _result.vendorName = vendorName;
    }
    return _result;
  }
  factory SimulateVendorItem.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory SimulateVendorItem.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  SimulateVendorItem clone() => SimulateVendorItem()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  SimulateVendorItem copyWith(void Function(SimulateVendorItem) updates) =>
      super.copyWith((message) => updates(message as SimulateVendorItem))
          as SimulateVendorItem; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static SimulateVendorItem create() => SimulateVendorItem._();
  SimulateVendorItem createEmptyInstance() => create();
  static $pb.PbList<SimulateVendorItem> createRepeated() =>
      $pb.PbList<SimulateVendorItem>();
  @$core.pragma('dart2js:noInline')
  static SimulateVendorItem getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<SimulateVendorItem>(create);
  static SimulateVendorItem? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get itemId => $_getI64(0);
  @$pb.TagNumber(1)
  set itemId($fixnum.Int64 v) {
    $_setInt64(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasItemId() => $_has(0);
  @$pb.TagNumber(1)
  void clearItemId() => clearField(1);

  @$pb.TagNumber(2)
  $fixnum.Int64 get vendorProfileId => $_getI64(1);
  @$pb.TagNumber(2)
  set vendorProfileId($fixnum.Int64 v) {
    $_setInt64(1, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasVendorProfileId() => $_has(1);
  @$pb.TagNumber(2)
  void clearVendorProfileId() => clearField(2);

  @$pb.TagNumber(3)
  $core.int get vendorServiceCode => $_getIZ(2);
  @$pb.TagNumber(3)
  set vendorServiceCode($core.int v) {
    $_setSignedInt32(2, v);
  }

  @$pb.TagNumber(3)
  $core.bool hasVendorServiceCode() => $_has(2);
  @$pb.TagNumber(3)
  void clearVendorServiceCode() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get itemTitle => $_getSZ(3);
  @$pb.TagNumber(4)
  set itemTitle($core.String v) {
    $_setString(3, v);
  }

  @$pb.TagNumber(4)
  $core.bool hasItemTitle() => $_has(3);
  @$pb.TagNumber(4)
  void clearItemTitle() => clearField(4);

  @$pb.TagNumber(5)
  $fixnum.Int64 get itemPrice => $_getI64(4);
  @$pb.TagNumber(5)
  set itemPrice($fixnum.Int64 v) {
    $_setInt64(4, v);
  }

  @$pb.TagNumber(5)
  $core.bool hasItemPrice() => $_has(4);
  @$pb.TagNumber(5)
  void clearItemPrice() => clearField(5);

  @$pb.TagNumber(6)
  $core.String get itemImageUrl => $_getSZ(5);
  @$pb.TagNumber(6)
  set itemImageUrl($core.String v) {
    $_setString(5, v);
  }

  @$pb.TagNumber(6)
  $core.bool hasItemImageUrl() => $_has(5);
  @$pb.TagNumber(6)
  void clearItemImageUrl() => clearField(6);

  @$pb.TagNumber(7)
  $core.String get vendorName => $_getSZ(6);
  @$pb.TagNumber(7)
  set vendorName($core.String v) {
    $_setString(6, v);
  }

  @$pb.TagNumber(7)
  $core.bool hasVendorName() => $_has(6);
  @$pb.TagNumber(7)
  void clearVendorName() => clearField(7);
}

class AddUserVendorRecommandRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'AddUserVendorRecommandRequest',
      createEmptyInstance: create)
    ..aOS(
        1,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'vendorName',
        protoName: 'vendorName')
    ..aInt64(
        2,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'vendorServiceCode',
        protoName: 'vendorServiceCode')
    ..aOS(
        3,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'vendorAddress',
        protoName: 'vendorAddress')
    ..aOS(
        4,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'reason')
    ..hasRequiredFields = false;

  AddUserVendorRecommandRequest._() : super();
  factory AddUserVendorRecommandRequest({
    $core.String? vendorName,
    $fixnum.Int64? vendorServiceCode,
    $core.String? vendorAddress,
    $core.String? reason,
  }) {
    final _result = create();
    if (vendorName != null) {
      _result.vendorName = vendorName;
    }
    if (vendorServiceCode != null) {
      _result.vendorServiceCode = vendorServiceCode;
    }
    if (vendorAddress != null) {
      _result.vendorAddress = vendorAddress;
    }
    if (reason != null) {
      _result.reason = reason;
    }
    return _result;
  }
  factory AddUserVendorRecommandRequest.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory AddUserVendorRecommandRequest.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  AddUserVendorRecommandRequest clone() =>
      AddUserVendorRecommandRequest()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  AddUserVendorRecommandRequest copyWith(
          void Function(AddUserVendorRecommandRequest) updates) =>
      super.copyWith(
              (message) => updates(message as AddUserVendorRecommandRequest))
          as AddUserVendorRecommandRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static AddUserVendorRecommandRequest create() =>
      AddUserVendorRecommandRequest._();
  AddUserVendorRecommandRequest createEmptyInstance() => create();
  static $pb.PbList<AddUserVendorRecommandRequest> createRepeated() =>
      $pb.PbList<AddUserVendorRecommandRequest>();
  @$core.pragma('dart2js:noInline')
  static AddUserVendorRecommandRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<AddUserVendorRecommandRequest>(create);
  static AddUserVendorRecommandRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get vendorName => $_getSZ(0);
  @$pb.TagNumber(1)
  set vendorName($core.String v) {
    $_setString(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasVendorName() => $_has(0);
  @$pb.TagNumber(1)
  void clearVendorName() => clearField(1);

  @$pb.TagNumber(2)
  $fixnum.Int64 get vendorServiceCode => $_getI64(1);
  @$pb.TagNumber(2)
  set vendorServiceCode($fixnum.Int64 v) {
    $_setInt64(1, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasVendorServiceCode() => $_has(1);
  @$pb.TagNumber(2)
  void clearVendorServiceCode() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get vendorAddress => $_getSZ(2);
  @$pb.TagNumber(3)
  set vendorAddress($core.String v) {
    $_setString(2, v);
  }

  @$pb.TagNumber(3)
  $core.bool hasVendorAddress() => $_has(2);
  @$pb.TagNumber(3)
  void clearVendorAddress() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get reason => $_getSZ(3);
  @$pb.TagNumber(4)
  set reason($core.String v) {
    $_setString(3, v);
  }

  @$pb.TagNumber(4)
  $core.bool hasReason() => $_has(3);
  @$pb.TagNumber(4)
  void clearReason() => clearField(4);
}
