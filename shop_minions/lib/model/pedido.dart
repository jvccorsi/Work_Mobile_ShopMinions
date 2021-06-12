class Pedido {
  int _dataLocation;
  //String
  String _email;
  String _nome_completo;
  String _telefone;
  //Int
  int _id_minion;
  int _quantidade;

  Pedido() {
    /*
      0 = undefined
      1 = local
      2 = internet
    */
    _dataLocation = 1;
    _email = "";
    _nome_completo = "";
    _telefone = "";
    _id_minion = 0;
    _quantidade = 0;
  }
//Receber um map(dicionario) para instanciar os atrb.
  Pedido.fromMap(map) {
    this._email = map["email"];
    this._nome_completo = map["senha"];
    this._telefone = map["senha"];
    this._id_minion = map["senha"];
    this._quantidade = map["senha"];

    this._dataLocation = map["dataLocation"];
  }
  //String
  String get email => _email;
  String get nome_completo => _nome_completo;
  String get telefone => _telefone;
  //Integer
  int get id_minion => _id_minion;
  int get quantidade => _quantidade;
  int get dataLocation => _dataLocation;

  set email(String newemail) {
    if (newemail.length > 0) {
      this._email = newemail;
    }
  }

  set dataLocation(int newLocation) {
    if (newLocation > 0 && newLocation < 3) {
      this._dataLocation = newLocation;
    }
  }

  toMap() {
    var map = Map<String, dynamic>();
    map["email"] = _email;
    map["nome_completo"] = _nome_completo;
    map["telefone"] = _telefone;
    map["id_minion"] = _id_minion;
    map["quantidade"] = _quantidade;
    return map;
  }
}
