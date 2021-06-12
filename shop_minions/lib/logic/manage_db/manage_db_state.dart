import 'package:shop_minions/model/pedido.dart';

abstract class ManageState {}

class UpdateState extends ManageState {
  int pedidoId;
  Pedido previousPedido;
  UpdateState({this.pedidoId, this.previousPedido});
}

class InsertState extends ManageState {}
