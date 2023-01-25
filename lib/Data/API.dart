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

  static Future<String> getCredenciales(int id, String dato) async {
    Response response;

    Uri uri = Uri.http(url, "/api/users/getName/$id");

    response = await http.get(uri);

    if (response.statusCode == 404) {
      return "null";
    }

    var json = jsonDecode(response.body);

    return json[dato];
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

  static Future<List> getPost() async {
    Response response;

    Uri uri = Uri.http(url, "/api/users/post/get");

    response = await http.get(uri);

    if (response.statusCode == 404) {
      return [];
    }
    print(response.body);
    return jsonDecode(response.body);
  }
}
