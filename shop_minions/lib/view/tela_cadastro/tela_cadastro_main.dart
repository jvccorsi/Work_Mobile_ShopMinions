import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyTelaCadastro extends StatelessWidget {
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
      body: Container(
        color: Color.fromRGBO(253, 228, 65, 1),
      ),
    );
  }
}
