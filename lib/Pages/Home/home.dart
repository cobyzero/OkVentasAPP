import 'package:flutter/material.dart';
import 'package:okventasapp/Pages/Home/Widgets/botonLogin.dart';
import 'package:okventasapp/Pages/Home/Widgets/logo.dart';
import 'package:okventasapp/Pages/Home/Widgets/textfield.dart';
import 'package:okventasapp/Pages/Home/Widgets/textoBienvenida.dart';
import 'package:okventasapp/Pages/Home/Widgets/textoContrasenaPerdida.dart';
import 'package:okventasapp/Pages/Home/Widgets/textoO.dart';
import 'package:okventasapp/Pages/Home/Widgets/textoRegistrarse.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<StatefulWidget> createState() {
    return _HomePage();
  }
}

class _HomePage extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[300],
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Logo(), // Logo
              space(30),
              const TextoBienvenida(),
              space(20),
              MyTextField(
                icon: const Icon(Icons.person),
                texto: "Usuario",
              ),
              MyTextField(
                icon: const Icon(Icons.password),
                texto: "Contraseña",
              ),
              TextoContrasenaPerdida(),
              space(10),
              BotonLogin(),
              space(30),
              TextoO(),
              space(20),
              TextoRegistrarse()
            ],
          ),
        ));
  }

  space(double num) {
    return SizedBox(
      height: num,
    );
  }
}
