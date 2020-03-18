import 'package:freezed_annotation/freezed_annotation.dart';

part 'organizer.freezed.dart';

@freezed
abstract class Organizer with _$Organizer {
  factory Organizer({
    int id,
    String name,
    String email,
    String description,
    String facebook,
    String twitter,
    String instagram,
    String logo,
    String slug,
    String status,
    String created_at,
    int upcoming_events_count,
    int total_events_count,
  }) = _Organizer;
}
