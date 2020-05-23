// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_User _$_$_UserFromJson(Map<String, dynamic> json) {
  return _$_User(
    name: json['name'] as String,
    email: json['email'] as String,
    gender: json['gender'] as String,
    avatar: json['avatar'] as String,
    created_at: json['created_at'] as String,
  );
}

Map<String, dynamic> _$_$_UserToJson(_$_User instance) => <String, dynamic>{
      'name': instance.name,
      'email': instance.email,
      'gender': instance.gender,
      'avatar': instance.avatar,
      'created_at': instance.created_at,
    };
