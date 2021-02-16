part of '../bloc/login_bloc.dart';

@immutable
class LoginState extends Equatable {
  final AuthenticationStatus authenticationStatus;

  const LoginState._(
      {this.authenticationStatus = AuthenticationStatus.unknown});

  const LoginState.unknown() : this._();

  const LoginState.loggedIn()
      : this._(authenticationStatus: AuthenticationStatus.logged_in);

  const LoginState.loggedOut()
      : this._(authenticationStatus: AuthenticationStatus.logged_out);

  @override
  List<Object> get props => [authenticationStatus];
}
