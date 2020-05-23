import 'package:droidconke2020_flutter/models/models.dart';
import 'package:rxdart/rxdart.dart';

class SessionsBloc {
  final _sessions = BehaviorSubject<List<Session>>();
  final _favoriteSessions = BehaviorSubject<List<Session>>();
  final _selectedDay = BehaviorSubject<int>();
  final _favoritesSelectedDay = BehaviorSubject<int>();

  Stream<List<Session>> get sessions => _sessions.stream;

  Stream<List<Session>> get favoriteSessions => _favoriteSessions.stream;

  Stream<int> get selectedDay => _selectedDay.stream;

  Stream<int> get favoritesSelectedDay => _favoritesSelectedDay.stream;

  SessionsBloc() {
    _sessions.sink.add(_sampleSessions);
    _favoriteSessions.sink.add(_sampleSessions);
  }

  setSelectedDay(int day) {
    print("Setting selected day $day");
    _selectedDay.sink.add(day);
  }

  setFavoritesSelectedDay(int day) {
    print("Setting selected day $day");
    _favoritesSelectedDay.sink.add(day);
  }

  dispose() {
    _sessions.close();
    _selectedDay.close();
    _favoritesSelectedDay.close();
    _favoriteSessions.close();
  }

  final _sampleSessions = [
    Session(
      title: "Session 1",
      description: "Description",
      speakers: [
        Speaker(name: 'Harun'),
      ],
      is_serviceSession: true,
    ),
    Session(
      title: "Session Title",
      description: "Description",
      speakers: [
        Speaker(name: 'Harun'),
      ],
    ),
    Session(
      title: "Session 2",
      description: "Description",
      speakers: [
        Speaker(name: 'Harun'),
      ],
    ),
    Session(
      title: "Session 3",
      description: "Description",
      speakers: [
        Speaker(name: 'Harun'),
      ],
    ),
    Session(
      title: "Session 3",
      description: "Description",
      speakers: [
        Speaker(name: 'Harun'),
      ],
    ),
    Session(
      title: "Session 3",
      description: "Description",
      speakers: [
        Speaker(name: 'Harun'),
      ],
    ),
    Session(
      title: "Session 5",
      description: "Description",
      speakers: [
        Speaker(name: 'Harun'),
      ],
    ),
  ];
}
