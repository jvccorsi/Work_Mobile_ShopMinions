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
        width: 350,
        margin: EdgeInsets.all(5),
        decoration: BoxDecoration(
            color: Color.fromRGBO(53, 159, 255, 1),
            borderRadius: BorderRadius.circular(25)),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(30),
              child: title(),
            ),
            selectMinion(context),
            Divider(height: 15,color: Colors.white,),
            Padding(
              padding: const EdgeInsets.all(12),
              child: submitButton(),
            ),
          ],
        ),
      )),
    );
  }
}

Widget selectMinion(BuildContext context) {
  return SizedBox(
    width: 300,
    height: 50,
    child: RaisedButton(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(18),
        side: BorderSide(color: Color.fromRGBO(17, 86, 149, 1)),
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

Widget submitButton() {
  return SizedBox(
    width: 300,
    height: 50,
    child: RaisedButton(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(18),
      ),
      color: Color.fromRGBO(17, 86, 149, 1),
      textColor: Colors.white,
      child: Text("Encomendar",
          style: TextStyle(fontSize: 22, fontFamily: 'PT Sans Bold',color: Colors.white)),
    ),
  );
}

Widget title() {
  return Text(
    "Faça sua encomenda",
    style: TextStyle(
      fontFamily: 'Bree Serif',
      fontSize: 23,
      color: Colors.white,
      fontWeight: FontWeight.bold,
    ),
  );
}
