import 'package:flutter/material.dart';
import 'package:okventasapp/Data/API.dart';

class MyAppBar extends StatelessWidget {
  const MyAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    var id = ModalRoute.of(context)!.settings.arguments as int;

    return Padding(
      padding: const EdgeInsets.only(top: 15, bottom: 10, left: 18),
      child: Container(
        child: Row(
          children: [myTextNombre(id)],
        ),
      ),
    );
  }

  myTextNombre(int id) {
    return FutureBuilder(
      future: API.getNombre(id),
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "Hola",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
              ),
              Text(
                "${snapshot.data}",
                style: TextStyle(fontSize: 21),
              ),
            ],
          );
        } else if (snapshot.hasError) {
          return Text("erro data");
        } else {
          return Text("Cargando");
        }
      },
    );
  }
}
