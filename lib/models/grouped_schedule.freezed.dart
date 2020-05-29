// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'grouped_schedule.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
GroupedSchedule _$GroupedScheduleFromJson(Map<String, dynamic> json) {
  return _GroupedSchedule.fromJson(json);
}

class _$GroupedScheduleTearOff {
  const _$GroupedScheduleTearOff();

  _GroupedSchedule call(List<DaySchedule> daySchedules) {
    return _GroupedSchedule(
      daySchedules,
    );
  }
}

// ignore: unused_element
const $GroupedSchedule = _$GroupedScheduleTearOff();

mixin _$GroupedSchedule {
  List<DaySchedule> get daySchedules;

  Map<String, dynamic> toJson();
  $GroupedScheduleCopyWith<GroupedSchedule> get copyWith;
}

abstract class $GroupedScheduleCopyWith<$Res> {
  factory $GroupedScheduleCopyWith(
          GroupedSchedule value, $Res Function(GroupedSchedule) then) =
      _$GroupedScheduleCopyWithImpl<$Res>;
  $Res call({List<DaySchedule> daySchedules});
}

class _$GroupedScheduleCopyWithImpl<$Res>
    implements $GroupedScheduleCopyWith<$Res> {
  _$GroupedScheduleCopyWithImpl(this._value, this._then);

  final GroupedSchedule _value;
  // ignore: unused_field
  final $Res Function(GroupedSchedule) _then;

  @override
  $Res call({
    Object daySchedules = freezed,
  }) {
    return _then(_value.copyWith(
      daySchedules: daySchedules == freezed
          ? _value.daySchedules
          : daySchedules as List<DaySchedule>,
    ));
  }
}

abstract class _$GroupedScheduleCopyWith<$Res>
    implements $GroupedScheduleCopyWith<$Res> {
  factory _$GroupedScheduleCopyWith(
          _GroupedSchedule value, $Res Function(_GroupedSchedule) then) =
      __$GroupedScheduleCopyWithImpl<$Res>;
  @override
  $Res call({List<DaySchedule> daySchedules});
}

class __$GroupedScheduleCopyWithImpl<$Res>
    extends _$GroupedScheduleCopyWithImpl<$Res>
    implements _$GroupedScheduleCopyWith<$Res> {
  __$GroupedScheduleCopyWithImpl(
      _GroupedSchedule _value, $Res Function(_GroupedSchedule) _then)
      : super(_value, (v) => _then(v as _GroupedSchedule));

  @override
  _GroupedSchedule get _value => super._value as _GroupedSchedule;

  @override
  $Res call({
    Object daySchedules = freezed,
  }) {
    return _then(_GroupedSchedule(
      daySchedules == freezed
          ? _value.daySchedules
          : daySchedules as List<DaySchedule>,
    ));
  }
}

@JsonSerializable()
class _$_GroupedSchedule implements _GroupedSchedule {
  _$_GroupedSchedule(this.daySchedules) : assert(daySchedules != null);

  factory _$_GroupedSchedule.fromJson(Map<String, dynamic> json) =>
      _$_$_GroupedScheduleFromJson(json);

  @override
  final List<DaySchedule> daySchedules;

  @override
  String toString() {
    return 'GroupedSchedule(daySchedules: $daySchedules)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _GroupedSchedule &&
            (identical(other.daySchedules, daySchedules) ||
                const DeepCollectionEquality()
                    .equals(other.daySchedules, daySchedules)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(daySchedules);

  @override
  _$GroupedScheduleCopyWith<_GroupedSchedule> get copyWith =>
      __$GroupedScheduleCopyWithImpl<_GroupedSchedule>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_GroupedScheduleToJson(this);
  }
}

abstract class _GroupedSchedule implements GroupedSchedule {
  factory _GroupedSchedule(List<DaySchedule> daySchedules) = _$_GroupedSchedule;

  factory _GroupedSchedule.fromJson(Map<String, dynamic> json) =
      _$_GroupedSchedule.fromJson;

  @override
  List<DaySchedule> get daySchedules;
  @override
  _$GroupedScheduleCopyWith<_GroupedSchedule> get copyWith;
}
