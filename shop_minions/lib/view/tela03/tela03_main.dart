import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shop_minions/logic/manage_db/manage_db_event.dart';
import 'package:shop_minions/logic/manage_db/manage_remote_db_bloc.dart';
import 'package:shop_minions/model/pedido.dart';
import 'package:flutter/material.dart';

class MainTela03 extends StatelessWidget {
  GlobalKey<FormState> formKey = new GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    Pedido pedido_insert = new Pedido();
    return SingleChildScrollView(
      child: Center(
        child: (Container(
          width: 350,
          margin: EdgeInsets.all(5),
          decoration: BoxDecoration(
              color: Color.fromRGBO(53, 159, 255, 1),
              borderRadius: BorderRadius.circular(25),
              boxShadow: [BoxShadow(color: Colors.grey, blurRadius: 10)]),
          child: Column(
            children: [
              Form(
                  key: formKey,
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
                          usernameFormField_Nome_Completo(
                              'Nome completo', false, pedido_insert),
                        ],
                      ),
                      SizedBox(
                        height: 30,
                      ),
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
                          usernameFormField_Email(
                              'Email', false, pedido_insert),
                        ],
                      ),
                      SizedBox(
                        height: 30,
                      ),
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
                          usernameFormField_Telefone(
                              'Telefone', false, pedido_insert),
                        ],
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.add,
                            color: Colors.white,
                            size: 30,
                          ),
                          Container(
                            margin: EdgeInsets.only(right: 5),
                          ),
                          usernameFormField_Id('Id', false, pedido_insert),
                        ],
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.add_business,
                            color: Colors.white,
                            size: 30,
                          ),
                          Container(
                            margin: EdgeInsets.only(right: 5),
                          ),
                          usernameFormField_Quantidade(
                              'Quantidade', false, pedido_insert),
                        ],
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Divider(
                        height: 15,
                        color: Colors.white,
                      ),
                      Padding(
                          padding: const EdgeInsets.all(35),
                          child: RaisedButton(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(18),
                              ),
                              color: Color.fromRGBO(17, 86, 149, 1),
                              textColor: Colors.white,
                              child: Text("Encomendar",
                                  style: TextStyle(
                                      fontSize: 22,
                                      fontFamily: 'PT Sans Bold',
                                      color: Colors.white)),
                              onPressed: () {
                                if (formKey.currentState.validate()) {
                                  formKey.currentState.save();
                                  BlocProvider.of<ManageRemoteBloc>(context)
                                      .add(SubmitEvent(pedidos: pedido_insert));
                                  BlocProvider.of<ManageRemoteBloc>(context)
                                      .add(SubmitEvent(pedidos: pedido_insert));
                                }
                              })),
                    ],
                  ))
            ],
          ),
        )),
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

  Widget usernameFormField_Nome_Completo(value, obscure, Pedido pedido_insert) {
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
        onSaved: (value_input) {
          pedido_insert.nome_completo = value_input;
        },
      ),
    );
  }

  Widget usernameFormField_Email(value, obscure, Pedido pedido_insert) {
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
        onSaved: (value_input) {
          pedido_insert.email = value_input;
        },
      ),
    );
  }

  Widget usernameFormField_Telefone(value, obscure, Pedido pedido_insert) {
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
        onSaved: (value_input) {
          pedido_insert.telefone = value_input;
        },
      ),
    );
  }

  Widget usernameFormField_Id(value, obscure, Pedido pedido_insert) {
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
        onSaved: (value_input) {
          pedido_insert.id_minion = int.parse(value_input);
        },
      ),
    );
  }

  Widget usernameFormField_Quantidade(value, obscure, Pedido pedido_insert) {
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
        onSaved: (value_input) {
          pedido_insert.quantidade = int.parse(value_input);
        },
      ),
    );
  }
}
