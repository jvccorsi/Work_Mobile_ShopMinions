import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

TextStyle titulo = TextStyle(
    fontFamily: 'Bree Serif',
    fontSize: 20,
    color: Color.fromRGBO(12, 59, 102, 1),
    fontWeight: FontWeight.bold,
    letterSpacing: 2);

class CarrinhoMain extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
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
      body: Center(child: generateListView()),
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
  Widget generateListView() {
    return ListView(
      padding: const EdgeInsets.all(8),
      children: <Widget>[
        titulo_function(),
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
              leading: Image.asset('assets/images/logo_criar_conta.png',
                  height: 50, width: 48),
            ),
          ),
        ),
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
              leading: Image.asset('assets/images/logo_criar_conta.png',
                  height: 50, width: 48),
            ),
          ),
        ),
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
                //key: formKey,
                child: usernameFormField('Quantidade'),
              ),
              leading: Image.asset('assets/images/logo_criar_conta.png',
                  height: 50, width: 48),
            ),
          ),
        ),
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
                //key: formKey,
                child: usernameFormField('Quantidade'),
              ),
              leading: Image.asset('assets/images/logo_criar_conta.png',
                  height: 50, width: 48),
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
        keyboardType: TextInputType.name,
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
