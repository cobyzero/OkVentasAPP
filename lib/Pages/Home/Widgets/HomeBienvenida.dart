import 'package:flutter/material.dart';
import 'package:okventasapp/Common/common.dart';
import 'package:okventasapp/Data/API.dart';

class HomeBienvenida extends StatelessWidget {
  int id;
  HomeBienvenida({super.key, required this.id});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20, top: 40, bottom: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              /**
               * Primer texto
               */
              const Text("Hola ", style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold)),
              /**
               * Segundo texto, con FutureBuilder por la API
               */
              myFuture(),
            ],
          ),
          /**
            * Tercer texto de recientes
            */
          Common.space(5),
          Text(
            "Busca lo que necesites aqui...",
            style: TextStyle(color: Colors.grey[700]),
          )
        ],
      ),
    );
  }

  myFuture() {
    return FutureBuilder(
        future: API.getCredenciales(id, "usersName"),
        builder: ((context, snapshot) {
          if (snapshot.hasData) {
            return Text(
              "${Common.getPrimerNombre(snapshot.data!)}!",
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
            );
          } else if (snapshot.hasError) {
            return const Text("Error data");
          } else {
            return const Text("Cargando...");
          }
        }));
  }
}
