part of 'schedule_bloc.dart';

@immutable
abstract class ScheduleEvent {
  Stream<ScheduleState> eventHandler(
      {ScheduleState currentState, ScheduleBloc bloc});
}

class ScheduleEventFetch extends ScheduleEvent {
  @override
  Stream<ScheduleState> eventHandler(
      {ScheduleState currentState, ScheduleBloc bloc}) async* {
    try {
      var schedule = await ScheduleService.getGroupedSchedule();
      //TODO: Fetch bookmarked sessions
      yield ScheduleStateLoaded(
        schedule: schedule,
        favorites: GroupedSchedule([]),
        day: 0,
      );
    } catch (e) {
      yield ScheduleStateError(e);
    }
  }
}

class ScheduleEventSelectDay extends ScheduleEvent {
  final int day;

  ScheduleEventSelectDay(this.day);

  @override
  Stream<ScheduleState> eventHandler(
      {ScheduleState currentState, ScheduleBloc bloc}) async* {
    if (currentState is ScheduleStateLoaded) {
      yield currentState.copyWith(day: day);
    }
  }
}
