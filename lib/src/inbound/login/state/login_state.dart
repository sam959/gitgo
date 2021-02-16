part of '../bloc/login_bloc.dart';

@immutable
abstract class LoginState {
  final LoginStatus loginStatus;
  const LoginState(this.loginStatus);
}

class LoginInitial extends LoginState {
  const LoginInitial(LoginStatus loginStatus) : super(loginStatus);

}
