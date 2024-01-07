import 'dart:convert';
import 'package:http/http.dart' as http;

class HttpStatefulGet {
  String id, email, fullname, avatar;

  HttpStatefulGet(
      {required this.id,
      required this.email,
      required this.fullname,
      required this.avatar});

  static Future<HttpStatefulGet> connectApi(String id) async {
    Uri url = Uri.parse("https://reqres.in/api/users/$id");

    var hasilResponse = await http.get(url);

    var data = (json.decode(hasilResponse.body))["data"];

    return HttpStatefulGet(
        id: data['id'],
        email: data['email'],
        fullname: data['first_name'] + "" + data['last_name'],
        avatar: data['avatar']);
  }
}
