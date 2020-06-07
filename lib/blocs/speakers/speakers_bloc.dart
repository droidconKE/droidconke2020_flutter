import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:droidconke2020_flutter/models/models.dart';
import 'package:droidconke2020_flutter/services/speakers_service.dart';
import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

part 'speakers_event.dart';

part 'speakers_state.dart';

class SpeakersBloc extends Bloc<SpeakersEvent, SpeakersState> {
  @override
  SpeakersState get initialState => SpeakersStateInitial();

  @override
  Stream<SpeakersState> mapEventToState(SpeakersEvent event) async* {
    yield* event.eventHandler(currentState: state, bloc: this);
  }
}
