import 'package:flutter/material.dart';
import 'package:rxdart/rxdart.dart';

class ThemeBloc {
  ThemeBloc() {
    _brightness.add(Brightness.light);
  }

  final _brightness = BehaviorSubject<Brightness>();

  Stream<Brightness> get brightness => _brightness.stream;

  Function(Brightness) get changeBrightness => _brightness.sink.add;

  dispose() {
    _brightness.close();
  }
}
