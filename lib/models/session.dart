import 'package:droidconke2020_flutter/models/models.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'session.freezed.dart';

@freezed
abstract class Session with _$Session {
  factory Session({
    String title,
    String description,
    String slug,
    String session_format,
    String session_level,
    List<Speaker> speakers,
  }) = _Session;
}
