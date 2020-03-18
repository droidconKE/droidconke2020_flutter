import 'package:freezed_annotation/freezed_annotation.dart';

part 'room.freezed.dart';

@freezed
abstract class Room with _$Room {
  factory Room({
    String title,
    int id,
  }) = _Room;
}
