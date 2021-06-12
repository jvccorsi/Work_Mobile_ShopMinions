/* import 'dart:async';
import 'dart:convert';
import 'dart:io';

import 'package:dio/dio.dart';
import 'package:shop_minions/model/login.dart';
import 'package:socket_io_client/socket_io_client.dart';

class DatabaseRemoveServer {
  static DatabaseRemoveServer helper = DatabaseRemoveServer._createInstance();
  DatabaseRemoveServer._createInstance();
  String databaseUrl = "http://192.168.0.201:3000/notes";
  Dio _dio = Dio();

  Future<int> insertlogin(Login login) async {
    await _dio.post(this.databaseUrl,
        options: Options(headers: {"Accept": "application/json"}),
        data: jsonEncode({"email": login.email, "senha": login.senha}));
    return 1;
  }

  Future<List<dynamic>> getLoginList() async {
    Response response = await _dio.request(this.databaseUrl,
        options: Options(method: "GET", headers: {
          "Accept": "application/json",
        }));
    List<Login> loginList = [];
    List<int> idList = [];
    response.data.forEach((element) {
      element["dataLocation"] = 2;
      Login login = Login.fromMap(element);
      loginList.add(login);
      idList.add(element["id"]);
    });
    return [loginList, idList];
  }

  Future<int> updateLogin(int loginId, Login login) async {
    await _dio.put(this.databaseUrl + "/$loginId",
        options: Options(headers: {"Accept": "application/json"}),
        data: jsonEncode({"email": login.email, "senha": login.senha}));
    return 1;
  }

  Future<int> deleteLogin(int loginId) async {
    await _dio.delete(this.databaseUrl + "/$loginId",
        options: Options(method: "GET", headers: {
          "Accept": "application/json",
        }));
    return 1;
  }

  /* 
   STREAM

  */
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

  static StreamController _controller;
}
*/