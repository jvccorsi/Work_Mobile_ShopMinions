import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shop_minions/view/tela01/tela01_main.dart';
import 'package:shop_minions/view/tela02/tela02_main.dart';
import 'package:shop_minions/view/tela03/tela03_main.dart';

class MyTabBarLayout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primaryColor: Color.fromRGBO(229, 237, 244, 1)),
      home: DefaultTabController(
          length: 3,
          initialIndex: 0,
          child: Scaffold(
            appBar: AppBar(
              title: Center(
                  child: Text(
                "MinionsStore",
                style: TextStyle(
                    color: Color.fromRGBO(12, 59, 102, 1),
                    fontSize: 30,
                    fontFamily: 'Bree Serif'),
              )),
              bottom: TabBar(
                tabs: [
                  Tab(
                      icon: Icon(Icons.shopping_bag_outlined),
                      text: 'Portifólio'),
                  Tab(icon: Icon(Icons.people), text: 'Sobre nós'),
                  Tab(
                      icon: Icon(Icons.shopping_cart_outlined),
                      text: 'Encomenda'),
                  // Tab(icon: Icon(Icons.add_to_photos_sharp), text: 'embaixo'),
                ],
              ),
            ),
            body: TabBarView(
              children: [
                MainTela01(),
                MainTela02(),
                MainTela03(),
              ],
            ),
          )),
    );
  }
}
