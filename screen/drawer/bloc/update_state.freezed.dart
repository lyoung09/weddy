// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'update_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$UpdateState {
  BlocStatus get status => throw _privateConstructorUsedError;
  bool? get isSucess => throw _privateConstructorUsedError;
  int get myBudget => throw _privateConstructorUsedError;
  int get totalAmount => throw _privateConstructorUsedError;
  String get oldPassword => throw _privateConstructorUsedError;
  String get newPassword => throw _privateConstructorUsedError;
  List<VendorServiceItem> get services => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $UpdateStateCopyWith<UpdateState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UpdateStateCopyWith<$Res> {
  factory $UpdateStateCopyWith(
          UpdateState value, $Res Function(UpdateState) then) =
      _$UpdateStateCopyWithImpl<$Res, UpdateState>;
  @useResult
  $Res call(
      {BlocStatus status,
      bool? isSucess,
      int myBudget,
      int totalAmount,
      String oldPassword,
      String newPassword,
      List<VendorServiceItem> services});
}

/// @nodoc
class _$UpdateStateCopyWithImpl<$Res, $Val extends UpdateState>
    implements $UpdateStateCopyWith<$Res> {
  _$UpdateStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? isSucess = freezed,
    Object? myBudget = null,
    Object? totalAmount = null,
    Object? oldPassword = null,
    Object? newPassword = null,
    Object? services = null,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as BlocStatus,
      isSucess: freezed == isSucess
          ? _value.isSucess
          : isSucess // ignore: cast_nullable_to_non_nullable
              as bool?,
      myBudget: null == myBudget
          ? _value.myBudget
          : myBudget // ignore: cast_nullable_to_non_nullable
              as int,
      totalAmount: null == totalAmount
          ? _value.totalAmount
          : totalAmount // ignore: cast_nullable_to_non_nullable
              as int,
      oldPassword: null == oldPassword
          ? _value.oldPassword
          : oldPassword // ignore: cast_nullable_to_non_nullable
              as String,
      newPassword: null == newPassword
          ? _value.newPassword
          : newPassword // ignore: cast_nullable_to_non_nullable
              as String,
      services: null == services
          ? _value.services
          : services // ignore: cast_nullable_to_non_nullable
              as List<VendorServiceItem>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_UpdateStateCopyWith<$Res>
    implements $UpdateStateCopyWith<$Res> {
  factory _$$_UpdateStateCopyWith(
          _$_UpdateState value, $Res Function(_$_UpdateState) then) =
      __$$_UpdateStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {BlocStatus status,
      bool? isSucess,
      int myBudget,
      int totalAmount,
      String oldPassword,
      String newPassword,
      List<VendorServiceItem> services});
}

/// @nodoc
class __$$_UpdateStateCopyWithImpl<$Res>
    extends _$UpdateStateCopyWithImpl<$Res, _$_UpdateState>
    implements _$$_UpdateStateCopyWith<$Res> {
  __$$_UpdateStateCopyWithImpl(
      _$_UpdateState _value, $Res Function(_$_UpdateState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? isSucess = freezed,
    Object? myBudget = null,
    Object? totalAmount = null,
    Object? oldPassword = null,
    Object? newPassword = null,
    Object? services = null,
  }) {
    return _then(_$_UpdateState(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as BlocStatus,
      isSucess: freezed == isSucess
          ? _value.isSucess
          : isSucess // ignore: cast_nullable_to_non_nullable
              as bool?,
      myBudget: null == myBudget
          ? _value.myBudget
          : myBudget // ignore: cast_nullable_to_non_nullable
              as int,
      totalAmount: null == totalAmount
          ? _value.totalAmount
          : totalAmount // ignore: cast_nullable_to_non_nullable
              as int,
      oldPassword: null == oldPassword
          ? _value.oldPassword
          : oldPassword // ignore: cast_nullable_to_non_nullable
              as String,
      newPassword: null == newPassword
          ? _value.newPassword
          : newPassword // ignore: cast_nullable_to_non_nullable
              as String,
      services: null == services
          ? _value._services
          : services // ignore: cast_nullable_to_non_nullable
              as List<VendorServiceItem>,
    ));
  }
}

/// @nodoc

class _$_UpdateState implements _UpdateState {
  _$_UpdateState(
      {this.status = BlocStatus.none,
      this.isSucess,
      this.myBudget = 0,
      this.totalAmount = 0,
      this.oldPassword = '',
      this.newPassword = '',
      final List<VendorServiceItem> services = const []})
      : _services = services;

  @override
  @JsonKey()
  final BlocStatus status;
  @override
  final bool? isSucess;
  @override
  @JsonKey()
  final int myBudget;
  @override
  @JsonKey()
  final int totalAmount;
  @override
  @JsonKey()
  final String oldPassword;
  @override
  @JsonKey()
  final String newPassword;
  final List<VendorServiceItem> _services;
  @override
  @JsonKey()
  List<VendorServiceItem> get services {
    if (_services is EqualUnmodifiableListView) return _services;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_services);
  }

  @override
  String toString() {
    return 'UpdateState(status: $status, isSucess: $isSucess, myBudget: $myBudget, totalAmount: $totalAmount, oldPassword: $oldPassword, newPassword: $newPassword, services: $services)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UpdateState &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.isSucess, isSucess) ||
                other.isSucess == isSucess) &&
            (identical(other.myBudget, myBudget) ||
                other.myBudget == myBudget) &&
            (identical(other.totalAmount, totalAmount) ||
                other.totalAmount == totalAmount) &&
            (identical(other.oldPassword, oldPassword) ||
                other.oldPassword == oldPassword) &&
            (identical(other.newPassword, newPassword) ||
                other.newPassword == newPassword) &&
            const DeepCollectionEquality().equals(other._services, _services));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      status,
      isSucess,
      myBudget,
      totalAmount,
      oldPassword,
      newPassword,
      const DeepCollectionEquality().hash(_services));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_UpdateStateCopyWith<_$_UpdateState> get copyWith =>
      __$$_UpdateStateCopyWithImpl<_$_UpdateState>(this, _$identity);
}

abstract class _UpdateState implements UpdateState {
  factory _UpdateState(
      {final BlocStatus status,
      final bool? isSucess,
      final int myBudget,
      final int totalAmount,
      final String oldPassword,
      final String newPassword,
      final List<VendorServiceItem> services}) = _$_UpdateState;

  @override
  BlocStatus get status;
  @override
  bool? get isSucess;
  @override
  int get myBudget;
  @override
  int get totalAmount;
  @override
  String get oldPassword;
  @override
  String get newPassword;
  @override
  List<VendorServiceItem> get services;
  @override
  @JsonKey(ignore: true)
  _$$_UpdateStateCopyWith<_$_UpdateState> get copyWith =>
      throw _privateConstructorUsedError;
}
