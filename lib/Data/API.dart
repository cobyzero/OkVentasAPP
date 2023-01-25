import 'dart:convert';

import 'package:http/http.dart';

import 'package:http/http.dart' as http;

class API {
  static const url = "192.168.0.105";

  static Future<int> sendLogin(String username, String password) async {
    Response response;
    int id;
    Uri uri = Uri.http(url, "/api/users/login");

    var json = jsonEncode({"username": username, "password": password});

    response = await http.post(uri, body: json);

    if (response.statusCode == 404) {
      return 0;
    }

    return int.parse(response.body);
  }

  static Future<String> getNombre(int id) async {
    Response response;

    Uri uri = Uri.http(url, "/api/users/getName/$id");

    response = await http.get(uri);

    if (response.statusCode == 404) {
      return "Error no se encontro";
    }
    print(response.body);
    return jsonDecode(response.body);
  }

  static Future<List> getCategory() async {
    Response response;

    Uri uri = Uri.http(url, "/api/users/category/get");

    response = await http.get(uri);

    if (response.statusCode == 404) {
      return [];
    }
    return jsonDecode(response.body);
  }
}
