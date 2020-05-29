// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'session.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Session _$_$_SessionFromJson(Map<String, dynamic> json) {
  return _$_Session(
    id: json['id'] as int,
    title: json['title'] as String,
    description: json['description'] as String,
    slug: json['slug'] as String,
    session_format: json['session_format'] as String,
    session_level: json['session_level'] as String,
    speakers: (json['speakers'] as List)
        ?.map((e) =>
            e == null ? null : Speaker.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    rooms: (json['rooms'] as List)
        ?.map(
            (e) => e == null ? null : Room.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    is_serviceSession: json['is_serviceSession'] as int,
    start_date_time: json['start_date_time'] as String,
    start_time: json['start_time'] as String,
    end_date_time: json['end_date_time'] as String,
    end_time: json['end_time'] as String,
  );
}

Map<String, dynamic> _$_$_SessionToJson(_$_Session instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'description': instance.description,
      'slug': instance.slug,
      'session_format': instance.session_format,
      'session_level': instance.session_level,
      'speakers': instance.speakers,
      'rooms': instance.rooms,
      'is_serviceSession': instance.is_serviceSession,
      'start_date_time': instance.start_date_time,
      'start_time': instance.start_time,
      'end_date_time': instance.end_date_time,
      'end_time': instance.end_time,
    };
