import 'dart:convert';

import 'package:http/http.dart';

import 'package:http/http.dart' as http;

class API {
  Response? response;
  bool existe = false;

  Future<bool> sendLogin(String username, String password) async {
    Uri uri = Uri.http("192.168.0.105", "/api/users/login");

    var json = jsonEncode({"username": username, "password": password});

    response = await http.post(uri, body: json);

    if (response!.statusCode == 404) {
      return false;
    }

    return true;
  }
}
