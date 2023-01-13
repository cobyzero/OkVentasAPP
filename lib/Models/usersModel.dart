import 'dart:convert';

Users? usersFromJson(String str) => Users.fromJson(json.decode(str));

String usersToJson(Users? data) => json.encode(data!.toJson());

class Users {
  Users({
    this.nombre,
    this.edad,
  });

  String? nombre;
  int? edad;

  factory Users.fromJson(Map<String, dynamic> json) => Users(
        nombre: json["nombre"],
        edad: json["edad"],
      );

  Map<String, dynamic> toJson() => {
        "nombre": nombre,
        "edad": edad,
      };
}
