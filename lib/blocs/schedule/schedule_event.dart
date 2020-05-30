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
      var bookmarked = await ScheduleService.getGroupedBookmarks();
      yield ScheduleStateLoaded(
        schedule: schedule,
        favorites: bookmarked,
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

class ScheduleEventToggleBookmark extends ScheduleEvent {
  final int sessionId;

  ScheduleEventToggleBookmark(this.sessionId);

  @override
  Stream<ScheduleState> eventHandler(
      {ScheduleState currentState, ScheduleBloc bloc}) async* {
    await ScheduleService.toggleBookmark(sessionId);
    var bookmarked = await ScheduleService.getGroupedBookmarks();
    if (currentState is ScheduleStateLoaded) {
      yield currentState.copyWith(favorites: bookmarked);
    }
  }
}
