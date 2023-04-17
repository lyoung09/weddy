// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'inquire_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$InquireState {
  BlocStatus get status => throw _privateConstructorUsedError;
  List<UserConsultingInfo> get userConsultingInfo =>
      throw _privateConstructorUsedError;
  List<CategoryModel> get categoryList => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $InquireStateCopyWith<InquireState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InquireStateCopyWith<$Res> {
  factory $InquireStateCopyWith(
          InquireState value, $Res Function(InquireState) then) =
      _$InquireStateCopyWithImpl<$Res, InquireState>;
  @useResult
  $Res call(
      {BlocStatus status,
      List<UserConsultingInfo> userConsultingInfo,
      List<CategoryModel> categoryList});
}

/// @nodoc
class _$InquireStateCopyWithImpl<$Res, $Val extends InquireState>
    implements $InquireStateCopyWith<$Res> {
  _$InquireStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? userConsultingInfo = null,
    Object? categoryList = null,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as BlocStatus,
      userConsultingInfo: null == userConsultingInfo
          ? _value.userConsultingInfo
          : userConsultingInfo // ignore: cast_nullable_to_non_nullable
              as List<UserConsultingInfo>,
      categoryList: null == categoryList
          ? _value.categoryList
          : categoryList // ignore: cast_nullable_to_non_nullable
              as List<CategoryModel>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_InquireStateCopyWith<$Res>
    implements $InquireStateCopyWith<$Res> {
  factory _$$_InquireStateCopyWith(
          _$_InquireState value, $Res Function(_$_InquireState) then) =
      __$$_InquireStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {BlocStatus status,
      List<UserConsultingInfo> userConsultingInfo,
      List<CategoryModel> categoryList});
}

/// @nodoc
class __$$_InquireStateCopyWithImpl<$Res>
    extends _$InquireStateCopyWithImpl<$Res, _$_InquireState>
    implements _$$_InquireStateCopyWith<$Res> {
  __$$_InquireStateCopyWithImpl(
      _$_InquireState _value, $Res Function(_$_InquireState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? userConsultingInfo = null,
    Object? categoryList = null,
  }) {
    return _then(_$_InquireState(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as BlocStatus,
      userConsultingInfo: null == userConsultingInfo
          ? _value._userConsultingInfo
          : userConsultingInfo // ignore: cast_nullable_to_non_nullable
              as List<UserConsultingInfo>,
      categoryList: null == categoryList
          ? _value._categoryList
          : categoryList // ignore: cast_nullable_to_non_nullable
              as List<CategoryModel>,
    ));
  }
}

/// @nodoc

class _$_InquireState implements _InquireState {
  _$_InquireState(
      {this.status = BlocStatus.none,
      final List<UserConsultingInfo> userConsultingInfo = const [],
      final List<CategoryModel> categoryList = const []})
      : _userConsultingInfo = userConsultingInfo,
        _categoryList = categoryList;

  @override
  @JsonKey()
  final BlocStatus status;
  final List<UserConsultingInfo> _userConsultingInfo;
  @override
  @JsonKey()
  List<UserConsultingInfo> get userConsultingInfo {
    if (_userConsultingInfo is EqualUnmodifiableListView)
      return _userConsultingInfo;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_userConsultingInfo);
  }

  final List<CategoryModel> _categoryList;
  @override
  @JsonKey()
  List<CategoryModel> get categoryList {
    if (_categoryList is EqualUnmodifiableListView) return _categoryList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_categoryList);
  }

  @override
  String toString() {
    return 'InquireState(status: $status, userConsultingInfo: $userConsultingInfo, categoryList: $categoryList)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_InquireState &&
            (identical(other.status, status) || other.status == status) &&
            const DeepCollectionEquality()
                .equals(other._userConsultingInfo, _userConsultingInfo) &&
            const DeepCollectionEquality()
                .equals(other._categoryList, _categoryList));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      status,
      const DeepCollectionEquality().hash(_userConsultingInfo),
      const DeepCollectionEquality().hash(_categoryList));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_InquireStateCopyWith<_$_InquireState> get copyWith =>
      __$$_InquireStateCopyWithImpl<_$_InquireState>(this, _$identity);
}

abstract class _InquireState implements InquireState {
  factory _InquireState(
      {final BlocStatus status,
      final List<UserConsultingInfo> userConsultingInfo,
      final List<CategoryModel> categoryList}) = _$_InquireState;

  @override
  BlocStatus get status;
  @override
  List<UserConsultingInfo> get userConsultingInfo;
  @override
  List<CategoryModel> get categoryList;
  @override
  @JsonKey(ignore: true)
  _$$_InquireStateCopyWith<_$_InquireState> get copyWith =>
      throw _privateConstructorUsedError;
}
