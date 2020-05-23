part of 'theme_bloc.dart';

@immutable
abstract class ThemeEvent {
  Stream<ThemeState> eventHandler({ThemeState currentState, ThemeBloc bloc});
}

class ThemeEventToggle extends ThemeEvent {
  @override
  Stream<ThemeState> eventHandler(
      {ThemeState currentState, ThemeBloc bloc}) async* {
    yield ThemeState(currentState.brightness == Brightness.dark
        ? Brightness.light
        : Brightness.dark);
  }
}
