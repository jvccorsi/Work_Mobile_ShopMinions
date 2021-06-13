import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shop_minions/logic/manage_auth/auth_bloc.dart';
import 'package:shop_minions/logic/manage_auth/auth_state.dart';
import 'package:shop_minions/view/Tab_Bar_layout.dart';

import 'my_app_screen.dart';
import 'package:flutter/material.dart';

class Wrapper extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //return MyApp();
    return BlocBuilder<AuthBloc, AuthState>(builder: (context, state) {
      if (state is Authenticated) {
       return MyTabBarLayout();
      }else{
       return MyApp();
      }
    });
  }
}
