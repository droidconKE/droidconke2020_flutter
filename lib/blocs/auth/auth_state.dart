part of 'auth_bloc.dart';

abstract class AuthState extends Equatable {}

class AuthStateInitial extends AuthState {
  @override
  List<Object> get props => [];
}

class AuthStateUnauthenticated extends AuthState {
  @override
  List<Object> get props => [];
}

class AuthStateAuthenticated extends AuthState {
  final CurrentUser currentUser;

  AuthStateAuthenticated({@required this.currentUser});

  @override
  List<Object> get props => [currentUser];
}
