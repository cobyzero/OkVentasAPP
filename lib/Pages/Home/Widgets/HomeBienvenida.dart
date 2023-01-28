import 'package:flutter/material.dart';
import 'package:okventasapp/Common/common.dart';
import 'package:okventasapp/Data/API.dart';

class HomeBienvenida extends StatelessWidget {
  int id;
  HomeBienvenida({super.key, required this.id});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            myFutureImagePerson(),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                /**
                 * Primer texto
                */
                Text("Bienvenido denuevo.. ",
                    style: TextStyle(fontSize: 15, color: Colors.grey[700])),
                /**
                 * Segundo texto, con FutureBuilder por la API
                */
                myFuture(),
              ],
            ),
          ],
        ),
      ],
    );
  }

  myFutureImagePerson() {
    return Padding(
      padding: const EdgeInsets.only(right: 20),
      child: FutureBuilder(
        future: API.getCredenciales(id, "usersImage"),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return Container(
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.black, width: 1),
                  borderRadius: BorderRadius.circular(60),
                  image: DecorationImage(image: NetworkImage(snapshot.data!))),
              width: 60,
              height: 60,
            );
          } else if (snapshot.hasError) {
            return const Text("Error data");
          } else {
            return const CircularProgressIndicator();
          }
        },
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
