import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:gitgo/src/inbound/login/state/login_status_enum.dart';
import 'package:meta/meta.dart';

part '../event/login_event.dart';

part '../state/login_state.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  LoginBloc() : super(LoginInitial(LoginStatus.logged_out));

  @override
  Stream<LoginState> mapEventToState(
    LoginEvent event,
  ) async* {
    // TODO: implement mapEventToState
  }
}
