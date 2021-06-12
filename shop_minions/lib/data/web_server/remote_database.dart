import 'dart:async';
import 'dart:convert';
import 'dart:io';

import 'package:dio/dio.dart';
import 'package:shop_minions/model/pedido.dart';
//import 'package:socket_io_client/socket_io_client.dart';

class DatabaseRemoveServer {
  static DatabaseRemoveServer helper = DatabaseRemoveServer._createInstance();
  DatabaseRemoveServer._createInstance();
  String databaseUrl = "http://192.168.0.201:3000/pedido";
  Dio _dio = Dio();

  Future<int> insertPedido(Pedido pedido) async {
    await _dio.post(this.databaseUrl,
        options: Options(headers: {"Accept": "application/json"}),
        data: jsonEncode(
          {
            "nome_completo": pedido.nome_completo,
            "email": pedido.email,
            "telefone": pedido.telefone,
            "id_minion": pedido.id_minion,
            "quantidade": pedido.quantidade,
          },
        ));
    return 1;
  }

  /* 
   STREAM


  notify() async {
    if (_controller != null) {
      var response = await getLoginList();
      _controller.sink.add(response);
    }
  }

  Stream get stream {
    if (_controller == null) {
      _controller = StreamController.broadcast();

      Socket socket = io(
          "http://192.168.0.201:3000",
          // "https://si700.herokuapp.com/",
          OptionBuilder().setTransports(['websocket']) // for Flutter or Dart VM
              .build());
      socket.on('invalidate', (_) => notify());
    }
    return _controller.stream.asBroadcastStream();
  }

  dispose() {
    if (!_controller.hasListener) {
      _controller.close();
      _controller = null;
    }
  }

  static StreamController _controller;  */
}
