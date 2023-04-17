// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'product_detail_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ProductDetailState {
  BlocStatus get status => throw _privateConstructorUsedError;
  VendorServiceDetail? get data => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ProductDetailStateCopyWith<ProductDetailState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductDetailStateCopyWith<$Res> {
  factory $ProductDetailStateCopyWith(
          ProductDetailState value, $Res Function(ProductDetailState) then) =
      _$ProductDetailStateCopyWithImpl<$Res, ProductDetailState>;
  @useResult
  $Res call({BlocStatus status, VendorServiceDetail? data});
}

/// @nodoc
class _$ProductDetailStateCopyWithImpl<$Res, $Val extends ProductDetailState>
    implements $ProductDetailStateCopyWith<$Res> {
  _$ProductDetailStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? data = freezed,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as BlocStatus,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as VendorServiceDetail?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ProductDetailStateCopyWith<$Res>
    implements $ProductDetailStateCopyWith<$Res> {
  factory _$$_ProductDetailStateCopyWith(_$_ProductDetailState value,
          $Res Function(_$_ProductDetailState) then) =
      __$$_ProductDetailStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({BlocStatus status, VendorServiceDetail? data});
}

/// @nodoc
class __$$_ProductDetailStateCopyWithImpl<$Res>
    extends _$ProductDetailStateCopyWithImpl<$Res, _$_ProductDetailState>
    implements _$$_ProductDetailStateCopyWith<$Res> {
  __$$_ProductDetailStateCopyWithImpl(
      _$_ProductDetailState _value, $Res Function(_$_ProductDetailState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? data = freezed,
  }) {
    return _then(_$_ProductDetailState(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as BlocStatus,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as VendorServiceDetail?,
    ));
  }
}

/// @nodoc

class _$_ProductDetailState implements _ProductDetailState {
  _$_ProductDetailState({this.status = BlocStatus.none, this.data});

  @override
  @JsonKey()
  final BlocStatus status;
  @override
  final VendorServiceDetail? data;

  @override
  String toString() {
    return 'ProductDetailState(status: $status, data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ProductDetailState &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.data, data) || other.data == data));
  }

  @override
  int get hashCode => Object.hash(runtimeType, status, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ProductDetailStateCopyWith<_$_ProductDetailState> get copyWith =>
      __$$_ProductDetailStateCopyWithImpl<_$_ProductDetailState>(
          this, _$identity);
}

abstract class _ProductDetailState implements ProductDetailState {
  factory _ProductDetailState(
      {final BlocStatus status,
      final VendorServiceDetail? data}) = _$_ProductDetailState;

  @override
  BlocStatus get status;
  @override
  VendorServiceDetail? get data;
  @override
  @JsonKey(ignore: true)
  _$$_ProductDetailStateCopyWith<_$_ProductDetailState> get copyWith =>
      throw _privateConstructorUsedError;
}
