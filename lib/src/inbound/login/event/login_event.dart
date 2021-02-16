part of '../bloc/login_bloc.dart';

@immutable
abstract class LoginEvent extends Equatable {
  const LoginEvent();

  @override
  List<Object> get props => [];
}

class LoginStatusChangedEvent extends LoginEvent {
  const LoginStatusChangedEvent(this.loginStatus);

  final AuthenticationStatus loginStatus;

  @override
  List<Object> get props => [loginStatus];
}

class LogoutRequestedEvent extends LoginEvent {}
