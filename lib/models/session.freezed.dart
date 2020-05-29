// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'session.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
Session _$SessionFromJson(Map<String, dynamic> json) {
  return _Session.fromJson(json);
}

class _$SessionTearOff {
  const _$SessionTearOff();

  _Session call(
      {int id,
      String title,
      String description,
      String slug,
      String session_format,
      String session_level,
      List<Speaker> speakers,
      List<Room> rooms,
      int is_serviceSession,
      String start_date_time,
      String start_time,
      String end_date_time,
      String end_time}) {
    return _Session(
      id: id,
      title: title,
      description: description,
      slug: slug,
      session_format: session_format,
      session_level: session_level,
      speakers: speakers,
      rooms: rooms,
      is_serviceSession: is_serviceSession,
      start_date_time: start_date_time,
      start_time: start_time,
      end_date_time: end_date_time,
      end_time: end_time,
    );
  }
}

// ignore: unused_element
const $Session = _$SessionTearOff();

mixin _$Session {
  int get id;
  String get title;
  String get description;
  String get slug;
  String get session_format;
  String get session_level;
  List<Speaker> get speakers;
  List<Room> get rooms;
  int get is_serviceSession;
  String get start_date_time;
  String get start_time;
  String get end_date_time;
  String get end_time;

  Map<String, dynamic> toJson();
  $SessionCopyWith<Session> get copyWith;
}

abstract class $SessionCopyWith<$Res> {
  factory $SessionCopyWith(Session value, $Res Function(Session) then) =
      _$SessionCopyWithImpl<$Res>;
  $Res call(
      {int id,
      String title,
      String description,
      String slug,
      String session_format,
      String session_level,
      List<Speaker> speakers,
      List<Room> rooms,
      int is_serviceSession,
      String start_date_time,
      String start_time,
      String end_date_time,
      String end_time});
}

class _$SessionCopyWithImpl<$Res> implements $SessionCopyWith<$Res> {
  _$SessionCopyWithImpl(this._value, this._then);

  final Session _value;
  // ignore: unused_field
  final $Res Function(Session) _then;

  @override
  $Res call({
    Object id = freezed,
    Object title = freezed,
    Object description = freezed,
    Object slug = freezed,
    Object session_format = freezed,
    Object session_level = freezed,
    Object speakers = freezed,
    Object rooms = freezed,
    Object is_serviceSession = freezed,
    Object start_date_time = freezed,
    Object start_time = freezed,
    Object end_date_time = freezed,
    Object end_time = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed ? _value.id : id as int,
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
      rooms: rooms == freezed ? _value.rooms : rooms as List<Room>,
      is_serviceSession: is_serviceSession == freezed
          ? _value.is_serviceSession
          : is_serviceSession as int,
      start_date_time: start_date_time == freezed
          ? _value.start_date_time
          : start_date_time as String,
      start_time:
          start_time == freezed ? _value.start_time : start_time as String,
      end_date_time: end_date_time == freezed
          ? _value.end_date_time
          : end_date_time as String,
      end_time: end_time == freezed ? _value.end_time : end_time as String,
    ));
  }
}

abstract class _$SessionCopyWith<$Res> implements $SessionCopyWith<$Res> {
  factory _$SessionCopyWith(_Session value, $Res Function(_Session) then) =
      __$SessionCopyWithImpl<$Res>;
  @override
  $Res call(
      {int id,
      String title,
      String description,
      String slug,
      String session_format,
      String session_level,
      List<Speaker> speakers,
      List<Room> rooms,
      int is_serviceSession,
      String start_date_time,
      String start_time,
      String end_date_time,
      String end_time});
}

