import 'package:flutter/cupertino.dart';
import 'package:shop_minions/view/carrinho/tela_carrinho_main.dart';
import 'package:flutter/material.dart';

class MainTela03 extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return MainTela03State();
  }
}

class MainTela03State extends State<MainTela03> {
  GlobalKey<FormState> formKey = new GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Center(
      child: (Container(
        width: 350,
        margin: EdgeInsets.all(5),
        decoration: BoxDecoration(
            color: Color.fromRGBO(53, 159, 255, 1),
            borderRadius: BorderRadius.circular(25),
            boxShadow: [BoxShadow(color:Colors.grey,blurRadius:10)]),
        child: Column(
          children: [
            Form(
              key:formKey,
              child: Column(
                children: [
                    Padding(
                    padding: const EdgeInsets.all(30),
                    child: title(),
                    ),
                     Row(
                       mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.person,
                            color: Colors.white,
                            size: 30,
                          ),
                          Container(
                            margin: EdgeInsets.only(right: 5),
                          ),
                          usernameFormField('Nome completo', false),
                        ],
                      ),
                      SizedBox(height:30,),
                    Row(
                       mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.email_outlined,
                            color: Colors.white,
                            size: 30,
                          ),
                          Container(
                            margin: EdgeInsets.only(right: 5),
                          ),
                          usernameFormField('Email', false),
                        ],
                      ),
                      SizedBox(height:30,),
                       Row(
                       mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.phone,
                            color: Colors.white,
                            size: 30,
                          ),
                          Container(
                            margin: EdgeInsets.only(right: 5),
                          ),
                          usernameFormField('Telefone', false),
                        ],
                      ),
                      SizedBox(height:30,),
                       Row(
                       mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.add_box,
                            color: Colors.white,
                            size: 30,
                          ),
                          Container(
                            margin: EdgeInsets.only(right: 5),
                          ),
                          selectMinion(context),
                        ],
                       ),
                       SizedBox(height: 40,),
                    Divider(height: 15,color: Colors.white,),
                    Padding(
                      padding: const EdgeInsets.all(35),
                      child: submitButton(),
                    ),
                ],
              ))
          ],
        ),
      )),
    );
  }
}

Widget selectMinion(BuildContext context) {
  return SizedBox(
    width: 280,
    height: 50,
    child: RaisedButton(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(18),
      ),
      color: Colors.white,
      child: Text("Clique aqui para selecionar o minion",
          style: TextStyle(
          fontFamily: 'PT Sans bold',
          fontSize: 18,
          color: Color.fromRGBO(116, 128, 139, 1),
        ),),
      onPressed: () {
        Navigator.of(context).push(
          MaterialPageRoute(builder: (context) => CarrinhoMain()),
        );
      },
    ),
  );
}

Widget submitButton() {
  return SizedBox(
    width: 300,
    height: 50,
    child: RaisedButton(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(18),
      ),
      color: Color.fromRGBO(17, 86, 149, 1),
      textColor: Colors.white,
      child: Text("Encomendar",
          style: TextStyle(fontSize: 22, fontFamily: 'PT Sans Bold',color: Colors.white)),
    ),
  );
}

 Widget usernameFormField(value, obscure) {
    return Container(
      width: 280,
      height: 50,
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

Widget title() {
  return Text(
    "Faça sua encomenda!",
    style: TextStyle(
      fontFamily: 'Bree Serif',
      fontSize: 23,
      color: Colors.white,
      fontWeight: FontWeight.bold,
    ),
  );
}
