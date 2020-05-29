part of 'login_bloc.dart';

@immutable
abstract class LoginState extends Equatable {}

class LoginStateInitial extends LoginState {
  @override
  List<Object> get props => [];
}

class LoginStateLoading extends LoginState {
  @override
  List<Object> get props => [];
}

class LoginStateSuccessful extends LoginState {
  final CurrentUser user;

  LoginStateSuccessful(this.user);

  @override
  List<Object> get props => [];
}

class LoginStateFailed extends LoginState {
  final Object error;

  LoginStateFailed(this.error);

  @override
  List<Object> get props => [error];
}
