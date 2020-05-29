import 'dart:async';

import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:meta/meta.dart';

part 'theme_event.dart';
part 'theme_state.dart';

class ThemeBloc extends HydratedBloc<ThemeEvent, ThemeState> {
  @override
  ThemeState get initialState =>
      super.initialState ?? ThemeState(Brightness.light);

  @override
  Stream<ThemeState> mapEventToState(ThemeEvent event) async* {
    yield* event.eventHandler(currentState: state, bloc: this);
  }

  @override
  ThemeState fromJson(Map<String, dynamic> json) {
    try {
      return ThemeState(
          json['brightness'] == 'dark' ? Brightness.dark : Brightness.light);
    } catch (_) {
      return null;
    }
  }

  @override
  Map<String, dynamic> toJson(ThemeState state) {
    try {
      return {
        'brightness': state.brightness == Brightness.dark ? 'dark' : 'light'
      };
    } catch (_) {
      return null;
    }
  }
}
