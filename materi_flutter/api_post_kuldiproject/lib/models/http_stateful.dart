import 'dart:convert';
import 'package:http/http.dart' as http;

class HttpStateful {
  String id, name, job, createdAt;

  HttpStateful(
      {required this.id,
      required this.name,
      required this.job,
      required this.createdAt});

  static Future<HttpStateful> connectApi(String name, String job) async {
    // ignore: non_constant_identifier_names
    Uri Url = Uri.parse("https://reqres.in/api/users");

    var hasilResponse = await http.post(
      Url,
      body: {
        "name": name,
        "job": job,
      },
    );

    var data = json.decode(hasilResponse.body);

    return HttpStateful(
      id: data['id'],
      name: data['name'],
      job: data['job'],
      createdAt: data['createdAt'],
    );
  }
}
