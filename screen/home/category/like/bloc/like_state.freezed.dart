// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'like_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$LikeListState {
  BlocStatus get status => throw _privateConstructorUsedError;
  List<Bookmark> get likeList => throw _privateConstructorUsedError;
  List<CategoryModel> get categoryList => throw _privateConstructorUsedError;
  Map<int, bool> get listLike => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $LikeListStateCopyWith<LikeListState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LikeListStateCopyWith<$Res> {
  factory $LikeListStateCopyWith(
          LikeListState value, $Res Function(LikeListState) then) =
      _$LikeListStateCopyWithImpl<$Res, LikeListState>;
  @useResult
  $Res call(
      {BlocStatus status,
      List<Bookmark> likeList,
      List<CategoryModel> categoryList,
      Map<int, bool> listLike});
}

/// @nodoc
class _$LikeListStateCopyWithImpl<$Res, $Val extends LikeListState>
    implements $LikeListStateCopyWith<$Res> {
  _$LikeListStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? likeList = null,
    Object? categoryList = null,
    Object? listLike = null,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as BlocStatus,
      likeList: null == likeList
          ? _value.likeList
          : likeList // ignore: cast_nullable_to_non_nullable
              as List<Bookmark>,
      categoryList: null == categoryList
          ? _value.categoryList
          : categoryList // ignore: cast_nullable_to_non_nullable
              as List<CategoryModel>,
      listLike: null == listLike
          ? _value.listLike
          : listLike // ignore: cast_nullable_to_non_nullable
              as Map<int, bool>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_LikeListStateCopyWith<$Res>
    implements $LikeListStateCopyWith<$Res> {
  factory _$$_LikeListStateCopyWith(
          _$_LikeListState value, $Res Function(_$_LikeListState) then) =
      __$$_LikeListStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {BlocStatus status,
      List<Bookmark> likeList,
      List<CategoryModel> categoryList,
      Map<int, bool> listLike});
}

/// @nodoc
class __$$_LikeListStateCopyWithImpl<$Res>
    extends _$LikeListStateCopyWithImpl<$Res, _$_LikeListState>
    implements _$$_LikeListStateCopyWith<$Res> {
  __$$_LikeListStateCopyWithImpl(
      _$_LikeListState _value, $Res Function(_$_LikeListState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? likeList = null,
    Object? categoryList = null,
    Object? listLike = null,
  }) {
    return _then(_$_LikeListState(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as BlocStatus,
      likeList: null == likeList
          ? _value._likeList
          : likeList // ignore: cast_nullable_to_non_nullable
              as List<Bookmark>,
      categoryList: null == categoryList
          ? _value._categoryList
          : categoryList // ignore: cast_nullable_to_non_nullable
              as List<CategoryModel>,
      listLike: null == listLike
          ? _value._listLike
          : listLike // ignore: cast_nullable_to_non_nullable
              as Map<int, bool>,
    ));
  }
}

/// @nodoc

class _$_LikeListState implements _LikeListState {
  _$_LikeListState(
      {this.status = BlocStatus.none,
      final List<Bookmark> likeList = const [],
      final List<CategoryModel> categoryList = const [],
      final Map<int, bool> listLike = const {}})
      : _likeList = likeList,
        _categoryList = categoryList,
        _listLike = listLike;

  @override
  @JsonKey()
  final BlocStatus status;
  final List<Bookmark> _likeList;
  @override
  @JsonKey()
  List<Bookmark> get likeList {
    if (_likeList is EqualUnmodifiableListView) return _likeList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_likeList);
  }

  final List<CategoryModel> _categoryList;
  @override
  @JsonKey()
  List<CategoryModel> get categoryList {
    if (_categoryList is EqualUnmodifiableListView) return _categoryList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_categoryList);
  }

  final Map<int, bool> _listLike;
  @override
  @JsonKey()
  Map<int, bool> get listLike {
    if (_listLike is EqualUnmodifiableMapView) return _listLike;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_listLike);
  }

  @override
  String toString() {
    return 'LikeListState(status: $status, likeList: $likeList, categoryList: $categoryList, listLike: $listLike)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LikeListState &&
            (identical(other.status, status) || other.status == status) &&
            const DeepCollectionEquality().equals(other._likeList, _likeList) &&
            const DeepCollectionEquality()
                .equals(other._categoryList, _categoryList) &&
            const DeepCollectionEquality().equals(other._listLike, _listLike));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      status,
      const DeepCollectionEquality().hash(_likeList),
      const DeepCollectionEquality().hash(_categoryList),
      const DeepCollectionEquality().hash(_listLike));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LikeListStateCopyWith<_$_LikeListState> get copyWith =>
      __$$_LikeListStateCopyWithImpl<_$_LikeListState>(this, _$identity);
}

abstract class _LikeListState implements LikeListState {
  factory _LikeListState(
      {final BlocStatus status,
      final List<Bookmark> likeList,
      final List<CategoryModel> categoryList,
      final Map<int, bool> listLike}) = _$_LikeListState;

  @override
  BlocStatus get status;
  @override
  List<Bookmark> get likeList;
  @override
  List<CategoryModel> get categoryList;
  @override
  Map<int, bool> get listLike;
  @override
  @JsonKey(ignore: true)
  _$$_LikeListStateCopyWith<_$_LikeListState> get copyWith =>
      throw _privateConstructorUsedError;
}
