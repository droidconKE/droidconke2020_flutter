// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'organizer.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Organizer _$_$_OrganizerFromJson(Map<String, dynamic> json) {
  return _$_Organizer(
    id: json['id'] as int,
    name: json['name'] as String,
    email: json['email'] as String,
    description: json['description'] as String,
    facebook: json['facebook'] as String,
    twitter: json['twitter'] as String,
    instagram: json['instagram'] as String,
    logo: json['logo'] as String,
    slug: json['slug'] as String,
    status: json['status'] as String,
    created_at: json['created_at'] as String,
    upcoming_events_count: json['upcoming_events_count'] as int,
    total_events_count: json['total_events_count'] as int,
  );
}

Map<String, dynamic> _$_$_OrganizerToJson(_$_Organizer instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'email': instance.email,
      'description': instance.description,
      'facebook': instance.facebook,
      'twitter': instance.twitter,
      'instagram': instance.instagram,
      'logo': instance.logo,
      'slug': instance.slug,
      'status': instance.status,
      'created_at': instance.created_at,
      'upcoming_events_count': instance.upcoming_events_count,
      'total_events_count': instance.total_events_count,
    };
