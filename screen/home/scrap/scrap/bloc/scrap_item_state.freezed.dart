// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'scrap_item_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ScrapItemState {
  BlocStatus get status => throw _privateConstructorUsedError;
  List<ScrapVendorInfo> get scrapVendorInfoList =>
      throw _privateConstructorUsedError;
  List<VendorItem> get canUseButtons => throw _privateConstructorUsedError;
  List<ScrapVendorInfo> get canVendorInfo => throw _privateConstructorUsedError;
  List<ScrapCheckModel> get scrapCheckModel =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ScrapItemStateCopyWith<ScrapItemState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ScrapItemStateCopyWith<$Res> {
  factory $ScrapItemStateCopyWith(
          ScrapItemState value, $Res Function(ScrapItemState) then) =
      _$ScrapItemStateCopyWithImpl<$Res, ScrapItemState>;
  @useResult
  $Res call(
      {BlocStatus status,
      List<ScrapVendorInfo> scrapVendorInfoList,
      List<VendorItem> canUseButtons,
      List<ScrapVendorInfo> canVendorInfo,
      List<ScrapCheckModel> scrapCheckModel});
}

/// @nodoc
class _$ScrapItemStateCopyWithImpl<$Res, $Val extends ScrapItemState>
    implements $ScrapItemStateCopyWith<$Res> {
  _$ScrapItemStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? scrapVendorInfoList = null,
    Object? canUseButtons = null,
    Object? canVendorInfo = null,
    Object? scrapCheckModel = null,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as BlocStatus,
      scrapVendorInfoList: null == scrapVendorInfoList
          ? _value.scrapVendorInfoList
          : scrapVendorInfoList // ignore: cast_nullable_to_non_nullable
              as List<ScrapVendorInfo>,
      canUseButtons: null == canUseButtons
          ? _value.canUseButtons
          : canUseButtons // ignore: cast_nullable_to_non_nullable
              as List<VendorItem>,
      canVendorInfo: null == canVendorInfo
          ? _value.canVendorInfo
          : canVendorInfo // ignore: cast_nullable_to_non_nullable
              as List<ScrapVendorInfo>,
      scrapCheckModel: null == scrapCheckModel
          ? _value.scrapCheckModel
          : scrapCheckModel // ignore: cast_nullable_to_non_nullable
              as List<ScrapCheckModel>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ScrapItemStateCopyWith<$Res>
    implements $ScrapItemStateCopyWith<$Res> {
  factory _$$_ScrapItemStateCopyWith(
          _$_ScrapItemState value, $Res Function(_$_ScrapItemState) then) =
      __$$_ScrapItemStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {BlocStatus status,
      List<ScrapVendorInfo> scrapVendorInfoList,
      List<VendorItem> canUseButtons,
      List<ScrapVendorInfo> canVendorInfo,
      List<ScrapCheckModel> scrapCheckModel});
}

/// @nodoc
class __$$_ScrapItemStateCopyWithImpl<$Res>
    extends _$ScrapItemStateCopyWithImpl<$Res, _$_ScrapItemState>
    implements _$$_ScrapItemStateCopyWith<$Res> {
  __$$_ScrapItemStateCopyWithImpl(
      _$_ScrapItemState _value, $Res Function(_$_ScrapItemState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? scrapVendorInfoList = null,
    Object? canUseButtons = null,
    Object? canVendorInfo = null,
    Object? scrapCheckModel = null,
  }) {
    return _then(_$_ScrapItemState(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as BlocStatus,
      scrapVendorInfoList: null == scrapVendorInfoList
          ? _value._scrapVendorInfoList
          : scrapVendorInfoList // ignore: cast_nullable_to_non_nullable
              as List<ScrapVendorInfo>,
      canUseButtons: null == canUseButtons
          ? _value._canUseButtons
          : canUseButtons // ignore: cast_nullable_to_non_nullable
              as List<VendorItem>,
      canVendorInfo: null == canVendorInfo
          ? _value._canVendorInfo
          : canVendorInfo // ignore: cast_nullable_to_non_nullable
              as List<ScrapVendorInfo>,
      scrapCheckModel: null == scrapCheckModel
          ? _value._scrapCheckModel
          : scrapCheckModel // ignore: cast_nullable_to_non_nullable
              as List<ScrapCheckModel>,
    ));
  }
}

