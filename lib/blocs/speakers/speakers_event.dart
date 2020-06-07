part of 'speakers_bloc.dart';

@immutable
abstract class SpeakersEvent {
  Stream<SpeakersState> eventHandler({
    SpeakersState currentState,
    SpeakersBloc bloc,
  });
}

class SpeakersEventFetch extends SpeakersEvent{
  @override
  Stream<SpeakersState> eventHandler({SpeakersState currentState, SpeakersBloc bloc}) async* {
    yield SpeakersStateLoading();
    var speakers = await SpeakersService.fetchAll();
    yield SpeakersStateLoaded(speakers);
  }

}
