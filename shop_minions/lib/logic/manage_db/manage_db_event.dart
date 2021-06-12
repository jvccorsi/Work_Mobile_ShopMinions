import 'package:shop_minions/model/pedido.dart';

abstract class ManageEvent {}

class DeleteEvent extends ManageEvent {
  int pedidoId;
  DeleteEvent({this.pedidoId});
}

class UpdateRequest extends ManageEvent {
  int pedidoId;
  Pedido previousPedido;

  UpdateRequest({this.pedidoId, this.previousPedido});
}

class UpdateCancel extends ManageEvent {}

class SubmitEvent extends ManageEvent {
  Pedido pedidos;
  SubmitEvent({this.pedidos});
}
