import 'package:shop_minions/logic/manage_db/manage_db_event.dart';
import 'package:shop_minions/logic/manage_db/manage_db_state.dart';
import 'package:shop_minions/data/web_server/remote_database.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ManageRemoteBloc extends Bloc<ManageEvent, ManageState> {
  ManageRemoteBloc() : super(InsertState());

  @override
  Stream<ManageState> mapEventToState(ManageEvent event) async* {
    if (event is UpdateCancel) {
      yield InsertState();
    } else if (event is SubmitEvent) {
      if (state is InsertState) {
        DatabaseRemoteServer.helper.insertPedido((event.pedidos));
      }
    }
  }
}
