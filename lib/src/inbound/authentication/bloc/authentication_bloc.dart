import 'dart:async';

import 'package:authentication_repository/authentication_repository.dart';
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/cupertino.dart';
import 'package:meta/meta.dart';

part '../event/authentication_event.dart';
part '../state/authentication_state.dart';

class AuthenticationBloc
    extends Bloc<AuthenticationEvent, AuthenticationState> {
  AuthenticationBloc(
      {@required AuthenticationRepository authenticationRepository})
      : assert(authenticationRepository != null),
        _authenticationRepository = authenticationRepository,
        super(const AuthenticationState.unknown()) {
    _authenticationStatusSubscription = _authenticationRepository.status.listen(
      (status) => add(AuthenticationStatusChanged(status)),
    );
  }

  final AuthenticationRepository _authenticationRepository;
  StreamSubscription<AuthenticationStatus> _authenticationStatusSubscription;

  @override
  Stream<AuthenticationState> mapEventToState(
    AuthenticationEvent event,
  ) async* {
    if (event is AuthenticationStatusChanged) {
      yield await _mapAuthenticationStatusChangedToState(event);
    } else if (event is AuthenticationLogoutRequested) {
      // logout
      _authenticationRepository.logOut();
    }
  }

  Future<AuthenticationState> _mapAuthenticationStatusChangedToState(
      AuthenticationStatusChanged event) async {
    switch (event.authenticationStatus) {
      case AuthenticationStatus.authenticated:
        return const AuthenticationState.authenticated();
        break;
      case AuthenticationStatus.unauthenticated:
        return const AuthenticationState.unauthenticated();
        break;
      case AuthenticationStatus.unknown:
        return const AuthenticationState.unknown();
        break;
      default:
        return AuthenticationState.unknown();
    }
  }

  @override
  Future<void> close() {
    _authenticationStatusSubscription?.cancel();
    _authenticationRepository.dispose();
    return super.close();
  }
}
