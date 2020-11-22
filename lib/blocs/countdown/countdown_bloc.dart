import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';
import 'package:quiver/async.dart';

part 'countdown_event.dart';
part 'countdown_state.dart';

class CountdownBloc extends Bloc<CountdownEvent, CountdownState> {
  final DateTime eventStartTime;

  CountdownBloc(this.eventStartTime) : super(CountdownStateInitial()) {
    if (DateTime.now().isBefore(eventStartTime)) {
      this.add(CountdownEventCount());
    } else {
      this.add(CountdownEventFinish());
    }
  }

  @override
  Stream<CountdownState> mapEventToState(CountdownEvent event) async* {
    yield* event.eventHandler(currentState: state, bloc: this);
  }
}