/// @nodoc

class _$_ScrapItemState implements _ScrapItemState {
  _$_ScrapItemState(
      {this.status = BlocStatus.none,
      final List<ScrapVendorInfo> scrapVendorInfoList = const [],
      final List<VendorItem> canUseButtons = const [],
      final List<ScrapVendorInfo> canVendorInfo = const [],
      final List<ScrapCheckModel> scrapCheckModel = const []})
      : _scrapVendorInfoList = scrapVendorInfoList,
        _canUseButtons = canUseButtons,
        _canVendorInfo = canVendorInfo,
        _scrapCheckModel = scrapCheckModel;

  @override
  @JsonKey()
  final BlocStatus status;
  final List<ScrapVendorInfo> _scrapVendorInfoList;
  @override
  @JsonKey()
  List<ScrapVendorInfo> get scrapVendorInfoList {
    if (_scrapVendorInfoList is EqualUnmodifiableListView)
      return _scrapVendorInfoList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_scrapVendorInfoList);
  }

  final List<VendorItem> _canUseButtons;
  @override
  @JsonKey()
  List<VendorItem> get canUseButtons {
    if (_canUseButtons is EqualUnmodifiableListView) return _canUseButtons;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_canUseButtons);
  }

  final List<ScrapVendorInfo> _canVendorInfo;
  @override
  @JsonKey()
  List<ScrapVendorInfo> get canVendorInfo {
    if (_canVendorInfo is EqualUnmodifiableListView) return _canVendorInfo;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_canVendorInfo);
  }

  final List<ScrapCheckModel> _scrapCheckModel;
  @override
  @JsonKey()
  List<ScrapCheckModel> get scrapCheckModel {
    if (_scrapCheckModel is EqualUnmodifiableListView) return _scrapCheckModel;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_scrapCheckModel);
  }

  @override
  String toString() {
    return 'ScrapItemState(status: $status, scrapVendorInfoList: $scrapVendorInfoList, canUseButtons: $canUseButtons, canVendorInfo: $canVendorInfo, scrapCheckModel: $scrapCheckModel)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ScrapItemState &&
            (identical(other.status, status) || other.status == status) &&
            const DeepCollectionEquality()
                .equals(other._scrapVendorInfoList, _scrapVendorInfoList) &&
            const DeepCollectionEquality()
                .equals(other._canUseButtons, _canUseButtons) &&
            const DeepCollectionEquality()
                .equals(other._canVendorInfo, _canVendorInfo) &&
            const DeepCollectionEquality()
                .equals(other._scrapCheckModel, _scrapCheckModel));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      status,
      const DeepCollectionEquality().hash(_scrapVendorInfoList),
      const DeepCollectionEquality().hash(_canUseButtons),
      const DeepCollectionEquality().hash(_canVendorInfo),
      const DeepCollectionEquality().hash(_scrapCheckModel));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ScrapItemStateCopyWith<_$_ScrapItemState> get copyWith =>
      __$$_ScrapItemStateCopyWithImpl<_$_ScrapItemState>(this, _$identity);
}

abstract class _ScrapItemState implements ScrapItemState {
  factory _ScrapItemState(
      {final BlocStatus status,
      final List<ScrapVendorInfo> scrapVendorInfoList,
      final List<VendorItem> canUseButtons,
      final List<ScrapVendorInfo> canVendorInfo,
      final List<ScrapCheckModel> scrapCheckModel}) = _$_ScrapItemState;

  @override
  BlocStatus get status;
  @override
  List<ScrapVendorInfo> get scrapVendorInfoList;
  @override
  List<VendorItem> get canUseButtons;
  @override
  List<ScrapVendorInfo> get canVendorInfo;
  @override
  List<ScrapCheckModel> get scrapCheckModel;
  @override
  @JsonKey(ignore: true)
  _$$_ScrapItemStateCopyWith<_$_ScrapItemState> get copyWith =>
      throw _privateConstructorUsedError;
}
