import 'package:shop_minions/model/user.dart';

abstract class AuthState {}

class Unauthenticad extends AuthState {}

class Authenticated extends AuthState {
  final UserModel user;
  Authenticated({this.user});
}

class AuthError extends AuthState {
  final String message;
  AuthError({this.message});
}
