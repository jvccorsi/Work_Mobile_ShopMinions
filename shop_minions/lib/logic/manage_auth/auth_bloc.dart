/*Mapear eventos em estados */

import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shop_minions/auth_provider/firebase_auth.dart';
import 'package:shop_minions/logic/manage_auth/auth_event.dart';
import 'package:shop_minions/logic/manage_auth/auth_state.dart';
import 'package:shop_minions/model/user.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  FirebaseAuthenticationService _authenticationService;
  StreamSubscription _authenticationStream;
  AuthBloc() : super(Unauthenticad()) {
    _authenticationService = FirebaseAuthenticationService();
    _authenticationStream =
        _authenticationService.user.listen((UserModel userModel) {
      add(InnerServerEvent(userModel));
    });
  } //leitura de stream no construtor

  @override
  Stream<AuthState> mapEventToState(AuthEvent event) async* {
    if (event == null) {
      Unauthenticad();
    } else if (event is LoginAnonymousUser) {
      _authenticationService.signInAnonimo();
    } else if (event is InnerServerEvent) {
      if (event.userModel == null) {
        yield Unauthenticad(); //yield como se fosse um return -> faz a mudança de estados
      } else {
        yield Authenticated(user: event.userModel);
      }
      }else if(event is Logout){
        _authenticationService.signOut();
      }
    }
  }
