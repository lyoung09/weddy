// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'dress_showroom_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$DressShowroomState {
  BlocStatus get status => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $DressShowroomStateCopyWith<DressShowroomState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DressShowroomStateCopyWith<$Res> {
  factory $DressShowroomStateCopyWith(
          DressShowroomState value, $Res Function(DressShowroomState) then) =
      _$DressShowroomStateCopyWithImpl<$Res, DressShowroomState>;
  @useResult
  $Res call({BlocStatus status});
}

/// @nodoc
class _$DressShowroomStateCopyWithImpl<$Res, $Val extends DressShowroomState>
    implements $DressShowroomStateCopyWith<$Res> {
  _$DressShowroomStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as BlocStatus,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_DressShowroomStateCopyWith<$Res>
    implements $DressShowroomStateCopyWith<$Res> {
  factory _$$_DressShowroomStateCopyWith(_$_DressShowroomState value,
          $Res Function(_$_DressShowroomState) then) =
      __$$_DressShowroomStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({BlocStatus status});
}

/// @nodoc
class __$$_DressShowroomStateCopyWithImpl<$Res>
    extends _$DressShowroomStateCopyWithImpl<$Res, _$_DressShowroomState>
    implements _$$_DressShowroomStateCopyWith<$Res> {
  __$$_DressShowroomStateCopyWithImpl(
      _$_DressShowroomState _value, $Res Function(_$_DressShowroomState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
  }) {
    return _then(_$_DressShowroomState(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as BlocStatus,
    ));
  }
}

/// @nodoc

class _$_DressShowroomState implements _DressShowroomState {
  _$_DressShowroomState({this.status = BlocStatus.none});

  @override
  @JsonKey()
  final BlocStatus status;

  @override
  String toString() {
    return 'DressShowroomState(status: $status)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DressShowroomState &&
            (identical(other.status, status) || other.status == status));
  }

  @override
  int get hashCode => Object.hash(runtimeType, status);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DressShowroomStateCopyWith<_$_DressShowroomState> get copyWith =>
      __$$_DressShowroomStateCopyWithImpl<_$_DressShowroomState>(
          this, _$identity);
}

abstract class _DressShowroomState implements DressShowroomState {
  factory _DressShowroomState({final BlocStatus status}) =
      _$_DressShowroomState;

  @override
  BlocStatus get status;
  @override
  @JsonKey(ignore: true)
  _$$_DressShowroomStateCopyWith<_$_DressShowroomState> get copyWith =>
      throw _privateConstructorUsedError;
}
