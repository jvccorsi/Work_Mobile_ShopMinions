import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shop_minions/view/tela_login/tela_login_main.dart';

class MainTela01 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blue[50],
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          RaisedButton(
              child: Text('Logout'),
              onPressed: () {
                Navigator.of(context).pushReplacement(
                  MaterialPageRoute(builder: (context) => MainTelaLogin()),
                );
              })
        ],
      ),
    );
  }
}
