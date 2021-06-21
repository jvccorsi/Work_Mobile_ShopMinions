import 'package:cloud_firestore/cloud_firestore.dart';

class FirebaseRemoteServer {
  static String uid;
  static FirebaseRemoteServer helper = FirebaseRemoteServer._createInstance();
  FirebaseRemoteServer._createInstance();

  final CollectionReference usersCollection =
      FirebaseFirestore.instance.collection("users");

  includeUserData(String uid, String username, String name, String telefone,
      double valueMinion) async {
    await usersCollection.doc(uid).set({
      "username": username,
      "name": name,
      "telefone": telefone,
      "valueMinion": valueMinion
    });
  }
}
