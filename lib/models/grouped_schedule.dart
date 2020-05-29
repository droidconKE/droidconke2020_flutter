import 'package:droidconke2020_flutter/models/models.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'grouped_schedule.freezed.dart';

part 'grouped_schedule.g.dart';

@freezed
abstract class GroupedSchedule with _$GroupedSchedule {
  factory GroupedSchedule(List<DaySchedule> daySchedules) = _GroupedSchedule;

  factory GroupedSchedule.fromJson(Map<String, dynamic> json) =>
      _$GroupedScheduleFromJson(json);
}
