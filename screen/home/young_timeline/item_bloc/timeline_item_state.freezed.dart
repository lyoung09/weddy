// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'timeline_item_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$TimelineItemState {
  BlocStatus get status => throw _privateConstructorUsedError;
  TimelineItem? get timelineItem => throw _privateConstructorUsedError;
  String get text => throw _privateConstructorUsedError;
  bool get isNotEnabled => throw _privateConstructorUsedError;
  bool get isChecked => throw _privateConstructorUsedError;
  String get memo => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TimelineItemStateCopyWith<TimelineItemState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TimelineItemStateCopyWith<$Res> {
  factory $TimelineItemStateCopyWith(
          TimelineItemState value, $Res Function(TimelineItemState) then) =
      _$TimelineItemStateCopyWithImpl<$Res, TimelineItemState>;
  @useResult
  $Res call(
      {BlocStatus status,
      TimelineItem? timelineItem,
      String text,
      bool isNotEnabled,
      bool isChecked,
      String memo});
}

/// @nodoc
class _$TimelineItemStateCopyWithImpl<$Res, $Val extends TimelineItemState>
    implements $TimelineItemStateCopyWith<$Res> {
  _$TimelineItemStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? timelineItem = freezed,
    Object? text = null,
    Object? isNotEnabled = null,
    Object? isChecked = null,
    Object? memo = null,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as BlocStatus,
      timelineItem: freezed == timelineItem
          ? _value.timelineItem
          : timelineItem // ignore: cast_nullable_to_non_nullable
              as TimelineItem?,
      text: null == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
      isNotEnabled: null == isNotEnabled
          ? _value.isNotEnabled
          : isNotEnabled // ignore: cast_nullable_to_non_nullable
              as bool,
      isChecked: null == isChecked
          ? _value.isChecked
          : isChecked // ignore: cast_nullable_to_non_nullable
              as bool,
      memo: null == memo
          ? _value.memo
          : memo // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_TimelineItemStateCopyWith<$Res>
    implements $TimelineItemStateCopyWith<$Res> {
  factory _$$_TimelineItemStateCopyWith(_$_TimelineItemState value,
          $Res Function(_$_TimelineItemState) then) =
      __$$_TimelineItemStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {BlocStatus status,
      TimelineItem? timelineItem,
      String text,
      bool isNotEnabled,
      bool isChecked,
      String memo});
}

/// @nodoc
class __$$_TimelineItemStateCopyWithImpl<$Res>
    extends _$TimelineItemStateCopyWithImpl<$Res, _$_TimelineItemState>
    implements _$$_TimelineItemStateCopyWith<$Res> {
  __$$_TimelineItemStateCopyWithImpl(
      _$_TimelineItemState _value, $Res Function(_$_TimelineItemState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? timelineItem = freezed,
    Object? text = null,
    Object? isNotEnabled = null,
    Object? isChecked = null,
    Object? memo = null,
  }) {
    return _then(_$_TimelineItemState(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as BlocStatus,
      timelineItem: freezed == timelineItem
          ? _value.timelineItem
          : timelineItem // ignore: cast_nullable_to_non_nullable
              as TimelineItem?,
      text: null == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
      isNotEnabled: null == isNotEnabled
          ? _value.isNotEnabled
          : isNotEnabled // ignore: cast_nullable_to_non_nullable
              as bool,
      isChecked: null == isChecked
          ? _value.isChecked
          : isChecked // ignore: cast_nullable_to_non_nullable
              as bool,
      memo: null == memo
          ? _value.memo
          : memo // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_TimelineItemState implements _TimelineItemState {
  _$_TimelineItemState(
      {this.status = BlocStatus.none,
      this.timelineItem,
      this.text = '',
      this.isNotEnabled = false,
      this.isChecked = false,
      this.memo = ''});

  @override
  @JsonKey()
  final BlocStatus status;
  @override
  final TimelineItem? timelineItem;
  @override
  @JsonKey()
  final String text;
  @override
  @JsonKey()
  final bool isNotEnabled;
  @override
  @JsonKey()
  final bool isChecked;
  @override
  @JsonKey()
  final String memo;

  @override
  String toString() {
    return 'TimelineItemState(status: $status, timelineItem: $timelineItem, text: $text, isNotEnabled: $isNotEnabled, isChecked: $isChecked, memo: $memo)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TimelineItemState &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.timelineItem, timelineItem) ||
                other.timelineItem == timelineItem) &&
            (identical(other.text, text) || other.text == text) &&
            (identical(other.isNotEnabled, isNotEnabled) ||
                other.isNotEnabled == isNotEnabled) &&
            (identical(other.isChecked, isChecked) ||
                other.isChecked == isChecked) &&
            (identical(other.memo, memo) || other.memo == memo));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, status, timelineItem, text, isNotEnabled, isChecked, memo);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_TimelineItemStateCopyWith<_$_TimelineItemState> get copyWith =>
      __$$_TimelineItemStateCopyWithImpl<_$_TimelineItemState>(
          this, _$identity);
}

abstract class _TimelineItemState implements TimelineItemState {
  factory _TimelineItemState(
      {final BlocStatus status,
      final TimelineItem? timelineItem,
      final String text,
      final bool isNotEnabled,
      final bool isChecked,
      final String memo}) = _$_TimelineItemState;

  @override
  BlocStatus get status;
  @override
  TimelineItem? get timelineItem;
  @override
  String get text;
  @override
  bool get isNotEnabled;
  @override
  bool get isChecked;
  @override
  String get memo;
  @override
  @JsonKey(ignore: true)
  _$$_TimelineItemStateCopyWith<_$_TimelineItemState> get copyWith =>
      throw _privateConstructorUsedError;
}
