import 'package:flutter/material.dart';

import 'package:firebase_core/firebase_core.dart';
import 'package:shop_minions/view/wrapper.dart';
import 'logic/manage_db/manage_remote_db_bloc.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(Launcher());
}
 class Launcher extends StatelessWidget {

   @override
   Widget build(BuildContext context) {
     return MaterialApp(
      theme: ThemeData(primaryColor: Color.fromRGBO(229, 237, 244, 1)),
      home: Wrapper());
   }
 }
