import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shop_minions/model/cadastro.dart';

Cadastro cadastro_class = new Cadastro();

class MyTelaCadastro extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return TelaCadastroState();
  }
}

class TelaCadastroState extends State<MyTelaCadastro> {
  GlobalKey<FormState> formKey = new GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(229, 237, 244, 1),
        title: Center(
          child: Column(
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
      backgroundColor: Color.fromRGBO(253, 217, 0, 1),
      body: Container(
        padding: const EdgeInsets.all(40.0),
        child: Center(
          child: Column(
            children: [
              Form(
                key: formKey,
                child: Column(
                  children: [
                    usernameFormField(),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget usernameFormField() {
    return Container(
      width: 350,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(29),
      ),
      child: TextFormField(
        keyboardType: TextInputType.name,
        style: TextStyle(
          fontFamily: 'PT Sans bold',
          fontSize: 20,
          color: Color.fromRGBO(116, 128, 139, 1),
        ),
        decoration: InputDecoration(
          hintText: "Nome completo",
          icon: Icon(
            Icons.person,
            color: Color.fromRGBO(116, 128, 139, 1),
            size: 30,
          ),
          contentPadding: EdgeInsets.fromLTRB(2.0, 15, 20, 15),
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
