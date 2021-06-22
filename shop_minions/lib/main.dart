import 'package:flutter/material.dart';

import 'package:firebase_core/firebase_core.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shop_minions/view/wrapper.dart';
import 'logic/manage_auth/auth_bloc.dart';
import 'logic/manage_db/manage_remote_db_bloc.dart';
import 'package:flutter_phoenix/flutter_phoenix.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();//inicializando o firebase
  await Firebase.initializeApp();
 runApp(
    Phoenix(
      child: Launcher(),
    ),
  );
}
 class Launcher extends StatelessWidget {
   @override
   Widget build(BuildContext context) {
     return BlocProvider<AuthBloc>
     (create: (context)=>AuthBloc(),
       child: MaterialApp(
        theme: ThemeData(primaryColor: Color.fromRGBO(229, 237, 244, 1)),
        home: Wrapper()),
     );
   }
 }
