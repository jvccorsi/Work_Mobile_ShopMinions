import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shop_minions/view/tela01/tela01_main.dart';
import 'package:shop_minions/view/tela02/tela02_main.dart';
import 'package:shop_minions/view/tela03/tela03_main.dart';

class MyTabBarLayout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primaryColor: Colors.pink),
      home: DefaultTabController(
          length: 3,
          initialIndex: 0,
          child: Scaffold(
            appBar: AppBar(
              title: Text("TabBarLayout"),
              bottom: TabBar(
                isScrollable: true,
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
