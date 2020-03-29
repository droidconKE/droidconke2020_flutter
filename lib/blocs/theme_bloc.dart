import 'package:flutter/material.dart';
import 'package:rxdart/rxdart.dart';

class ThemeBloc {
  ThemeBloc() {
    //TODO: Read theme from shared prefs
    _brightness.add(Brightness.light);
  }

  final _brightness = BehaviorSubject<Brightness>();

  Stream<Brightness> get brightness => _brightness.stream;

  //TODO: Write theme to shared prefs
  Function(Brightness) get changeBrightness => _brightness.sink.add;

  dispose() {
    _brightness.close();
  }
}
