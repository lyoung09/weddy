// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'category_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$CategoryState {
  BlocStatus get status => throw _privateConstructorUsedError;
  VendorCategoryCustom get categories => throw _privateConstructorUsedError;
  List<CategoryModel> get vendorCategoryList =>
      throw _privateConstructorUsedError;
  String get searchText => throw _privateConstructorUsedError;
  GetVendorCategoryResponse? get getVendorCategoryResponse =>
      throw _privateConstructorUsedError;
  List<SearchVendorProfile> get searchVendorProfile =>
      throw _privateConstructorUsedError;
  int get historyIndex => throw _privateConstructorUsedError;
  UserProfile? get user => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CategoryStateCopyWith<CategoryState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CategoryStateCopyWith<$Res> {
  factory $CategoryStateCopyWith(
          CategoryState value, $Res Function(CategoryState) then) =
      _$CategoryStateCopyWithImpl<$Res, CategoryState>;
  @useResult
  $Res call(
      {BlocStatus status,
      VendorCategoryCustom categories,
      List<CategoryModel> vendorCategoryList,
      String searchText,
      GetVendorCategoryResponse? getVendorCategoryResponse,
      List<SearchVendorProfile> searchVendorProfile,
      int historyIndex,
      UserProfile? user});
}

/// @nodoc
class _$CategoryStateCopyWithImpl<$Res, $Val extends CategoryState>
    implements $CategoryStateCopyWith<$Res> {
  _$CategoryStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? categories = null,
    Object? vendorCategoryList = null,
    Object? searchText = null,
    Object? getVendorCategoryResponse = freezed,
    Object? searchVendorProfile = null,
    Object? historyIndex = null,
    Object? user = freezed,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as BlocStatus,
      categories: null == categories
          ? _value.categories
          : categories // ignore: cast_nullable_to_non_nullable
              as VendorCategoryCustom,
      vendorCategoryList: null == vendorCategoryList
          ? _value.vendorCategoryList
          : vendorCategoryList // ignore: cast_nullable_to_non_nullable
              as List<CategoryModel>,
      searchText: null == searchText
          ? _value.searchText
          : searchText // ignore: cast_nullable_to_non_nullable
              as String,
      getVendorCategoryResponse: freezed == getVendorCategoryResponse
          ? _value.getVendorCategoryResponse
          : getVendorCategoryResponse // ignore: cast_nullable_to_non_nullable
              as GetVendorCategoryResponse?,
      searchVendorProfile: null == searchVendorProfile
          ? _value.searchVendorProfile
          : searchVendorProfile // ignore: cast_nullable_to_non_nullable
              as List<SearchVendorProfile>,
      historyIndex: null == historyIndex
          ? _value.historyIndex
          : historyIndex // ignore: cast_nullable_to_non_nullable
              as int,
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserProfile?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_CategoryStateCopyWith<$Res>
    implements $CategoryStateCopyWith<$Res> {
  factory _$$_CategoryStateCopyWith(
          _$_CategoryState value, $Res Function(_$_CategoryState) then) =
      __$$_CategoryStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {BlocStatus status,
      VendorCategoryCustom categories,
      List<CategoryModel> vendorCategoryList,
      String searchText,
      GetVendorCategoryResponse? getVendorCategoryResponse,
      List<SearchVendorProfile> searchVendorProfile,
      int historyIndex,
      UserProfile? user});
}

/// @nodoc
class __$$_CategoryStateCopyWithImpl<$Res>
    extends _$CategoryStateCopyWithImpl<$Res, _$_CategoryState>
    implements _$$_CategoryStateCopyWith<$Res> {
  __$$_CategoryStateCopyWithImpl(
      _$_CategoryState _value, $Res Function(_$_CategoryState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? categories = null,
    Object? vendorCategoryList = null,
    Object? searchText = null,
    Object? getVendorCategoryResponse = freezed,
    Object? searchVendorProfile = null,
    Object? historyIndex = null,
    Object? user = freezed,
  }) {
    return _then(_$_CategoryState(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as BlocStatus,
      categories: null == categories
          ? _value.categories
          : categories // ignore: cast_nullable_to_non_nullable
              as VendorCategoryCustom,
      vendorCategoryList: null == vendorCategoryList
          ? _value._vendorCategoryList
          : vendorCategoryList // ignore: cast_nullable_to_non_nullable
              as List<CategoryModel>,
      searchText: null == searchText
          ? _value.searchText
          : searchText // ignore: cast_nullable_to_non_nullable
              as String,
      getVendorCategoryResponse: freezed == getVendorCategoryResponse
          ? _value.getVendorCategoryResponse
          : getVendorCategoryResponse // ignore: cast_nullable_to_non_nullable
              as GetVendorCategoryResponse?,
      searchVendorProfile: null == searchVendorProfile
          ? _value._searchVendorProfile
          : searchVendorProfile // ignore: cast_nullable_to_non_nullable
              as List<SearchVendorProfile>,
      historyIndex: null == historyIndex
          ? _value.historyIndex
          : historyIndex // ignore: cast_nullable_to_non_nullable
              as int,
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserProfile?,
    ));
  }
}

