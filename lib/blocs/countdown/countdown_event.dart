part of 'countdown_bloc.dart';

@immutable
abstract class CountdownEvent {
  Stream<CountdownState> eventHandler(
      {CountdownState currentState, CountdownBloc bloc});
}

class CountdownEventCount extends CountdownEvent {
  @override
  Stream<CountdownState> eventHandler(
      {CountdownState currentState, CountdownBloc bloc}) async* {
    yield CountdownStateRunning(bloc.eventStartTime.difference(DateTime.now()));
    yield* CountdownTimer(
      bloc.eventStartTime.difference(DateTime.now()),
      Duration(seconds: 1),
    ).map((event) {
      if (event.remaining.inSeconds > 0) {
        return CountdownStateRunning(event.remaining);
      } else {
        return CountdownStateDone();
      }
    });
  }
}

class CountdownEventFinish extends CountdownEvent {
  @override
  Stream<CountdownState> eventHandler(
      {CountdownState currentState, CountdownBloc bloc}) async* {
    yield CountdownStateDone();
  }
}
