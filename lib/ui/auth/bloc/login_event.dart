part of 'login_bloc.dart';

@immutable
abstract class LoginEvent extends Equatable {
  Stream<LoginState> eventHandler({LoginState currentState, LoginBloc bloc});
}

class LoginEventWithGoogle extends LoginEvent {
  @override
  Stream<LoginState> eventHandler(
      {LoginState currentState, LoginBloc bloc}) async* {
    yield LoginStateLoading();
    try {
      final user = await bloc.authRepository.signInWithGoogle();
      yield LoginStateSuccessful(user);
    } catch (e) {
      yield LoginStateFailed(e);
    }
  }

  @override
  List<Object> get props => [];
}
