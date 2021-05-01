import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shop_minions/view/tela03/tela03_main.dart';

TextStyle titulo = TextStyle(
    fontFamily: 'Bree Serif',
    fontSize: 20,
    color: Color.fromRGBO(12, 59, 102, 1),
    fontWeight: FontWeight.bold,
    letterSpacing: 2);

class CarrinhoMain extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(229, 237, 244, 1),
        title: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Compras',
                textAlign: TextAlign.center,
                style: titulo,
              ),
            ],
          ),
        ),
      ),
      body: Center(child: generateListView(context)),
    );
  }

  Widget margin_fixed_top() {
    return Container(margin: EdgeInsets.only(top: 15));
  }

  Widget titulo_function() {
    return Container(
      child: Text(
        'Indique a quantidade \ndesejada de cada minion!',
        style: TextStyle(
          fontFamily: 'Bree Serif',
          fontSize: 20,
          color: Color.fromRGBO(12, 59, 102, 1),
          fontWeight: FontWeight.bold,
        ),
        textAlign: TextAlign.center,
      ),
    );
  }

  GlobalKey<FormState> formKey = new GlobalKey<FormState>();
  Widget generateListView(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.all(8),
      children: <Widget>[
        titulo_function(),
        margin_fixed_top(),
        Container(
          child: Card(
            elevation: 8,
            color: Color.fromRGBO(229, 237, 244, 1),
            child: ListTile(
              title: Text(
                '#01 Engenheiro',
                style: TextStyle(
                  fontFamily: 'Bree Serif',
                  fontSize: 18,
                  color: Color.fromRGBO(69, 83, 94, 1),
                  fontWeight: FontWeight.bold,
                ),
              ),
              trailing: Form(
                // key: formKey,
                child: usernameFormField('Quantidade'),
              ),
              leading: Image.asset('assets/images/minion_01.png',
                  height: 50, width: 48),
            ),
          ),
        ),
        margin_fixed_top(),
        Container(
          child: Card(
            elevation: 8,
            color: Color.fromRGBO(229, 237, 244, 1),
            child: ListTile(
              title: Text(
                '#02 Instrumentista',
                style: TextStyle(
                  fontFamily: 'Bree Serif',
                  fontSize: 18,
                  color: Color.fromRGBO(69, 83, 94, 1),
                  fontWeight: FontWeight.bold,
                ),
              ),
              trailing: Form(
                // key: formKey,
                child: usernameFormField('Quantidade'),
              ),
              leading: Image.asset('assets/images/minion_02.png',
                  height: 50, width: 48),
            ),
          ),
        ),
        margin_fixed_top(),
        Container(
          child: Card(
            elevation: 8,
            color: Color.fromRGBO(229, 237, 244, 1),
            child: ListTile(
              title: Text(
                "#03 Chef Jacquin",
                style: TextStyle(
                  fontFamily: 'Bree Serif',
                  fontSize: 18,
                  color: Color.fromRGBO(69, 83, 94, 1),
                  fontWeight: FontWeight.bold,
                ),
              ),
              trailing: Form(
                //key: formKey,
                child: usernameFormField('Quantidade'),
              ),
              leading: Image.asset('assets/images/minion_03.png',
                  height: 50, width: 48),
            ),
          ),
        ),
        margin_fixed_top(),
        Container(
          child: Card(
            elevation: 8,
            color: Color.fromRGBO(229, 237, 244, 1),
            child: ListTile(
              title: Text(
                "#04 Wolverine",
                style: TextStyle(
                  fontFamily: 'Bree Serif',
                  fontSize: 18,
                  color: Color.fromRGBO(69, 83, 94, 1),
                  fontWeight: FontWeight.bold,
                ),
              ),
              trailing: Form(
                //key: formKey,
                child: usernameFormField('Quantidade'),
              ),
              leading: Image.asset('assets/images/minion_04.png',
                  height: 50, width: 48),
            ),
          ),
        ),
        margin_fixed_top(),
        Container(
          child: Card(
            elevation: 8,
            color: Color.fromRGBO(229, 237, 244, 1),
            child: ListTile(
              title: Text(
                "#05 James",
                style: TextStyle(
                  fontFamily: 'Bree Serif',
                  fontSize: 18,
                  color: Color.fromRGBO(69, 83, 94, 1),
                  fontWeight: FontWeight.bold,
                ),
              ),
              trailing: Form(
                //key: formKey,
                child: usernameFormField('Quantidade'),
              ),
              leading: Image.asset('assets/images/minion_05.png',
                  height: 50, width: 48),
            ),
          ),
        ),
        margin_fixed_top(),
        Container(
          child: Card(
            elevation: 8,
            color: Color.fromRGBO(229, 237, 244, 1),
            child: ListTile(
              title: Text(
                "#06 Psicopata",
                style: TextStyle(
                  fontFamily: 'Bree Serif',
                  fontSize: 18,
                  color: Color.fromRGBO(69, 83, 94, 1),
                  fontWeight: FontWeight.bold,
                ),
              ),
              trailing: Form(
                //key: formKey,
                child: usernameFormField('Quantidade'),
              ),
              leading: Image.asset('assets/images/minion_06.png',
                  height: 50, width: 48),
            ),
          ),
        ),
        margin_fixed_top(),
        Container(
          child: ListTile(
            title: RaisedButton(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(18),
                side: BorderSide(color: Color.fromRGBO(43, 105, 161, 1)),
              ),
              color: Color.fromRGBO(43, 105, 161, 1),
              textColor: Colors.white,
              child: Text("Confirmar",
                  style: TextStyle(fontSize: 18, fontFamily: 'PT Sans Bold')),
              onPressed: () {
                Navigator.of(context).pop(
                  MaterialPageRoute(builder: (context) => MainTela03()),
                );
              },
            ),
          ),
        ),
      ],
    );
  }

  Widget usernameFormField(value) {
    return Container(
      width: 100,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
      ),
      margin: EdgeInsets.all(5),
      child: TextFormField(
        keyboardType: TextInputType.number,
        style: TextStyle(
          fontFamily: 'PT Sans bold',
          fontSize: 14,
          color: Color.fromRGBO(116, 128, 139, 1),
        ),
        decoration: InputDecoration(
          hintText: '$value',
          contentPadding: EdgeInsets.fromLTRB(5, 3, 5, 3),
          border: InputBorder.none,
          focusedBorder: InputBorder.none,
          enabledBorder: InputBorder.none,
          errorBorder: InputBorder.none,
          disabledBorder: InputBorder.none,
        ),
      ),
    );
  }
}
