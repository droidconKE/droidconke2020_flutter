// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'grouped_schedule.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_GroupedSchedule _$_$_GroupedScheduleFromJson(Map<String, dynamic> json) {
  return _$_GroupedSchedule(
    (json['daySchedules'] as List)
        ?.map((e) =>
            e == null ? null : DaySchedule.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$_$_GroupedScheduleToJson(_$_GroupedSchedule instance) =>
    <String, dynamic>{
      'daySchedules': instance.daySchedules,
    };
