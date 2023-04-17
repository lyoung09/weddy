// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'timeline_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$TimeLineState {
  BlocStatus get status => throw _privateConstructorUsedError;
  TimeLineResponse get timeLineResponse => throw _privateConstructorUsedError;
  UserProfile get userProfile => throw _privateConstructorUsedError;
  TimelineItem? get timelineItem => throw _privateConstructorUsedError;
  List<TimelineItem> get items => throw _privateConstructorUsedError;
  String get enableText => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TimeLineStateCopyWith<TimeLineState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TimeLineStateCopyWith<$Res> {
  factory $TimeLineStateCopyWith(
          TimeLineState value, $Res Function(TimeLineState) then) =
      _$TimeLineStateCopyWithImpl<$Res, TimeLineState>;
  @useResult
  $Res call(
      {BlocStatus status,
      TimeLineResponse timeLineResponse,
      UserProfile userProfile,
      TimelineItem? timelineItem,
      List<TimelineItem> items,
      String enableText});
}

/// @nodoc
class _$TimeLineStateCopyWithImpl<$Res, $Val extends TimeLineState>
    implements $TimeLineStateCopyWith<$Res> {
  _$TimeLineStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? timeLineResponse = null,
    Object? userProfile = null,
    Object? timelineItem = freezed,
    Object? items = null,
    Object? enableText = null,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as BlocStatus,
      timeLineResponse: null == timeLineResponse
          ? _value.timeLineResponse
          : timeLineResponse // ignore: cast_nullable_to_non_nullable
              as TimeLineResponse,
      userProfile: null == userProfile
          ? _value.userProfile
          : userProfile // ignore: cast_nullable_to_non_nullable
              as UserProfile,
      timelineItem: freezed == timelineItem
          ? _value.timelineItem
          : timelineItem // ignore: cast_nullable_to_non_nullable
              as TimelineItem?,
      items: null == items
          ? _value.items
          : items // ignore: cast_nullable_to_non_nullable
              as List<TimelineItem>,
      enableText: null == enableText
          ? _value.enableText
          : enableText // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_TimeLineStateCopyWith<$Res>
    implements $TimeLineStateCopyWith<$Res> {
  factory _$$_TimeLineStateCopyWith(
          _$_TimeLineState value, $Res Function(_$_TimeLineState) then) =
      __$$_TimeLineStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {BlocStatus status,
      TimeLineResponse timeLineResponse,
      UserProfile userProfile,
      TimelineItem? timelineItem,
      List<TimelineItem> items,
      String enableText});
}

/// @nodoc
class __$$_TimeLineStateCopyWithImpl<$Res>
    extends _$TimeLineStateCopyWithImpl<$Res, _$_TimeLineState>
    implements _$$_TimeLineStateCopyWith<$Res> {
  __$$_TimeLineStateCopyWithImpl(
      _$_TimeLineState _value, $Res Function(_$_TimeLineState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? timeLineResponse = null,
    Object? userProfile = null,
    Object? timelineItem = freezed,
    Object? items = null,
    Object? enableText = null,
  }) {
    return _then(_$_TimeLineState(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as BlocStatus,
      timeLineResponse: null == timeLineResponse
          ? _value.timeLineResponse
          : timeLineResponse // ignore: cast_nullable_to_non_nullable
              as TimeLineResponse,
      userProfile: null == userProfile
          ? _value.userProfile
          : userProfile // ignore: cast_nullable_to_non_nullable
              as UserProfile,
      timelineItem: freezed == timelineItem
          ? _value.timelineItem
          : timelineItem // ignore: cast_nullable_to_non_nullable
              as TimelineItem?,
      items: null == items
          ? _value._items
          : items // ignore: cast_nullable_to_non_nullable
              as List<TimelineItem>,
      enableText: null == enableText
          ? _value.enableText
          : enableText // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_TimeLineState implements _TimeLineState {
  _$_TimeLineState(
      {this.status = BlocStatus.none,
      this.timeLineResponse = TimeLineResponse.empty,
      this.userProfile = UserProfile.empty,
      this.timelineItem,
      final List<TimelineItem> items = const [],
      this.enableText = ''})
      : _items = items;

  @override
  @JsonKey()
  final BlocStatus status;
  @override
  @JsonKey()
  final TimeLineResponse timeLineResponse;
  @override
  @JsonKey()
  final UserProfile userProfile;
  @override
  final TimelineItem? timelineItem;
  final List<TimelineItem> _items;
  @override
  @JsonKey()
  List<TimelineItem> get items {
    if (_items is EqualUnmodifiableListView) return _items;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_items);
  }

  @override
  @JsonKey()
  final String enableText;

  @override
  String toString() {
    return 'TimeLineState(status: $status, timeLineResponse: $timeLineResponse, userProfile: $userProfile, timelineItem: $timelineItem, items: $items, enableText: $enableText)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TimeLineState &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.timeLineResponse, timeLineResponse) ||
                other.timeLineResponse == timeLineResponse) &&
            (identical(other.userProfile, userProfile) ||
                other.userProfile == userProfile) &&
            (identical(other.timelineItem, timelineItem) ||
                other.timelineItem == timelineItem) &&
            const DeepCollectionEquality().equals(other._items, _items) &&
            (identical(other.enableText, enableText) ||
                other.enableText == enableText));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      status,
      timeLineResponse,
      userProfile,
      timelineItem,
      const DeepCollectionEquality().hash(_items),
      enableText);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_TimeLineStateCopyWith<_$_TimeLineState> get copyWith =>
      __$$_TimeLineStateCopyWithImpl<_$_TimeLineState>(this, _$identity);
}

abstract class _TimeLineState implements TimeLineState {
  factory _TimeLineState(
      {final BlocStatus status,
      final TimeLineResponse timeLineResponse,
      final UserProfile userProfile,
      final TimelineItem? timelineItem,
      final List<TimelineItem> items,
      final String enableText}) = _$_TimeLineState;

  @override
  BlocStatus get status;
  @override
  TimeLineResponse get timeLineResponse;
  @override
  UserProfile get userProfile;
  @override
  TimelineItem? get timelineItem;
  @override
  List<TimelineItem> get items;
  @override
  String get enableText;
  @override
  @JsonKey(ignore: true)
  _$$_TimeLineStateCopyWith<_$_TimeLineState> get copyWith =>
      throw _privateConstructorUsedError;
}
