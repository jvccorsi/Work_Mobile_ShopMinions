import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shop_minions/view/tela03/tela03_main.dart';

class MainTela02 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        child: Column(
          children: <Widget>[
            margin_fixed_top(),
            text_sobre_nos(),
            hr_titulos(),
            photo_my(),
            margin_fixed_top(),
            titulo('História'),
            hr_titulos(),
            conteudo(
                "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book."),
            margin_fixed_top(),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  children: [
                    titulo('Missão'),
                    hr_titulos(),
                    conteudo('1.Lorem Ipsum\n2.Lorem Ipsum\n3.Lorem Ipsum'),
                  ],
                ),
                margin_fixed_right(),
                Column(
                  children: [
                    titulo('Visão'),
                    hr_titulos(),
                    conteudo('1.Lorem Ipsum\n2.Lorem Ipsum\n3.Lorem Ipsum'),
                  ],
                ),
                margin_fixed_right(),
                Column(
                  children: [
                    titulo('Valor'),
                    hr_titulos(),
                    conteudo('1.Lorem Ipsum\n2.Lorem Ipsum\n3.Lorem Ipsum'),
                  ],
                ),
              ],
            ),
            margin_fixed_top(),
            encomenda_text(),
            Divider(),
            SizedBox(
              height: 50,
              width: 250,
              child: RaisedButton(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(18.0),
                  side: BorderSide(color: Color.fromRGBO(43, 105, 161, 1)),
                ),
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => MainTela03()),
                  );
                },
                color: Color.fromRGBO(43, 105, 161, 1),
                textColor: Colors.white,
                child: Text("Clique aqui".toUpperCase(),
                    style: TextStyle(fontSize: 20, fontFamily: 'PT Sans Bold')),
              ),
            ),
            Container(
              //margin: EdgeInsets.all(40),
              alignment: Alignment.bottomRight,
              child: Image.asset('assets/images/footer_equipe.png',
                  height: 140, width: 110),
            )
          ],
        ),
      ),
    );
  }

  Widget hr_titulos() {
    return Container(
      width: 45,
      child: Divider(
        color: Color.fromRGBO(164, 183, 198, 1),
        height: 3,
      ),
    );
  }

  Widget text_sobre_nos() {
    return Container(
      child: Text('ShopMinions',
          style: TextStyle(
            color: Color.fromRGBO(12, 59, 102, 1),
            fontSize: 40,
            fontFamily: 'Bree Serif',
            letterSpacing: 5,
          )),
    );
  }

  Widget margin_fixed_top() {
    return Container(margin: EdgeInsets.only(top: 15));
  }

  Widget margin_fixed_right() {
    return Container(margin: EdgeInsets.only(right: 15));
  }

  Widget photo_my() {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(50),
        boxShadow: [
          BoxShadow(color: Color.fromRGBO(225, 234, 234, 1), blurRadius: 0)
        ],
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(50),
        child: Image.asset(
          'assets/images/Minions-Equipe2.png',
          width: 300,
          height: 300,
          fit: BoxFit.fitHeight,
        ),
      ),
      margin: EdgeInsets.only(top: 15),
    );
  }

  Widget titulo(titulo) {
    return Container(
      child: Text(titulo,
          style: TextStyle(
            color: Color.fromRGBO(12, 59, 102, 1),
            fontSize: 25,
            fontFamily: 'Bree Serif',
            letterSpacing: 2,
          )),
    );
  }

  Widget conteudo(conteudo) {
    return Center(
      child: Container(
        child: ConstrainedBox(
          constraints: BoxConstraints(maxWidth: 250),
          child: Text(
            conteudo,
            style: TextStyle(
              color: Color.fromRGBO(49, 60, 69, 1),
              fontSize: 13,
              fontFamily: 'PT Sans',
            ),
            textAlign: TextAlign.center,
          ),
        ),
      ),
    );
  }

  Widget encomenda_text() {
    return Container(
      child: Text('Faça agora mesmo a sua encomenda !!',
          style: TextStyle(
            color: Color.fromRGBO(12, 59, 102, 1),
            fontSize: 20,
            fontFamily: 'Bree Serif',
          )),
    );
  }

  Widget button_clique_aqui() {}
}
