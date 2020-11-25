// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'day_schedule.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
DaySchedule _$DayScheduleFromJson(Map<String, dynamic> json) {
  return _DaySchedule.fromJson(json);
}

/// @nodoc
class _$DayScheduleTearOff {
  const _$DayScheduleTearOff();

// ignore: unused_element
  _DaySchedule call(
      {@required String dateString, @required List<Session> schedule}) {
    return _DaySchedule(
      dateString: dateString,
      schedule: schedule,
    );
  }

// ignore: unused_element
  DaySchedule fromJson(Map<String, Object> json) {
    return DaySchedule.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $DaySchedule = _$DayScheduleTearOff();

/// @nodoc
mixin _$DaySchedule {
  String get dateString;
  List<Session> get schedule;

  Map<String, dynamic> toJson();
  $DayScheduleCopyWith<DaySchedule> get copyWith;
}

/// @nodoc
abstract class $DayScheduleCopyWith<$Res> {
  factory $DayScheduleCopyWith(
          DaySchedule value, $Res Function(DaySchedule) then) =
      _$DayScheduleCopyWithImpl<$Res>;
  $Res call({String dateString, List<Session> schedule});
}

/// @nodoc
class _$DayScheduleCopyWithImpl<$Res> implements $DayScheduleCopyWith<$Res> {
  _$DayScheduleCopyWithImpl(this._value, this._then);

  final DaySchedule _value;
  // ignore: unused_field
  final $Res Function(DaySchedule) _then;

  @override
  $Res call({
    Object dateString = freezed,
    Object schedule = freezed,
  }) {
    return _then(_value.copyWith(
      dateString:
          dateString == freezed ? _value.dateString : dateString as String,
      schedule:
          schedule == freezed ? _value.schedule : schedule as List<Session>,
    ));
  }
}

/// @nodoc
abstract class _$DayScheduleCopyWith<$Res>
    implements $DayScheduleCopyWith<$Res> {
  factory _$DayScheduleCopyWith(
          _DaySchedule value, $Res Function(_DaySchedule) then) =
      __$DayScheduleCopyWithImpl<$Res>;
  @override
  $Res call({String dateString, List<Session> schedule});
}

/// @nodoc
class __$DayScheduleCopyWithImpl<$Res> extends _$DayScheduleCopyWithImpl<$Res>
    implements _$DayScheduleCopyWith<$Res> {
  __$DayScheduleCopyWithImpl(
      _DaySchedule _value, $Res Function(_DaySchedule) _then)
      : super(_value, (v) => _then(v as _DaySchedule));

  @override
  _DaySchedule get _value => super._value as _DaySchedule;

  @override
  $Res call({
    Object dateString = freezed,
    Object schedule = freezed,
  }) {
    return _then(_DaySchedule(
      dateString:
          dateString == freezed ? _value.dateString : dateString as String,
      schedule:
          schedule == freezed ? _value.schedule : schedule as List<Session>,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_DaySchedule implements _DaySchedule {
  _$_DaySchedule({@required this.dateString, @required this.schedule})
      : assert(dateString != null),
        assert(schedule != null);

  factory _$_DaySchedule.fromJson(Map<String, dynamic> json) =>
      _$_$_DayScheduleFromJson(json);

  @override
  final String dateString;
  @override
  final List<Session> schedule;

  @override
  String toString() {
    return 'DaySchedule(dateString: $dateString, schedule: $schedule)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _DaySchedule &&
            (identical(other.dateString, dateString) ||
                const DeepCollectionEquality()
                    .equals(other.dateString, dateString)) &&
            (identical(other.schedule, schedule) ||
                const DeepCollectionEquality()
                    .equals(other.schedule, schedule)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(dateString) ^
      const DeepCollectionEquality().hash(schedule);

  @override
  _$DayScheduleCopyWith<_DaySchedule> get copyWith =>
      __$DayScheduleCopyWithImpl<_DaySchedule>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_DayScheduleToJson(this);
  }
}

abstract class _DaySchedule implements DaySchedule {
  factory _DaySchedule(
      {@required String dateString,
      @required List<Session> schedule}) = _$_DaySchedule;

  factory _DaySchedule.fromJson(Map<String, dynamic> json) =
      _$_DaySchedule.fromJson;

  @override
  String get dateString;
  @override
  List<Session> get schedule;
  @override
  _$DayScheduleCopyWith<_DaySchedule> get copyWith;
}
