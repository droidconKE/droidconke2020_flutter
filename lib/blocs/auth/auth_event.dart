part of 'auth_bloc.dart';

@immutable
abstract class AuthEvent {
  Stream<AuthState> eventHandler({AuthState currentState, AuthBloc bloc});
}

class AuthEventLogIn extends AuthEvent {
  final CurrentUser user;

  AuthEventLogIn(this.user);

  @override
  Stream<AuthState> eventHandler(
      {AuthState currentState, AuthBloc bloc}) async* {
    yield AuthStateAuthenticated(currentUser: user);
  }
}

class AuthEventLogout extends AuthEvent {
  @override
  Stream<AuthState> eventHandler(
      {AuthState currentState, AuthBloc bloc}) async* {
    yield AuthStateUnauthenticated();
  }
}
