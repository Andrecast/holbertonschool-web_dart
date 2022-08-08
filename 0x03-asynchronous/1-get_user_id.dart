import 'dart:convert';
import '1-util.dart';

Future<String> getUserId() async {
  var userId = await fetchUserData();

  var iduser = json.decode(userId);

  return iduser["id"];
}
