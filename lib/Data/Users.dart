import 'dart:convert';

import "package:http/http.dart" as http;

class UsersData {
  Future<List> getData() async {
    var url = Uri.http("localhost", "/api/users");
    http.Response data = await http.get(url);

    List h = json.decode(data.body);

    return h;
  }
}
