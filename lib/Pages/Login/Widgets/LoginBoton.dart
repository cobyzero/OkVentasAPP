import 'package:flutter/material.dart';
import 'package:okventasapp/Data/API.dart';

class LoginBoton extends StatelessWidget {
  TextEditingController usuarioController;
  TextEditingController contrasenaController;
  API api = API();

  LoginBoton(
      {super.key,
      required this.usuarioController,
      required this.contrasenaController});

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      builder: (context, snapshot) {
        return ElevatedButton(
          onPressed: (() async {
            if (await api
                .sendLogin(usuarioController.text, contrasenaController.text)
                .whenComplete(() => {})) {
              Navigator.of(context).pushNamed("/Home", arguments: "sebastian");
            } else {
              print("datos invalidos");
            }
          }),
          style: ElevatedButton.styleFrom(
              backgroundColor: Colors.black87,
              padding: const EdgeInsets.only(
                  top: 25, bottom: 25, left: 100, right: 100)),
          child: const Text("Iniciar Sesion"),
        );
      },
    );
  }
}
