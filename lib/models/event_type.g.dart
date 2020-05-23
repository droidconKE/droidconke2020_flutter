// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'event_type.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_EventType _$_$_EventTypeFromJson(Map<String, dynamic> json) {
  return _$_EventType(
    id: json['id'] as int,
    name: json['name'] as String,
    description: json['description'] as String,
    slug: json['slug'] as String,
    status: json['status'] as bool,
  );
}

Map<String, dynamic> _$_$_EventTypeToJson(_$_EventType instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'description': instance.description,
      'slug': instance.slug,
      'status': instance.status,
    };
