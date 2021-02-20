part of '../bloc/authentication_bloc.dart';

@immutable
class AuthenticationState extends Equatable {
  final AuthenticationStatus authenticationStatus;

  const AuthenticationState._(
      {this.authenticationStatus = AuthenticationStatus.unknown});

  const AuthenticationState.unknown() : this._();

  const AuthenticationState.authenticated()
      : this._(authenticationStatus: AuthenticationStatus.authenticated);

  const AuthenticationState.unauthenticated()
      : this._(authenticationStatus: AuthenticationStatus.unauthenticated);

  @override
  List<Object> get props => [authenticationStatus];
}
