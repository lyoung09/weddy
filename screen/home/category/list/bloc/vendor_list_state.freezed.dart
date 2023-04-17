// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'vendor_list_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$VendorListState {
  BlocStatus get status => throw _privateConstructorUsedError;
  List<SearchVendorProfile> get searchVendorProfileList =>
      throw _privateConstructorUsedError;
  String get searchText => throw _privateConstructorUsedError;
  int get toggle => throw _privateConstructorUsedError;
  int get filterNum => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $VendorListStateCopyWith<VendorListState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VendorListStateCopyWith<$Res> {
  factory $VendorListStateCopyWith(
          VendorListState value, $Res Function(VendorListState) then) =
      _$VendorListStateCopyWithImpl<$Res, VendorListState>;
  @useResult
  $Res call(
      {BlocStatus status,
      List<SearchVendorProfile> searchVendorProfileList,
      String searchText,
      int toggle,
      int filterNum});
}

/// @nodoc
class _$VendorListStateCopyWithImpl<$Res, $Val extends VendorListState>
    implements $VendorListStateCopyWith<$Res> {
  _$VendorListStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? searchVendorProfileList = null,
    Object? searchText = null,
    Object? toggle = null,
    Object? filterNum = null,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as BlocStatus,
      searchVendorProfileList: null == searchVendorProfileList
          ? _value.searchVendorProfileList
          : searchVendorProfileList // ignore: cast_nullable_to_non_nullable
              as List<SearchVendorProfile>,
      searchText: null == searchText
          ? _value.searchText
          : searchText // ignore: cast_nullable_to_non_nullable
              as String,
      toggle: null == toggle
          ? _value.toggle
          : toggle // ignore: cast_nullable_to_non_nullable
              as int,
      filterNum: null == filterNum
          ? _value.filterNum
          : filterNum // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_VendorListStateCopyWith<$Res>
    implements $VendorListStateCopyWith<$Res> {
  factory _$$_VendorListStateCopyWith(
          _$_VendorListState value, $Res Function(_$_VendorListState) then) =
      __$$_VendorListStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {BlocStatus status,
      List<SearchVendorProfile> searchVendorProfileList,
      String searchText,
      int toggle,
      int filterNum});
}

/// @nodoc
class __$$_VendorListStateCopyWithImpl<$Res>
    extends _$VendorListStateCopyWithImpl<$Res, _$_VendorListState>
    implements _$$_VendorListStateCopyWith<$Res> {
  __$$_VendorListStateCopyWithImpl(
      _$_VendorListState _value, $Res Function(_$_VendorListState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? searchVendorProfileList = null,
    Object? searchText = null,
    Object? toggle = null,
    Object? filterNum = null,
  }) {
    return _then(_$_VendorListState(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as BlocStatus,
      searchVendorProfileList: null == searchVendorProfileList
          ? _value._searchVendorProfileList
          : searchVendorProfileList // ignore: cast_nullable_to_non_nullable
              as List<SearchVendorProfile>,
      searchText: null == searchText
          ? _value.searchText
          : searchText // ignore: cast_nullable_to_non_nullable
              as String,
      toggle: null == toggle
          ? _value.toggle
          : toggle // ignore: cast_nullable_to_non_nullable
              as int,
      filterNum: null == filterNum
          ? _value.filterNum
          : filterNum // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_VendorListState implements _VendorListState {
  _$_VendorListState(
      {this.status = BlocStatus.none,
      final List<SearchVendorProfile> searchVendorProfileList = const [],
      this.searchText = '',
      this.toggle = 0,
      this.filterNum = 0})
      : _searchVendorProfileList = searchVendorProfileList;

  @override
  @JsonKey()
  final BlocStatus status;
  final List<SearchVendorProfile> _searchVendorProfileList;
  @override
  @JsonKey()
  List<SearchVendorProfile> get searchVendorProfileList {
    if (_searchVendorProfileList is EqualUnmodifiableListView)
      return _searchVendorProfileList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_searchVendorProfileList);
  }

  @override
  @JsonKey()
  final String searchText;
  @override
  @JsonKey()
  final int toggle;
  @override
  @JsonKey()
  final int filterNum;

  @override
  String toString() {
    return 'VendorListState(status: $status, searchVendorProfileList: $searchVendorProfileList, searchText: $searchText, toggle: $toggle, filterNum: $filterNum)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_VendorListState &&
            (identical(other.status, status) || other.status == status) &&
            const DeepCollectionEquality().equals(
                other._searchVendorProfileList, _searchVendorProfileList) &&
            (identical(other.searchText, searchText) ||
                other.searchText == searchText) &&
            (identical(other.toggle, toggle) || other.toggle == toggle) &&
            (identical(other.filterNum, filterNum) ||
                other.filterNum == filterNum));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      status,
      const DeepCollectionEquality().hash(_searchVendorProfileList),
      searchText,
      toggle,
      filterNum);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_VendorListStateCopyWith<_$_VendorListState> get copyWith =>
      __$$_VendorListStateCopyWithImpl<_$_VendorListState>(this, _$identity);
}

abstract class _VendorListState implements VendorListState {
  factory _VendorListState(
      {final BlocStatus status,
      final List<SearchVendorProfile> searchVendorProfileList,
      final String searchText,
      final int toggle,
      final int filterNum}) = _$_VendorListState;

  @override
  BlocStatus get status;
  @override
  List<SearchVendorProfile> get searchVendorProfileList;
  @override
  String get searchText;
  @override
  int get toggle;
  @override
  int get filterNum;
  @override
  @JsonKey(ignore: true)
  _$$_VendorListStateCopyWith<_$_VendorListState> get copyWith =>
      throw _privateConstructorUsedError;
}
