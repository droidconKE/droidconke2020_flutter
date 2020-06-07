part of 'speakers_bloc.dart';

@immutable
abstract class SpeakersState extends Equatable {}

class SpeakersStateInitial extends SpeakersState {
  @override
  List<Object> get props => [];
}

class SpeakersStateLoading extends SpeakersState {
  @override
  List<Object> get props => [];
}

class SpeakersStateLoaded extends SpeakersState {
  final List<Speaker> all;
  // List<Speaker> get featured => (all.toList()..shuffle()).take(4).toList();

  SpeakersStateLoaded(this.all);

  @override
  List<Object> get props => [all];
}
