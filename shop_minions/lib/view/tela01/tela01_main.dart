import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shop_minions/view/tela_login/tela_login_main.dart';

class MainTela01 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child:Column(//column p/ tela inteira
      children: <Widget> [
      Container(
         child: Row(//row p/ deixar dois minion numa linha
           mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
          Expanded(child:Minion_item01(),),
          Expanded(child:Minion_item02(),),
        ],
      ),
      ),

      Padding(
        padding: const EdgeInsets.only(top: 25),
        child: Divider(height: 15,color: Colors.grey,),
      ),

      Container(
         child: Row(
           mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
          Expanded(child:Minion_item03(),),
          Expanded(child:Minion_item04(),),
        ],
      ),
      ),

       Padding(
        padding: const EdgeInsets.only(top: 25),
        child: Divider(height: 15,color: Colors.grey,),
      ),
      Container(
         child: Row(
           mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
          Expanded(child:Minion_item05(),),
          Expanded(child:Minion_item06(),),
        ],
      ),
      ),
      SizedBox(height:20),
    ],
    )
    ); 
    
  }

  /*Widget container_tipo() {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(25),
        color: Color.fromRGBO(253, 228, 65, 1),
        boxShadow: [BoxShadow(color: Colors.grey,blurRadius: 25)],
      ),
      child: Text("Tipo - ##", style: TextStyle(fontSize: 22,fontWeight: FontWeight.bold),),
      width:135,
      height: 54,
      padding: EdgeInsets.all(15),
      margin: EdgeInsets.all(15),
    );
  }*/

  Widget Minion_item01() {
    return Column(
      children: [
        Container(
          padding: EdgeInsets.all(16),
          height: 150,
          width: 140,
          child: ClipRRect(
              borderRadius: BorderRadius.circular(30),
              child: Image.asset('assets/images/minion_01.png'),
          ),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(25),
            border: Border.all(color: Colors.black),
          ),
          margin: EdgeInsets.only(top: 35),
        ),
        Text("#01 Engenheiro", style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),),
        Text("Disponivel", style: TextStyle(fontSize: 15,),),
      ],
    );
  }

  Widget Minion_item02() {
    return Column(
      children: [
        Container(
          padding: EdgeInsets.all(16),
          height: 150,
          width: 140,
          child: ClipRRect(
              borderRadius: BorderRadius.circular(30),
              child: Image.asset('assets/images/minion_02.png'),
          ),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(25),
            border: Border.all(color: Colors.black),
          ),
          margin: EdgeInsets.only(top: 35),
        ),
        Text("#02 Instrumentista", style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),),
        Text("Disponivel", style: TextStyle(fontSize: 15,),),
      ],
    );
  }

  Widget Minion_item03() {
    return Column(
      children: [
        Container(
          padding: EdgeInsets.all(16),
          height: 150,
          width: 140,
          child: ClipRRect(
              borderRadius: BorderRadius.circular(30),
              child: Image.asset('assets/images/minion_03.png'),
          ),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(25),
            border: Border.all(color: Colors.black),
          ),
          margin: EdgeInsets.only(top: 35),
        ),
        Text("#03 Chef Jacquin", style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),),
        Text("Disponivel", style: TextStyle(fontSize: 15,),),
      ],
    );
  }

  Widget Minion_item04() {
    return Column(
      children: [
        Container(
          padding: EdgeInsets.all(16),
          height: 150,
          width: 140,
          child: ClipRRect(
              borderRadius: BorderRadius.circular(30),
              child: Image.asset('assets/images/minion_04.png'),
          ),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(25),
            border: Border.all(color: Colors.black),
          ),
          margin: EdgeInsets.only(top: 35),
        ),
        Text("#04 Wolverine", style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),),
        Text("Disponivel", style: TextStyle(fontSize: 15,),),
      ],
    );
  }

  Widget Minion_item05() {
    return Column(
      children: [
        Container(
          padding: EdgeInsets.all(16),
          height: 150,
          width: 140,
          child: ClipRRect(
              borderRadius: BorderRadius.circular(30),
              child: Image.asset('assets/images/minion_05.png'),
          ),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(25),
            border: Border.all(color: Colors.black),
          ),
          margin: EdgeInsets.only(top: 35),
        ),
        Text("#05 James", style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),),
        Text("Disponivel", style: TextStyle(fontSize: 15,),),
      ],
    );
  }

  Widget Minion_item06() {
    return Column(
      children: [
        Container(
          padding: EdgeInsets.all(16),
          height: 150,
          width: 140,
          child: ClipRRect(
              borderRadius: BorderRadius.circular(30),
              child: Image.asset('assets/images/minion_06.png'),
          ),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(25),
            border: Border.all(color: Colors.black),
          ),
          margin: EdgeInsets.only(top: 35),
        ),
        Text("#06 Psicopata", style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),),
        Text("Disponivel", style: TextStyle(fontSize: 15,),),
      ],
    );
  }

}
