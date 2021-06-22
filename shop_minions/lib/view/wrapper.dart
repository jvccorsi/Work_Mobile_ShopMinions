import 'package:flutter_bloc/flutter_bloc.dart' show BlocBuilder, BlocConsumer;
import 'package:shop_minions/logic/manage_auth/auth_bloc.dart';
import 'package:shop_minions/logic/manage_auth/auth_state.dart';
import 'package:shop_minions/view/Tab_Bar_layout.dart';

import 'my_app_screen.dart';
import 'package:flutter/material.dart';

class Wrapper extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //return MyApp();
    return BlocConsumer<AuthBloc, AuthState>(builder: (context, state) {
      if (state is Authenticated) {
        return MyTabBarLayout();//usuario ja entra logado no sistema
      } else {
        return MyApp();//usuario necessita se autenticar
      }
    },
    listener: (context, state) {
        if (state is AuthError) {
          showDialog(
              context: context,
              builder: (context) {
                return AlertDialog(
                  title: Text("Erro do Servidor"),
                  content: Text("${state.message}"),
                  actions: [
                    ElevatedButton(
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                        child: Text("Ok"))
                  ],
                );
              });
              print("aaaaaaaaaaaaaaaaaaaa");
        }
      },
    );
  }
}
