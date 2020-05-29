import 'package:droidconke2020_flutter/models/models.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'day_schedule.freezed.dart';

part 'day_schedule.g.dart';

@freezed
abstract class DaySchedule with _$DaySchedule {
  factory DaySchedule({
    @required String dateString,
    @required List<Session> schedule,
  }) = _DaySchedule;

  factory DaySchedule.fromJson(Map<String, dynamic> json) =>
      _$DayScheduleFromJson(json);
}
