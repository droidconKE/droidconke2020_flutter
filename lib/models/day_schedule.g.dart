// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'day_schedule.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_DaySchedule _$_$_DayScheduleFromJson(Map<String, dynamic> json) {
  return _$_DaySchedule(
    dateString: json['dateString'] as String,
    schedule: (json['schedule'] as List)
        ?.map((e) =>
            e == null ? null : Session.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$_$_DayScheduleToJson(_$_DaySchedule instance) =>
    <String, dynamic>{
      'dateString': instance.dateString,
      'schedule': instance.schedule,
    };
