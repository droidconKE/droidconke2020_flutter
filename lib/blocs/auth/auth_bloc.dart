import 'dart:async';
import 'package:droidconke2020_flutter/models/models.dart';
import 'package:equatable/equatable.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:meta/meta.dart';

part 'auth_event.dart';
part 'auth_state.dart';


class AuthBloc extends HydratedBloc<AuthEvent, AuthState> {
  @override
  AuthState get initialState {
    return super.initialState ?? AuthStateUnauthenticated();
  }

  @override
  Stream<AuthState> mapEventToState(AuthEvent event) async* {
    yield* event.eventHandler(currentState: state, bloc: this);
  }

  @override
  AuthState fromJson(Map<String, dynamic> json) {
    try {
      final currentUser = CurrentUser.fromJson(json);
      return AuthStateAuthenticated(currentUser: currentUser);
    } catch (_) {
      return null;
    }
  }

  @override
  Map<String, dynamic> toJson(AuthState state) {
    if (state is AuthStateAuthenticated) {
      return state.currentUser.toJson();
    } else {
      return null;
    }
  }
}


