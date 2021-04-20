import 'package:flutter/material.dart';
import 'dart:async';
import 'package:shop_minions/view/tela_login/tela_login_main.dart';

class Splash extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return MainSplashState();
  }
}

class MainSplashState extends State<Splash> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 6), () {
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (context) => MainTelaLogin()),
      );
    });
  }

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(28, 147, 255, 1),
      body: Container(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset('assets/images/minions_equipe.png'),
              Container(
                child: Column(
                  children: [
                    Text('Shop',
                        style: TextStyle(
                            fontFamily: 'Bree Serif',
                            color: Colors.white,
                            fontSize: 30)),
                    Text('Minions',
                        style: TextStyle(
                            fontFamily: 'Bree Serif',
                            color: Colors.white,
                            fontSize: 30)),
                    SizedBox(
                      height: 40,
                      width: 40,
                      child: CircularProgressIndicator(
                        valueColor: AlwaysStoppedAnimation(Colors.white),
                        strokeWidth: 7,
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
