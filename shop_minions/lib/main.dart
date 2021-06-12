import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shop_minions/view/tela_login/tela_login_main.dart';
import 'package:shop_minions/view/tela_splash/splash.dart';

import 'logic/manage_db/manage_remote_db_bloc.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primaryColor: Color.fromRGBO(229, 237, 244, 1)),
      home: Splash(),

      //MainTelaLogin(),
    );
  }
}
