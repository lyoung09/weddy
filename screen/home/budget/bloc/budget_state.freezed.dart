// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'budget_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$BudgetState {
  BlocStatus get status => throw _privateConstructorUsedError;
  int get myBudget => throw _privateConstructorUsedError;
  int get totalAmount => throw _privateConstructorUsedError;
  List<VendorServiceItem> get services => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $BudgetStateCopyWith<BudgetState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BudgetStateCopyWith<$Res> {
  factory $BudgetStateCopyWith(
          BudgetState value, $Res Function(BudgetState) then) =
      _$BudgetStateCopyWithImpl<$Res, BudgetState>;
  @useResult
  $Res call(
      {BlocStatus status,
      int myBudget,
      int totalAmount,
      List<VendorServiceItem> services});
}

/// @nodoc
class _$BudgetStateCopyWithImpl<$Res, $Val extends BudgetState>
    implements $BudgetStateCopyWith<$Res> {
  _$BudgetStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? myBudget = null,
    Object? totalAmount = null,
    Object? services = null,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as BlocStatus,
      myBudget: null == myBudget
          ? _value.myBudget
          : myBudget // ignore: cast_nullable_to_non_nullable
              as int,
      totalAmount: null == totalAmount
          ? _value.totalAmount
          : totalAmount // ignore: cast_nullable_to_non_nullable
              as int,
      services: null == services
          ? _value.services
          : services // ignore: cast_nullable_to_non_nullable
              as List<VendorServiceItem>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_BudgetStateCopyWith<$Res>
    implements $BudgetStateCopyWith<$Res> {
  factory _$$_BudgetStateCopyWith(
          _$_BudgetState value, $Res Function(_$_BudgetState) then) =
      __$$_BudgetStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {BlocStatus status,
      int myBudget,
      int totalAmount,
      List<VendorServiceItem> services});
}

/// @nodoc
class __$$_BudgetStateCopyWithImpl<$Res>
    extends _$BudgetStateCopyWithImpl<$Res, _$_BudgetState>
    implements _$$_BudgetStateCopyWith<$Res> {
  __$$_BudgetStateCopyWithImpl(
      _$_BudgetState _value, $Res Function(_$_BudgetState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? myBudget = null,
    Object? totalAmount = null,
    Object? services = null,
  }) {
    return _then(_$_BudgetState(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as BlocStatus,
      myBudget: null == myBudget
          ? _value.myBudget
          : myBudget // ignore: cast_nullable_to_non_nullable
              as int,
      totalAmount: null == totalAmount
          ? _value.totalAmount
          : totalAmount // ignore: cast_nullable_to_non_nullable
              as int,
      services: null == services
          ? _value._services
          : services // ignore: cast_nullable_to_non_nullable
              as List<VendorServiceItem>,
    ));
  }
}

/// @nodoc

class _$_BudgetState implements _BudgetState {
  _$_BudgetState(
      {this.status = BlocStatus.none,
      this.myBudget = 0,
      this.totalAmount = 0,
      final List<VendorServiceItem> services = const []})
      : _services = services;

  @override
  @JsonKey()
  final BlocStatus status;
  @override
  @JsonKey()
  final int myBudget;
  @override
  @JsonKey()
  final int totalAmount;
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
    return 'BudgetState(status: $status, myBudget: $myBudget, totalAmount: $totalAmount, services: $services)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_BudgetState &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.myBudget, myBudget) ||
                other.myBudget == myBudget) &&
            (identical(other.totalAmount, totalAmount) ||
                other.totalAmount == totalAmount) &&
            const DeepCollectionEquality().equals(other._services, _services));
  }

  @override
  int get hashCode => Object.hash(runtimeType, status, myBudget, totalAmount,
      const DeepCollectionEquality().hash(_services));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_BudgetStateCopyWith<_$_BudgetState> get copyWith =>
      __$$_BudgetStateCopyWithImpl<_$_BudgetState>(this, _$identity);
}

abstract class _BudgetState implements BudgetState {
  factory _BudgetState(
      {final BlocStatus status,
      final int myBudget,
      final int totalAmount,
      final List<VendorServiceItem> services}) = _$_BudgetState;

  @override
  BlocStatus get status;
  @override
  int get myBudget;
  @override
  int get totalAmount;
  @override
  List<VendorServiceItem> get services;
  @override
  @JsonKey(ignore: true)
  _$$_BudgetStateCopyWith<_$_BudgetState> get copyWith =>
      throw _privateConstructorUsedError;
}
