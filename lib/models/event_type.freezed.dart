// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'event_type.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$EventTypeTearOff {
  const _$EventTypeTearOff();

  _EventType call(
      {int id, String name, String description, String slug, bool status}) {
    return _EventType(
      id: id,
      name: name,
      description: description,
      slug: slug,
      status: status,
    );
  }
}

// ignore: unused_element
const $EventType = _$EventTypeTearOff();

mixin _$EventType {
  int get id;
  String get name;
  String get description;
  String get slug;
  bool get status;

  $EventTypeCopyWith<EventType> get copyWith;
}

abstract class $EventTypeCopyWith<$Res> {
  factory $EventTypeCopyWith(EventType value, $Res Function(EventType) then) =
      _$EventTypeCopyWithImpl<$Res>;
  $Res call(
      {int id, String name, String description, String slug, bool status});
}

class _$EventTypeCopyWithImpl<$Res> implements $EventTypeCopyWith<$Res> {
  _$EventTypeCopyWithImpl(this._value, this._then);

  final EventType _value;
  // ignore: unused_field
  final $Res Function(EventType) _then;

  @override
  $Res call({
    Object id = freezed,
    Object name = freezed,
    Object description = freezed,
    Object slug = freezed,
    Object status = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed ? _value.id : id as int,
      name: name == freezed ? _value.name : name as String,
      description:
          description == freezed ? _value.description : description as String,
      slug: slug == freezed ? _value.slug : slug as String,
      status: status == freezed ? _value.status : status as bool,
    ));
  }
}

abstract class _$EventTypeCopyWith<$Res> implements $EventTypeCopyWith<$Res> {
  factory _$EventTypeCopyWith(
          _EventType value, $Res Function(_EventType) then) =
      __$EventTypeCopyWithImpl<$Res>;
  @override
  $Res call(
      {int id, String name, String description, String slug, bool status});
}

class __$EventTypeCopyWithImpl<$Res> extends _$EventTypeCopyWithImpl<$Res>
    implements _$EventTypeCopyWith<$Res> {
  __$EventTypeCopyWithImpl(_EventType _value, $Res Function(_EventType) _then)
      : super(_value, (v) => _then(v as _EventType));

  @override
  _EventType get _value => super._value as _EventType;

  @override
  $Res call({
    Object id = freezed,
    Object name = freezed,
    Object description = freezed,
    Object slug = freezed,
    Object status = freezed,
  }) {
    return _then(_EventType(
      id: id == freezed ? _value.id : id as int,
      name: name == freezed ? _value.name : name as String,
      description:
          description == freezed ? _value.description : description as String,
      slug: slug == freezed ? _value.slug : slug as String,
      status: status == freezed ? _value.status : status as bool,
    ));
  }
}

class _$_EventType implements _EventType {
  _$_EventType({this.id, this.name, this.description, this.slug, this.status});

  @override
  final int id;
  @override
  final String name;
  @override
  final String description;
  @override
  final String slug;
  @override
  final bool status;

  @override
  String toString() {
    return 'EventType(id: $id, name: $name, description: $description, slug: $slug, status: $status)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _EventType &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.description, description) ||
                const DeepCollectionEquality()
                    .equals(other.description, description)) &&
            (identical(other.slug, slug) ||
                const DeepCollectionEquality().equals(other.slug, slug)) &&
            (identical(other.status, status) ||
                const DeepCollectionEquality().equals(other.status, status)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(description) ^
      const DeepCollectionEquality().hash(slug) ^
      const DeepCollectionEquality().hash(status);

  @override
  _$EventTypeCopyWith<_EventType> get copyWith =>
      __$EventTypeCopyWithImpl<_EventType>(this, _$identity);
}

abstract class _EventType implements EventType {
  factory _EventType(
      {int id,
      String name,
      String description,
      String slug,
      bool status}) = _$_EventType;

  @override
  int get id;
  @override
  String get name;
  @override
  String get description;
  @override
  String get slug;
  @override
  bool get status;
  @override
  _$EventTypeCopyWith<_EventType> get copyWith;
}
