import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shop_minions/model/cadastro.dart';
import 'package:shop_minions/view/tela_login/tela_login_main.dart';

Cadastro cadastro_class = new Cadastro();
TextStyle style_padrao = TextStyle(
  fontFamily: 'PT Sans bold',
  fontSize: 20,
  color: Color.fromRGBO(116, 128, 139, 1),
);

class MyTelaCadastro extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return MyTelaCadastroState();
  }
}

class MyTelaCadastroState extends State<MyTelaCadastro> {
  GlobalKey<FormState> formKey = new GlobalKey<FormState>();
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(229, 237, 244, 1),
        title: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Cadastro',
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontFamily: 'Bree Serif',
                    fontSize: 20,
                    color: Color.fromRGBO(12, 59, 102, 1),
                    fontWeight: FontWeight.bold,
                    letterSpacing: 2),
              ),
            ],
          ),
        ),
      ),
      backgroundColor: Color.fromRGBO(253, 228, 65, 1),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(20),
          child: Center(
            child: Column(
              children: [
                Form(
                  key: formKey,
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Icon(
                            Icons.person,
                            color: Color.fromRGBO(116, 128, 139, 1),
                            size: 30,
                          ),
                          Container(
                            margin: EdgeInsets.only(right: 5),
                          ),
                          usernameFormField('Nome completo', false),
                        ],
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 30),
                      ),
                      Row(
                        children: [
                          Icon(
                            Icons.email_outlined,
                            color: Color.fromRGBO(116, 128, 139, 1),
                            size: 30,
                          ),
                          Container(
                            margin: EdgeInsets.only(right: 5),
                          ),
                          usernameFormField('Email', false),
                        ],
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 30),
                      ),
                      Row(
                        children: [
                          Icon(
                            Icons.people_alt_sharp,
                            color: Color.fromRGBO(116, 128, 139, 1),
                            size: 30,
                          ),
                          Container(
                            margin: EdgeInsets.only(right: 5),
                          ),
                          Text('Sexo:', style: style_padrao),
                        ],
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 10),
                      ),
                      Row(
                        children: [
                          myRadio(1),
                          Container(
                            margin: EdgeInsets.only(right: 5),
                          ),
                          Text("Masculino", style: style_padrao),
                        ],
                      ),
                      Row(
                        children: [
                          myRadio(2),
                          Container(
                            margin: EdgeInsets.only(right: 5),
                          ),
                          Text("Feminino", style: style_padrao),
                        ],
                      ),
                      Row(
                        children: [
                          myRadio(3),
                          Container(
                            margin: EdgeInsets.only(right: 5),
                          ),
                          Text("Prefiro não dizer", style: style_padrao),
                        ],
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 30),
                      ),
                      Row(
                        children: [
                          Icon(
                            Icons.lock_outline,
                            color: Color.fromRGBO(116, 128, 139, 1),
                            size: 30,
                          ),
                          Container(
                            margin: EdgeInsets.only(right: 5),
                          ),
                          usernameFormField('Senha', true),
                        ],
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 30),
                      ),
                      Row(
                        children: [
                          Icon(
                            Icons.lock_outline,
                            color: Color.fromRGBO(116, 128, 139, 1),
                            size: 30,
                          ),
                          Container(
                            margin: EdgeInsets.only(right: 5),
                          ),
                          usernameFormField('Confirme sua senha', true),
                        ],
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 30),
                      ),
                      Row(
                        children: [
                          Icon(
                            Icons.phone,
                            color: Color.fromRGBO(116, 128, 139, 1),
                            size: 30,
                          ),
                          Container(
                            margin: EdgeInsets.only(right: 5),
                          ),
                          usernameFormField('Telefone', false),
                        ],
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 30),
                      ),
                      Row(
                        children: [
                          Icon(
                            Icons.favorite,
                            color: Color.fromRGBO(43, 105, 161, 1),
                            size: 30,
                          ),
                          Container(
                            margin: EdgeInsets.only(right: 5),
                          ),
                          Text(
                            'O quanto você gosta de minions?',
                            style: style_padrao,
                          ),
                        ],
                      ),
                      mySlider(),
                      Container(
                        margin: EdgeInsets.only(top: 30),
                      ),
                      submitButton(context),
                      Container(
                        //margin: EdgeInsets.all(40),
                        alignment: Alignment.bottomRight,
                        child: Image.asset('assets/images/logo_criar_conta.png',
                            height: 140, width: 110),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget usernameFormField(value, obscure) {
    return Container(
      width: 300,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(29),
      ),
      child: TextFormField(
        obscureText: obscure,
        keyboardType: TextInputType.name,
        style: TextStyle(
          fontFamily: 'PT Sans bold',
          fontSize: 20,
          color: Color.fromRGBO(116, 128, 139, 1),
        ),
        decoration: InputDecoration(
          hintText: '$value',
          contentPadding: EdgeInsets.fromLTRB(20, 15, 20, 15),
          border: InputBorder.none,
          focusedBorder: InputBorder.none,
          enabledBorder: InputBorder.none,
          errorBorder: InputBorder.none,
          disabledBorder: InputBorder.none,
        ),
      ),
    );
  }

  Widget myRadio(int value) {
    return Radio(
      value: value,
      groupValue: cadastro_class.radioValue,
      activeColor: Colors.purple,
      fillColor: MaterialStateProperty.all(Color.fromRGBO(116, 128, 139, 1)),
      onChanged: (int inValue) {
        setState(() {
          print(inValue);
          cadastro_class.radioValue = inValue;
        });
      },
    );
  }

  Widget mySlider() {
    return SliderTheme(
      data: SliderThemeData(
        thumbColor: Color.fromRGBO(43, 105, 161, 1),
      ),
      child: Slider(
        activeColor: Color.fromRGBO(43, 105, 161, 1),
        inactiveColor: Color.fromRGBO(116, 128, 139, 1),
        value: cadastro_class.sliderValue,
        min: 0,
        max: 10,
        divisions: 10,
        label: cadastro_class.sliderValue.round().toString(),
        onChanged: (double value) {
          setState(() {
            print(value);
            cadastro_class.sliderValue = value;
          });
        },
      ),
    );
  }

  Widget submitButton(BuildContext context) {
    return SizedBox(
      height: 50,
      width: 400,
      child: RaisedButton(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(18.0),
          side: BorderSide(color: Color.fromRGBO(43, 105, 161, 1)),
        ),
        color: Color.fromRGBO(43, 105, 161, 1),
        textColor: Colors.white,
        child: Text("Criar Conta".toUpperCase(),
            style: TextStyle(fontSize: 20, fontFamily: 'PT Sans Bold')),
        onPressed: () {
          final snackBar = SnackBar(
            content: Text("Conta criada com sucesso"),
            backgroundColor: Color.fromRGBO(19, 139, 46, 1),
            duration: Duration(seconds: 10),
            action: SnackBarAction(
              label: 'Voltar ao login',
              textColor: Colors.white,
              onPressed: () {
                Navigator.of(context).pushReplacement(
                  MaterialPageRoute(builder: (context) => MainTelaLogin()),
                );
              },
            ),
          );
          _scaffoldKey.currentState.showSnackBar(snackBar);
        },
      ),
    );
  }
}