class __$SessionCopyWithImpl<$Res> extends _$SessionCopyWithImpl<$Res>
    implements _$SessionCopyWith<$Res> {
  __$SessionCopyWithImpl(_Session _value, $Res Function(_Session) _then)
      : super(_value, (v) => _then(v as _Session));

  @override
  _Session get _value => super._value as _Session;

  @override
  $Res call({
    Object id = freezed,
    Object title = freezed,
    Object description = freezed,
    Object slug = freezed,
    Object session_format = freezed,
    Object session_level = freezed,
    Object speakers = freezed,
    Object rooms = freezed,
    Object is_serviceSession = freezed,
    Object start_date_time = freezed,
    Object start_time = freezed,
    Object end_date_time = freezed,
    Object end_time = freezed,
  }) {
    return _then(_Session(
      id: id == freezed ? _value.id : id as int,
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
      rooms: rooms == freezed ? _value.rooms : rooms as List<Room>,
      is_serviceSession: is_serviceSession == freezed
          ? _value.is_serviceSession
          : is_serviceSession as int,
      start_date_time: start_date_time == freezed
          ? _value.start_date_time
          : start_date_time as String,
      start_time:
          start_time == freezed ? _value.start_time : start_time as String,
      end_date_time: end_date_time == freezed
          ? _value.end_date_time
          : end_date_time as String,
      end_time: end_time == freezed ? _value.end_time : end_time as String,
    ));
  }
}

@JsonSerializable()
class _$_Session implements _Session {
  _$_Session(
      {this.id,
      this.title,
      this.description,
      this.slug,
      this.session_format,
      this.session_level,
      this.speakers,
      this.rooms,
      this.is_serviceSession,
      this.start_date_time,
      this.start_time,
      this.end_date_time,
      this.end_time});

  factory _$_Session.fromJson(Map<String, dynamic> json) =>
      _$_$_SessionFromJson(json);

  @override
  final int id;
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
  final List<Room> rooms;
  @override
  final int is_serviceSession;
  @override
  final String start_date_time;
  @override
  final String start_time;
  @override
  final String end_date_time;
  @override
  final String end_time;

  @override
  String toString() {
    return 'Session(id: $id, title: $title, description: $description, slug: $slug, session_format: $session_format, session_level: $session_level, speakers: $speakers, rooms: $rooms, is_serviceSession: $is_serviceSession, start_date_time: $start_date_time, start_time: $start_time, end_date_time: $end_date_time, end_time: $end_time)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Session &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
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
                    .equals(other.speakers, speakers)) &&
            (identical(other.rooms, rooms) ||
                const DeepCollectionEquality().equals(other.rooms, rooms)) &&
            (identical(other.is_serviceSession, is_serviceSession) ||
                const DeepCollectionEquality()
                    .equals(other.is_serviceSession, is_serviceSession)) &&
            (identical(other.start_date_time, start_date_time) ||
                const DeepCollectionEquality()
                    .equals(other.start_date_time, start_date_time)) &&
            (identical(other.start_time, start_time) ||
                const DeepCollectionEquality()
                    .equals(other.start_time, start_time)) &&
            (identical(other.end_date_time, end_date_time) ||
                const DeepCollectionEquality()
                    .equals(other.end_date_time, end_date_time)) &&
            (identical(other.end_time, end_time) ||
                const DeepCollectionEquality()
                    .equals(other.end_time, end_time)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(title) ^
      const DeepCollectionEquality().hash(description) ^
      const DeepCollectionEquality().hash(slug) ^
      const DeepCollectionEquality().hash(session_format) ^
      const DeepCollectionEquality().hash(session_level) ^
      const DeepCollectionEquality().hash(speakers) ^
      const DeepCollectionEquality().hash(rooms) ^
      const DeepCollectionEquality().hash(is_serviceSession) ^
      const DeepCollectionEquality().hash(start_date_time) ^
      const DeepCollectionEquality().hash(start_time) ^
      const DeepCollectionEquality().hash(end_date_time) ^
      const DeepCollectionEquality().hash(end_time);

  @override
  _$SessionCopyWith<_Session> get copyWith =>
      __$SessionCopyWithImpl<_Session>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_SessionToJson(this);
  }
}

abstract class _Session implements Session {
  factory _Session(
      {int id,
      String title,
      String description,
      String slug,
      String session_format,
      String session_level,
      List<Speaker> speakers,
      List<Room> rooms,
      int is_serviceSession,
      String start_date_time,
      String start_time,
      String end_date_time,
      String end_time}) = _$_Session;

  factory _Session.fromJson(Map<String, dynamic> json) = _$_Session.fromJson;

  @override
  int get id;
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
  List<Room> get rooms;
  @override
  int get is_serviceSession;
  @override
  String get start_date_time;
  @override
  String get start_time;
  @override
  String get end_date_time;
  @override
  String get end_time;
  @override
  _$SessionCopyWith<_Session> get copyWith;
}
