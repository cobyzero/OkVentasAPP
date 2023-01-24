import 'package:flutter/material.dart';
import 'package:okventasapp/Common/common.dart';
import 'package:okventasapp/Pages/Home/Widgets/HomeBienvenida.dart';
import 'package:okventasapp/Pages/Home/Widgets/HomePublicaciones.dart';

class HomePage extends StatelessWidget {
  int id;

  HomePage({super.key, required this.id});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: myAppBar(),
      backgroundColor: Colors.white,
      body: SafeArea(
          child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          /**
               * Texto Bienvenida y nombre
               */

          HomeBienvenida(
            id: id,
          ),

          /**
               * Items de publicaciones
               */
          HomePublicaciones()
        ],
      )),
    );
  }

  AppBar myAppBar() {
    return AppBar(
      title: const Text(
        "Home",
        style: TextStyle(fontWeight: FontWeight.bold),
      ),
      backgroundColor: Colors.transparent,
      shadowColor: Colors.transparent,
      foregroundColor: Colors.black,
      centerTitle: true,
    );
  }
}
