import 'dart:convert';
import 'dart:ffi';
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:okventasapp/Models/usersModel.dart';

class HomePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _HomePage();
  }
}

class _HomePage extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black45,
      body: SafeArea(
        child: Column(
          children: [
            //Logo Inicio
            logoInicio()
            //TextoInicio
            //TextField Usuario
            //TextField Contraseña
            //TextButton contraseña olvidada
            //boton Iniciar sesion
            //TextButton registrarse
          ],
        ),
      ),
    );
  }

  logoInicio() {
    return Container(
        child: Image(
      image: AssetImage("./assets/logo_inicio.png"),
    ));
  }
}
