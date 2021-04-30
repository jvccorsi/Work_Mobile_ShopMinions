import 'package:flutter/cupertino.dart';
import 'package:shop_minions/view/carrinho/tela_carrinho_main.dart';
import 'package:flutter/material.dart';

class MainTela03 extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return MainTela03State();
  }
}

class MainTela03State extends State<MainTela03> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: (Container(
        child: Column(
          children: [
            submitButton(context),
          ],
        ),
      )),
    );
  }
}

Widget submitButton(BuildContext context) {
  return SizedBox(
    width: 400,
    height: 50,
    child: RaisedButton(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(18),
        side: BorderSide(color: Colors.grey),
      ),
      color: Colors.grey,
      textColor: Colors.white,
      child: Text("Clique aqui para selecionar o minion",
          style: TextStyle(fontSize: 18, fontFamily: 'PT Sans Bold')),
      onPressed: () {
        Navigator.of(context).push(
          MaterialPageRoute(builder: (context) => CarrinhoMain()),
        );
      },
    ),
  );
}
