// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'dress_detail_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$DressDetailState {
  BlocStatus get status => throw _privateConstructorUsedError;
  GetVendorDressImageInfoResponse? get dressDetail =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $DressDetailStateCopyWith<DressDetailState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DressDetailStateCopyWith<$Res> {
  factory $DressDetailStateCopyWith(
          DressDetailState value, $Res Function(DressDetailState) then) =
      _$DressDetailStateCopyWithImpl<$Res, DressDetailState>;
  @useResult
  $Res call({BlocStatus status, GetVendorDressImageInfoResponse? dressDetail});
}

/// @nodoc
class _$DressDetailStateCopyWithImpl<$Res, $Val extends DressDetailState>
    implements $DressDetailStateCopyWith<$Res> {
  _$DressDetailStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? dressDetail = freezed,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as BlocStatus,
      dressDetail: freezed == dressDetail
          ? _value.dressDetail
          : dressDetail // ignore: cast_nullable_to_non_nullable
              as GetVendorDressImageInfoResponse?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_DressDetailStateCopyWith<$Res>
    implements $DressDetailStateCopyWith<$Res> {
  factory _$$_DressDetailStateCopyWith(
          _$_DressDetailState value, $Res Function(_$_DressDetailState) then) =
      __$$_DressDetailStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({BlocStatus status, GetVendorDressImageInfoResponse? dressDetail});
}

/// @nodoc
class __$$_DressDetailStateCopyWithImpl<$Res>
    extends _$DressDetailStateCopyWithImpl<$Res, _$_DressDetailState>
    implements _$$_DressDetailStateCopyWith<$Res> {
  __$$_DressDetailStateCopyWithImpl(
      _$_DressDetailState _value, $Res Function(_$_DressDetailState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? dressDetail = freezed,
  }) {
    return _then(_$_DressDetailState(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as BlocStatus,
      dressDetail: freezed == dressDetail
          ? _value.dressDetail
          : dressDetail // ignore: cast_nullable_to_non_nullable
              as GetVendorDressImageInfoResponse?,
    ));
  }
}

/// @nodoc

class _$_DressDetailState implements _DressDetailState {
  _$_DressDetailState({this.status = BlocStatus.none, this.dressDetail});

  @override
  @JsonKey()
  final BlocStatus status;
  @override
  final GetVendorDressImageInfoResponse? dressDetail;

  @override
  String toString() {
    return 'DressDetailState(status: $status, dressDetail: $dressDetail)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DressDetailState &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.dressDetail, dressDetail) ||
                other.dressDetail == dressDetail));
  }

  @override
  int get hashCode => Object.hash(runtimeType, status, dressDetail);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DressDetailStateCopyWith<_$_DressDetailState> get copyWith =>
      __$$_DressDetailStateCopyWithImpl<_$_DressDetailState>(this, _$identity);
}

abstract class _DressDetailState implements DressDetailState {
  factory _DressDetailState(
          {final BlocStatus status,
          final GetVendorDressImageInfoResponse? dressDetail}) =
      _$_DressDetailState;

  @override
  BlocStatus get status;
  @override
  GetVendorDressImageInfoResponse? get dressDetail;
  @override
  @JsonKey(ignore: true)
  _$$_DressDetailStateCopyWith<_$_DressDetailState> get copyWith =>
      throw _privateConstructorUsedError;
}
