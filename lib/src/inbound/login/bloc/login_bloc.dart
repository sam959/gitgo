import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/cupertino.dart';
import 'package:gitgo/src/inbound/login/state/authentication_status.dart';
import 'package:meta/meta.dart';

part '../event/login_event.dart';

part '../state/login_state.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  LoginBloc() : super(LoginState.unknown());

  @override
  Stream<LoginState> mapEventToState(
    LoginEvent event,
  ) async* {
    if (event is LoginStatusChangedEvent) {
      yield await _mapLoginStatusChangedToState(event);
    } else if (event is LogoutRequestedEvent) {
      // logout
      // _authenticationRepository.logOut();
    }
  }

  Future<LoginState> _mapLoginStatusChangedToState(
      LoginStatusChangedEvent event) async {
    switch (event.loginStatus) {
      case AuthenticationStatus.logged_in:
        return const LoginState.loggedIn();
        break;
      case AuthenticationStatus.logged_out:
        return const LoginState.loggedOut();
        break;
      case AuthenticationStatus.unknown:
        return const LoginState.unknown();
        break;
      default:
        return LoginState.unknown();
    }
  }
}
