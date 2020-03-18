// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'session.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$SessionTearOff {
  const _$SessionTearOff();

  _Session call(
      {String title,
      String description,
      String slug,
      String session_format,
      String session_level,
      List<Speaker> speakers}) {
    return _Session(
      title: title,
      description: description,
      slug: slug,
      session_format: session_format,
      session_level: session_level,
      speakers: speakers,
    );
  }
}

// ignore: unused_element
const $Session = _$SessionTearOff();

mixin _$Session {
  String get title;
  String get description;
  String get slug;
  String get session_format;
  String get session_level;
  List<Speaker> get speakers;

  $SessionCopyWith<Session> get copyWith;
}

abstract class $SessionCopyWith<$Res> {
  factory $SessionCopyWith(Session value, $Res Function(Session) then) =
      _$SessionCopyWithImpl<$Res>;
  $Res call(
      {String title,
      String description,
      String slug,
      String session_format,
      String session_level,
      List<Speaker> speakers});
}

class _$SessionCopyWithImpl<$Res> implements $SessionCopyWith<$Res> {
  _$SessionCopyWithImpl(this._value, this._then);

  final Session _value;
  // ignore: unused_field
  final $Res Function(Session) _then;

  @override
  $Res call({
    Object title = freezed,
    Object description = freezed,
    Object slug = freezed,
    Object session_format = freezed,
    Object session_level = freezed,
    Object speakers = freezed,
  }) {
    return _then(_value.copyWith(
      title: title == freezed ? _value.title : title as String,
      description:
          description == freezed ? _value.description : description as String,
      slug: slug == freezed ? _value.slug : slug as String,
      session_format: session_format == freezed
          ? _value.session_format
          : session_format as String,
      session_level: session_level == freezed
          ? _value.session_level
          : session_level as String,
      speakers:
          speakers == freezed ? _value.speakers : speakers as List<Speaker>,
    ));
  }
}

abstract class _$SessionCopyWith<$Res> implements $SessionCopyWith<$Res> {
  factory _$SessionCopyWith(_Session value, $Res Function(_Session) then) =
      __$SessionCopyWithImpl<$Res>;
  @override
  $Res call(
      {String title,
      String description,
      String slug,
      String session_format,
      String session_level,
      List<Speaker> speakers});
}

class __$SessionCopyWithImpl<$Res> extends _$SessionCopyWithImpl<$Res>
    implements _$SessionCopyWith<$Res> {
  __$SessionCopyWithImpl(_Session _value, $Res Function(_Session) _then)
      : super(_value, (v) => _then(v as _Session));

  @override
  _Session get _value => super._value as _Session;

  @override
  $Res call({
    Object title = freezed,
    Object description = freezed,
    Object slug = freezed,
    Object session_format = freezed,
    Object session_level = freezed,
    Object speakers = freezed,
  }) {
    return _then(_Session(
      title: title == freezed ? _value.title : title as String,
      description:
          description == freezed ? _value.description : description as String,
      slug: slug == freezed ? _value.slug : slug as String,
      session_format: session_format == freezed
          ? _value.session_format
          : session_format as String,
      session_level: session_level == freezed
          ? _value.session_level
          : session_level as String,
      speakers:
          speakers == freezed ? _value.speakers : speakers as List<Speaker>,
    ));
  }
}

class _$_Session implements _Session {
  _$_Session(
      {this.title,
      this.description,
      this.slug,
      this.session_format,
      this.session_level,
      this.speakers});

  @override
  final String title;
  @override
  final String description;
  @override
  final String slug;
  @override
  final String session_format;
  @override
  final String session_level;
  @override
  final List<Speaker> speakers;

  @override
  String toString() {
    return 'Session(title: $title, description: $description, slug: $slug, session_format: $session_format, session_level: $session_level, speakers: $speakers)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Session &&
            (identical(other.title, title) ||
                const DeepCollectionEquality().equals(other.title, title)) &&
            (identical(other.description, description) ||
                const DeepCollectionEquality()
                    .equals(other.description, description)) &&
            (identical(other.slug, slug) ||
                const DeepCollectionEquality().equals(other.slug, slug)) &&
            (identical(other.session_format, session_format) ||
                const DeepCollectionEquality()
                    .equals(other.session_format, session_format)) &&
            (identical(other.session_level, session_level) ||
                const DeepCollectionEquality()
                    .equals(other.session_level, session_level)) &&
            (identical(other.speakers, speakers) ||
                const DeepCollectionEquality()
                    .equals(other.speakers, speakers)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(title) ^
      const DeepCollectionEquality().hash(description) ^
      const DeepCollectionEquality().hash(slug) ^
      const DeepCollectionEquality().hash(session_format) ^
      const DeepCollectionEquality().hash(session_level) ^
      const DeepCollectionEquality().hash(speakers);

  @override
  _$SessionCopyWith<_Session> get copyWith =>
      __$SessionCopyWithImpl<_Session>(this, _$identity);
}

abstract class _Session implements Session {
  factory _Session(
      {String title,
      String description,
      String slug,
      String session_format,
      String session_level,
      List<Speaker> speakers}) = _$_Session;

  @override
  String get title;
  @override
  String get description;
  @override
  String get slug;
  @override
  String get session_format;
  @override
  String get session_level;
  @override
  List<Speaker> get speakers;
  @override
  _$SessionCopyWith<_Session> get copyWith;
}
