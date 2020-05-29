import 'dart:async';
import 'package:bloc/bloc.dart';
import 'package:droidconke2020_flutter/models/models.dart';
import 'package:droidconke2020_flutter/services/schedule_service.dart';
import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

part 'schedule_event.dart';

part 'schedule_state.dart';

class ScheduleBloc extends Bloc<ScheduleEvent, ScheduleState> {
  @override
  ScheduleState get initialState => ScheduleStateInitial();

  @override
  Stream<ScheduleState> mapEventToState(ScheduleEvent event) async* {
    yield* event.eventHandler(currentState: state, bloc: this);
  }
}
