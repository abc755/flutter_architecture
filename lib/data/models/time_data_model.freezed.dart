// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'time_data_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$TimeData {
  int get timestamp => throw _privateConstructorUsedError;
  String get date => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TimeDataCopyWith<TimeData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TimeDataCopyWith<$Res> {
  factory $TimeDataCopyWith(TimeData value, $Res Function(TimeData) then) =
      _$TimeDataCopyWithImpl<$Res, TimeData>;
  @useResult
  $Res call({int timestamp, String date});
}

/// @nodoc
class _$TimeDataCopyWithImpl<$Res, $Val extends TimeData>
    implements $TimeDataCopyWith<$Res> {
  _$TimeDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? timestamp = null,
    Object? date = null,
  }) {
    return _then(_value.copyWith(
      timestamp: null == timestamp
          ? _value.timestamp
          : timestamp // ignore: cast_nullable_to_non_nullable
              as int,
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_TimeDataCopyWith<$Res> implements $TimeDataCopyWith<$Res> {
  factory _$$_TimeDataCopyWith(
          _$_TimeData value, $Res Function(_$_TimeData) then) =
      __$$_TimeDataCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int timestamp, String date});
}

/// @nodoc
class __$$_TimeDataCopyWithImpl<$Res>
    extends _$TimeDataCopyWithImpl<$Res, _$_TimeData>
    implements _$$_TimeDataCopyWith<$Res> {
  __$$_TimeDataCopyWithImpl(
      _$_TimeData _value, $Res Function(_$_TimeData) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? timestamp = null,
    Object? date = null,
  }) {
    return _then(_$_TimeData(
      timestamp: null == timestamp
          ? _value.timestamp
          : timestamp // ignore: cast_nullable_to_non_nullable
              as int,
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_TimeData implements _TimeData {
  const _$_TimeData({required this.timestamp, required this.date});

  @override
  final int timestamp;
  @override
  final String date;

  @override
  String toString() {
    return 'TimeData(timestamp: $timestamp, date: $date)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TimeData &&
            (identical(other.timestamp, timestamp) ||
                other.timestamp == timestamp) &&
            (identical(other.date, date) || other.date == date));
  }

  @override
  int get hashCode => Object.hash(runtimeType, timestamp, date);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_TimeDataCopyWith<_$_TimeData> get copyWith =>
      __$$_TimeDataCopyWithImpl<_$_TimeData>(this, _$identity);
}

abstract class _TimeData implements TimeData {
  const factory _TimeData(
      {required final int timestamp, required final String date}) = _$_TimeData;

  @override
  int get timestamp;
  @override
  String get date;
  @override
  @JsonKey(ignore: true)
  _$$_TimeDataCopyWith<_$_TimeData> get copyWith =>
      throw _privateConstructorUsedError;
}
