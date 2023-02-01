///
//  Generated code. Do not modify.
//  source: grpc/app_biz.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:core' as $core;

import 'package:fixnum/fixnum.dart' as $fixnum;
import 'package:protobuf/protobuf.dart' as $pb;

import '../common/app_common.pb.dart' as $0;

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
            : 'isEnabled',
        protoName: 'isEnabled')
    ..aOB(
        9,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'isWeddyService',
        protoName: 'isWeddyService')
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
    $core.bool? isEnabled,
    $core.bool? isWeddyService,
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
    if (isEnabled != null) {
      _result.isEnabled = isEnabled;
    }
    if (isWeddyService != null) {
      _result.isWeddyService = isWeddyService;
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
  $core.bool get isEnabled => $_getBF(7);
  @$pb.TagNumber(8)
  set isEnabled($core.bool v) {
    $_setBool(7, v);
  }

  @$pb.TagNumber(8)
  $core.bool hasIsEnabled() => $_has(7);
  @$pb.TagNumber(8)
  void clearIsEnabled() => clearField(8);

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
            : 'weddingStyleCode',
        $pb.PbFieldType.O3,
        protoName: 'weddingStyleCode')
    ..a<$core.int>(
        2,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'weddingRemaingDays',
        $pb.PbFieldType.O3,
        protoName: 'weddingRemaingDays')
    ..a<$core.int>(
        3,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'taskProgressRate',
        $pb.PbFieldType.O3,
        protoName: 'taskProgressRate')
    ..pc<TimelineGroupItem>(
        4,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'timelineGroupItemList',
        $pb.PbFieldType.PM,
        protoName: 'timelineGroupItemList',
        subBuilder: TimelineGroupItem.create)
    ..hasRequiredFields = false;

  TimelineResponse._() : super();
  factory TimelineResponse({
    $core.int? weddingStyleCode,
    $core.int? weddingRemaingDays,
    $core.int? taskProgressRate,
    $core.Iterable<TimelineGroupItem>? timelineGroupItemList,
  }) {
    final _result = create();
    if (weddingStyleCode != null) {
      _result.weddingStyleCode = weddingStyleCode;
    }
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
  $core.int get weddingStyleCode => $_getIZ(0);
  @$pb.TagNumber(1)
  set weddingStyleCode($core.int v) {
    $_setSignedInt32(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasWeddingStyleCode() => $_has(0);
  @$pb.TagNumber(1)
  void clearWeddingStyleCode() => clearField(1);

  @$pb.TagNumber(2)
  $core.int get weddingRemaingDays => $_getIZ(1);
  @$pb.TagNumber(2)
  set weddingRemaingDays($core.int v) {
    $_setSignedInt32(1, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasWeddingRemaingDays() => $_has(1);
  @$pb.TagNumber(2)
  void clearWeddingRemaingDays() => clearField(2);

  @$pb.TagNumber(3)
  $core.int get taskProgressRate => $_getIZ(2);
  @$pb.TagNumber(3)
  set taskProgressRate($core.int v) {
    $_setSignedInt32(2, v);
  }

  @$pb.TagNumber(3)
  $core.bool hasTaskProgressRate() => $_has(2);
  @$pb.TagNumber(3)
  void clearTaskProgressRate() => clearField(3);

  @$pb.TagNumber(4)
  $core.List<TimelineGroupItem> get timelineGroupItemList => $_getList(3);
}

class SaveTimelineRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'SaveTimelineRequest',
      createEmptyInstance: create)
    ..a<$core.int>(
        1,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'weddingStyleCode',
        $pb.PbFieldType.O3,
        protoName: 'weddingStyleCode')
    ..pc<TimelineGroupItem>(
        2,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'timelineGroupItemList',
        $pb.PbFieldType.PM,
        protoName: 'timelineGroupItemList',
        subBuilder: TimelineGroupItem.create)
    ..hasRequiredFields = false;

  SaveTimelineRequest._() : super();
  factory SaveTimelineRequest({
    $core.int? weddingStyleCode,
    $core.Iterable<TimelineGroupItem>? timelineGroupItemList,
  }) {
    final _result = create();
    if (weddingStyleCode != null) {
      _result.weddingStyleCode = weddingStyleCode;
    }
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
  $core.int get weddingStyleCode => $_getIZ(0);
  @$pb.TagNumber(1)
  set weddingStyleCode($core.int v) {
    $_setSignedInt32(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasWeddingStyleCode() => $_has(0);
  @$pb.TagNumber(1)
  void clearWeddingStyleCode() => clearField(1);

  @$pb.TagNumber(2)
  $core.List<TimelineGroupItem> get timelineGroupItemList => $_getList(1);
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
    ..aOS(
        2,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'ceremonyDate',
        protoName: 'ceremonyDate')
    ..a<$core.int>(
        3,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'weddingAdminDivisionCode',
        $pb.PbFieldType.O3,
        protoName: 'weddingAdminDivisionCode')
    ..aInt64(
        4,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'weddingBudget',
        protoName: 'weddingBudget')
    ..a<$core.int>(
        5,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'numberOfGuest',
        $pb.PbFieldType.O3,
        protoName: 'numberOfGuest')
    ..aOB(
        6,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'hasPush',
        protoName: 'hasPush')
    ..aOB(
        7,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'hasMarketingPush',
        protoName: 'hasMarketingPush')
    ..aOS(
        8,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'birthDay',
        protoName: 'birthDay')
    ..a<$core.int>(
        9,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'weddingStyleCode',
        $pb.PbFieldType.O3,
        protoName: 'weddingStyleCode')
    ..a<$core.int>(
        10,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'relationShipCode',
        $pb.PbFieldType.O3,
        protoName: 'relationShipCode')
    ..hasRequiredFields = false;

  SaveUserProfileRequest._() : super();
  factory SaveUserProfileRequest({
    $core.String? name,
    $core.String? ceremonyDate,
    $core.int? weddingAdminDivisionCode,
    $fixnum.Int64? weddingBudget,
    $core.int? numberOfGuest,
    $core.bool? hasPush,
    $core.bool? hasMarketingPush,
    $core.String? birthDay,
    $core.int? weddingStyleCode,
    $core.int? relationShipCode,
  }) {
    final _result = create();
    if (name != null) {
      _result.name = name;
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
    if (numberOfGuest != null) {
      _result.numberOfGuest = numberOfGuest;
    }
    if (hasPush != null) {
      _result.hasPush = hasPush;
    }
    if (hasMarketingPush != null) {
      _result.hasMarketingPush = hasMarketingPush;
    }
    if (birthDay != null) {
      _result.birthDay = birthDay;
    }
    if (weddingStyleCode != null) {
      _result.weddingStyleCode = weddingStyleCode;
    }
    if (relationShipCode != null) {
      _result.relationShipCode = relationShipCode;
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
  $core.String get ceremonyDate => $_getSZ(1);
  @$pb.TagNumber(2)
  set ceremonyDate($core.String v) {
    $_setString(1, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasCeremonyDate() => $_has(1);
  @$pb.TagNumber(2)
  void clearCeremonyDate() => clearField(2);

  @$pb.TagNumber(3)
  $core.int get weddingAdminDivisionCode => $_getIZ(2);
  @$pb.TagNumber(3)
  set weddingAdminDivisionCode($core.int v) {
    $_setSignedInt32(2, v);
  }

  @$pb.TagNumber(3)
  $core.bool hasWeddingAdminDivisionCode() => $_has(2);
  @$pb.TagNumber(3)
  void clearWeddingAdminDivisionCode() => clearField(3);

  @$pb.TagNumber(4)
  $fixnum.Int64 get weddingBudget => $_getI64(3);
  @$pb.TagNumber(4)
  set weddingBudget($fixnum.Int64 v) {
    $_setInt64(3, v);
  }

  @$pb.TagNumber(4)
  $core.bool hasWeddingBudget() => $_has(3);
  @$pb.TagNumber(4)
  void clearWeddingBudget() => clearField(4);

  @$pb.TagNumber(5)
  $core.int get numberOfGuest => $_getIZ(4);
  @$pb.TagNumber(5)
  set numberOfGuest($core.int v) {
    $_setSignedInt32(4, v);
  }

  @$pb.TagNumber(5)
  $core.bool hasNumberOfGuest() => $_has(4);
  @$pb.TagNumber(5)
  void clearNumberOfGuest() => clearField(5);

  @$pb.TagNumber(6)
  $core.bool get hasPush => $_getBF(5);
  @$pb.TagNumber(6)
  set hasPush($core.bool v) {
    $_setBool(5, v);
  }

  @$pb.TagNumber(6)
  $core.bool hasHasPush() => $_has(5);
  @$pb.TagNumber(6)
  void clearHasPush() => clearField(6);

  @$pb.TagNumber(7)
  $core.bool get hasMarketingPush => $_getBF(6);
  @$pb.TagNumber(7)
  set hasMarketingPush($core.bool v) {
    $_setBool(6, v);
  }

  @$pb.TagNumber(7)
  $core.bool hasHasMarketingPush() => $_has(6);
  @$pb.TagNumber(7)
  void clearHasMarketingPush() => clearField(7);

  @$pb.TagNumber(8)
  $core.String get birthDay => $_getSZ(7);
  @$pb.TagNumber(8)
  set birthDay($core.String v) {
    $_setString(7, v);
  }

  @$pb.TagNumber(8)
  $core.bool hasBirthDay() => $_has(7);
  @$pb.TagNumber(8)
  void clearBirthDay() => clearField(8);

  @$pb.TagNumber(9)
  $core.int get weddingStyleCode => $_getIZ(8);
  @$pb.TagNumber(9)
  set weddingStyleCode($core.int v) {
    $_setSignedInt32(8, v);
  }

  @$pb.TagNumber(9)
  $core.bool hasWeddingStyleCode() => $_has(8);
  @$pb.TagNumber(9)
  void clearWeddingStyleCode() => clearField(9);

  @$pb.TagNumber(10)
  $core.int get relationShipCode => $_getIZ(9);
  @$pb.TagNumber(10)
  set relationShipCode($core.int v) {
    $_setSignedInt32(9, v);
  }

  @$pb.TagNumber(10)
  $core.bool hasRelationShipCode() => $_has(9);
  @$pb.TagNumber(10)
  void clearRelationShipCode() => clearField(10);
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
            : 'ceremonyDate',
        protoName: 'ceremonyDate')
    ..a<$core.int>(
        3,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'weddingAdminDivisionCode',
        $pb.PbFieldType.O3,
        protoName: 'weddingAdminDivisionCode')
    ..aInt64(
        4,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'weddingBudget',
        protoName: 'weddingBudget')
    ..a<$core.int>(
        5,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'numberOfGuest',
        $pb.PbFieldType.O3,
        protoName: 'numberOfGuest')
    ..aOB(
        6,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'hasPush',
        protoName: 'hasPush')
    ..aOB(
        7,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'hasMarketingPush',
        protoName: 'hasMarketingPush')
    ..aOS(
        8,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'birthDay',
        protoName: 'birthDay')
    ..a<$core.int>(
        9,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'weddingStyleCode',
        $pb.PbFieldType.O3,
        protoName: 'weddingStyleCode')
    ..a<$core.int>(
        10,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'relationShipCode',
        $pb.PbFieldType.O3,
        protoName: 'relationShipCode')
    ..hasRequiredFields = false;

  UserProfileResponse._() : super();
  factory UserProfileResponse({
    $core.String? name,
    $core.String? ceremonyDate,
    $core.int? weddingAdminDivisionCode,
    $fixnum.Int64? weddingBudget,
    $core.int? numberOfGuest,
    $core.bool? hasPush,
    $core.bool? hasMarketingPush,
    $core.String? birthDay,
    $core.int? weddingStyleCode,
    $core.int? relationShipCode,
  }) {
    final _result = create();
    if (name != null) {
      _result.name = name;
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
    if (numberOfGuest != null) {
      _result.numberOfGuest = numberOfGuest;
    }
    if (hasPush != null) {
      _result.hasPush = hasPush;
    }
    if (hasMarketingPush != null) {
      _result.hasMarketingPush = hasMarketingPush;
    }
    if (birthDay != null) {
      _result.birthDay = birthDay;
    }
    if (weddingStyleCode != null) {
      _result.weddingStyleCode = weddingStyleCode;
    }
    if (relationShipCode != null) {
      _result.relationShipCode = relationShipCode;
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
  $core.String get ceremonyDate => $_getSZ(1);
  @$pb.TagNumber(2)
  set ceremonyDate($core.String v) {
    $_setString(1, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasCeremonyDate() => $_has(1);
  @$pb.TagNumber(2)
  void clearCeremonyDate() => clearField(2);

  @$pb.TagNumber(3)
  $core.int get weddingAdminDivisionCode => $_getIZ(2);
  @$pb.TagNumber(3)
  set weddingAdminDivisionCode($core.int v) {
    $_setSignedInt32(2, v);
  }

  @$pb.TagNumber(3)
  $core.bool hasWeddingAdminDivisionCode() => $_has(2);
  @$pb.TagNumber(3)
  void clearWeddingAdminDivisionCode() => clearField(3);

  @$pb.TagNumber(4)
  $fixnum.Int64 get weddingBudget => $_getI64(3);
  @$pb.TagNumber(4)
  set weddingBudget($fixnum.Int64 v) {
    $_setInt64(3, v);
  }

  @$pb.TagNumber(4)
  $core.bool hasWeddingBudget() => $_has(3);
  @$pb.TagNumber(4)
  void clearWeddingBudget() => clearField(4);

  @$pb.TagNumber(5)
  $core.int get numberOfGuest => $_getIZ(4);
  @$pb.TagNumber(5)
  set numberOfGuest($core.int v) {
    $_setSignedInt32(4, v);
  }

  @$pb.TagNumber(5)
  $core.bool hasNumberOfGuest() => $_has(4);
  @$pb.TagNumber(5)
  void clearNumberOfGuest() => clearField(5);

  @$pb.TagNumber(6)
  $core.bool get hasPush => $_getBF(5);
  @$pb.TagNumber(6)
  set hasPush($core.bool v) {
    $_setBool(5, v);
  }

  @$pb.TagNumber(6)
  $core.bool hasHasPush() => $_has(5);
  @$pb.TagNumber(6)
  void clearHasPush() => clearField(6);

  @$pb.TagNumber(7)
  $core.bool get hasMarketingPush => $_getBF(6);
  @$pb.TagNumber(7)
  set hasMarketingPush($core.bool v) {
    $_setBool(6, v);
  }

  @$pb.TagNumber(7)
  $core.bool hasHasMarketingPush() => $_has(6);
  @$pb.TagNumber(7)
  void clearHasMarketingPush() => clearField(7);

  @$pb.TagNumber(8)
  $core.String get birthDay => $_getSZ(7);
  @$pb.TagNumber(8)
  set birthDay($core.String v) {
    $_setString(7, v);
  }

  @$pb.TagNumber(8)
  $core.bool hasBirthDay() => $_has(7);
  @$pb.TagNumber(8)
  void clearBirthDay() => clearField(8);

  @$pb.TagNumber(9)
  $core.int get weddingStyleCode => $_getIZ(8);
  @$pb.TagNumber(9)
  set weddingStyleCode($core.int v) {
    $_setSignedInt32(8, v);
  }

  @$pb.TagNumber(9)
  $core.bool hasWeddingStyleCode() => $_has(8);
  @$pb.TagNumber(9)
  void clearWeddingStyleCode() => clearField(9);

  @$pb.TagNumber(10)
  $core.int get relationShipCode => $_getIZ(9);
  @$pb.TagNumber(10)
  set relationShipCode($core.int v) {
    $_setSignedInt32(9, v);
  }

  @$pb.TagNumber(10)
  $core.bool hasRelationShipCode() => $_has(9);
  @$pb.TagNumber(10)
  void clearRelationShipCode() => clearField(10);
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