/// @nodoc

class _$_CategoryState implements _CategoryState {
  _$_CategoryState(
      {this.status = BlocStatus.none,
      this.categories = const VendorCategoryCustom([], []),
      final List<CategoryModel> vendorCategoryList = const [],
      this.searchText = '',
      this.getVendorCategoryResponse,
      final List<SearchVendorProfile> searchVendorProfile = const [],
      this.historyIndex = 0,
      this.user})
      : _vendorCategoryList = vendorCategoryList,
        _searchVendorProfile = searchVendorProfile;

  @override
  @JsonKey()
  final BlocStatus status;
  @override
  @JsonKey()
  final VendorCategoryCustom categories;
  final List<CategoryModel> _vendorCategoryList;
  @override
  @JsonKey()
  List<CategoryModel> get vendorCategoryList {
    if (_vendorCategoryList is EqualUnmodifiableListView)
      return _vendorCategoryList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_vendorCategoryList);
  }

  @override
  @JsonKey()
  final String searchText;
  @override
  final GetVendorCategoryResponse? getVendorCategoryResponse;
  final List<SearchVendorProfile> _searchVendorProfile;
  @override
  @JsonKey()
  List<SearchVendorProfile> get searchVendorProfile {
    if (_searchVendorProfile is EqualUnmodifiableListView)
      return _searchVendorProfile;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_searchVendorProfile);
  }

  @override
  @JsonKey()
  final int historyIndex;
  @override
  final UserProfile? user;

  @override
  String toString() {
    return 'CategoryState(status: $status, categories: $categories, vendorCategoryList: $vendorCategoryList, searchText: $searchText, getVendorCategoryResponse: $getVendorCategoryResponse, searchVendorProfile: $searchVendorProfile, historyIndex: $historyIndex, user: $user)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CategoryState &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.categories, categories) ||
                other.categories == categories) &&
            const DeepCollectionEquality()
                .equals(other._vendorCategoryList, _vendorCategoryList) &&
            (identical(other.searchText, searchText) ||
                other.searchText == searchText) &&
            (identical(other.getVendorCategoryResponse,
                    getVendorCategoryResponse) ||
                other.getVendorCategoryResponse == getVendorCategoryResponse) &&
            const DeepCollectionEquality()
                .equals(other._searchVendorProfile, _searchVendorProfile) &&
            (identical(other.historyIndex, historyIndex) ||
                other.historyIndex == historyIndex) &&
            (identical(other.user, user) || other.user == user));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      status,
      categories,
      const DeepCollectionEquality().hash(_vendorCategoryList),
      searchText,
      getVendorCategoryResponse,
      const DeepCollectionEquality().hash(_searchVendorProfile),
      historyIndex,
      user);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CategoryStateCopyWith<_$_CategoryState> get copyWith =>
      __$$_CategoryStateCopyWithImpl<_$_CategoryState>(this, _$identity);
}

abstract class _CategoryState implements CategoryState {
  factory _CategoryState(
      {final BlocStatus status,
      final VendorCategoryCustom categories,
      final List<CategoryModel> vendorCategoryList,
      final String searchText,
      final GetVendorCategoryResponse? getVendorCategoryResponse,
      final List<SearchVendorProfile> searchVendorProfile,
      final int historyIndex,
      final UserProfile? user}) = _$_CategoryState;

  @override
  BlocStatus get status;
  @override
  VendorCategoryCustom get categories;
  @override
  List<CategoryModel> get vendorCategoryList;
  @override
  String get searchText;
  @override
  GetVendorCategoryResponse? get getVendorCategoryResponse;
  @override
  List<SearchVendorProfile> get searchVendorProfile;
  @override
  int get historyIndex;
  @override
  UserProfile? get user;
  @override
  @JsonKey(ignore: true)
  _$$_CategoryStateCopyWith<_$_CategoryState> get copyWith =>
      throw _privateConstructorUsedError;
}
