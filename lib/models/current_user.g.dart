// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'current_user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CurrentUser _$_$_CurrentUserFromJson(Map<String, dynamic> json) {
  return _$_CurrentUser(
    user: json['user'] == null
        ? null
        : User.fromJson(json['user'] as Map<String, dynamic>),
    token: json['token'] as String,
  );
}

Map<String, dynamic> _$_$_CurrentUserToJson(_$_CurrentUser instance) =>
    <String, dynamic>{
      'user': instance.user,
      'token': instance.token,
    };
