import 'package:flutter/material.dart';
import 'package:okventasapp/Common/common.dart';
import 'package:okventasapp/Pages/Home/Widgets/HomeBienvenida.dart';
import 'package:okventasapp/Pages/Home/Widgets/HomeCategorias.dart';
import 'package:okventasapp/Pages/Home/Widgets/HomePublicaciones.dart';

class HomePage extends StatelessWidget {
  int id;

  HomePage({super.key, required this.id});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.grey[300],
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            /**
             * Texto Bienvenida y nombre
             */

            HomeBienvenida(
              id: id,
            ),

            /**
             * Categorias
             */

            HomeCategorias(),
            /**
             * Items de publicaciones
             */
            const Padding(
              padding: EdgeInsets.only(left: 20, bottom: 20, top: 20),
              child: Text(
                "Publicaciones Recientes",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
              ),
            ),
            HomePublicaciones()
          ],
        ),
      ),
    );
  }
}
