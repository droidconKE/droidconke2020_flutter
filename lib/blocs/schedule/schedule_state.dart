part of 'schedule_bloc.dart';

@immutable
abstract class ScheduleState extends Equatable {}

class ScheduleStateInitial extends ScheduleState {
  @override
  List<Object> get props => [];
}

class ScheduleStateLoaded extends ScheduleState {
  final GroupedSchedule schedule;
  final GroupedSchedule favorites;
  final int day;

  ScheduleStateLoaded({@required this.schedule, @required this.favorites, this.day = 0});

  ScheduleStateLoaded copyWith({
    GroupedSchedule schedule,
    GroupedSchedule favorites,
    int day,
  }) {
    return ScheduleStateLoaded(
      schedule: schedule ?? this.schedule,
      favorites: favorites ?? this.favorites,
      day: day ?? this.day,
    );
  }

  @override
  List<Object> get props => [schedule, favorites, day];
}

class ScheduleStateError extends ScheduleState {
  final Object error;

  ScheduleStateError(this.error);

  @override
  List<Object> get props => [error];
}
