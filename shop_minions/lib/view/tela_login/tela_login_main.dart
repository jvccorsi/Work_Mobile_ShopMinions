import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shop_minions/view/Tab_Bar_layout.dart';
import 'package:shop_minions/view/tela_cadastro/tela_cadastro_main.dart';

class MainTelaLogin extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Center(
            child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            RaisedButton(
                child: Text('Log in!'),
                onPressed: () {
                  Navigator.of(context).pushReplacement(
                    MaterialPageRoute(builder: (context) => MyTabBarLayout()),
                  );
                }),
            GestureDetector(
              child: Text(
                "Registre-se aqui",
                style: TextStyle(
                    decoration: TextDecoration.underline, color: Colors.blue),
              ),
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => MyTelaCadastro()),
                );
              },
            )
          ],
        )),
      ),
    );
  }
}
