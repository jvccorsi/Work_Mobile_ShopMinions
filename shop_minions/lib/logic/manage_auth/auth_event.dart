import 'package:firebase_auth/firebase_auth.dart';
import 'package:shop_minions/model/user.dart';

abstract class AuthEvent {}

class RegisterUser extends AuthEvent {
  String username;
  String password;
  String name;
  String telefone;
  double valueMinion;
}

class LoginUser extends AuthEvent {
  String username;
  String password;
}

class LoginAnonymousUser extends AuthEvent {}

class Logout extends AuthEvent {}

class InnerServerEvent extends AuthEvent {
  final UserModel userModel;
  InnerServerEvent(this.userModel);
}
