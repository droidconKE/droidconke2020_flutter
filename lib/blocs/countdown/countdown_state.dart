part of 'countdown_bloc.dart';

@immutable
abstract class CountdownState extends Equatable {}

class CountdownStateInitial extends CountdownState {
  @override
  List<Object> get props => [];
}

class CountdownStateRunning extends CountdownState {
  final Duration duration;

  CountdownStateRunning(this.duration);

  @override
  List<Object> get props => [duration];
}

class CountdownStateDone extends CountdownState {
  @override
  List<Object> get props => [];
}
