import 'dart:async';
import 'dart:convert';
import 'dart:io';

import 'package:dio/dio.dart';
import 'package:shop_minions/model/pedido.dart';
import 'package:socket_io_client/socket_io_client.dart';

class DatabaseRemoteServer {
  static DatabaseRemoteServer helper = DatabaseRemoteServer._createInstance();
  DatabaseRemoteServer._createInstance();
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

  //STREAM
  Stream get stream {
    if (_controller == null) {
      _controller = StreamController.broadcast();

      Socket socket = io(
          "http://192.168.0.201:3000",
          // "https://si700.herokuapp.com/",
          OptionBuilder().setTransports(['websocket']) // for Flutter or Dart VM
              .build());
      socket.on('invalidate', (data) => print(data));
    }
    return _controller.stream.asBroadcastStream();
  }

  dispose() {
    if (!_controller.hasListener) {
      _controller.close();
      _controller = null;
    }
  }

  static StreamController _controller;
}

void main() async {
  DatabaseRemoteServer pedido_database = DatabaseRemoteServer.helper;
  Pedido pedido = Pedido();
  pedido.email = ('aoaoaooa');
  pedido.nome_completo = ('aa');
  pedido.id_minion = 1;
  pedido.quantidade = 10;
  pedido.telefone = '19994753282';
  pedido_database.insertPedido(pedido);
}
