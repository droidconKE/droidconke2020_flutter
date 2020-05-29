import 'package:droidconke2020_flutter/models/models.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'session.freezed.dart';
part 'session.g.dart';

@freezed
abstract class Session with _$Session {
  factory Session({
    int id,
    String title,
    String description,
    String slug,
    String session_format,
    String session_level,
    List<Speaker> speakers,
    List<Room> rooms,
    int is_serviceSession,
    String start_date_time,
    String start_time,
    String end_date_time,
    String end_time,
  }) = _Session;

 // DateTime get startDateTime => DateTime.parse(start_date_time);

  factory Session.fromJson(Map<String, dynamic> json) =>
      _$SessionFromJson(json);
}
