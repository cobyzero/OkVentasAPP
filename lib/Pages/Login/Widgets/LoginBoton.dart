import 'package:flutter/material.dart';
import 'package:okventasapp/Data/API.dart';

class LoginBoton extends StatelessWidget {
  TextEditingController usuarioController;
  TextEditingController contrasenaController;

  LoginBoton({super.key, required this.usuarioController, required this.contrasenaController});

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      builder: (context, snapshot) {
        return ElevatedButton(
          onPressed: (() async {
            if (await API.sendLogin(usuarioController.text, contrasenaController.text) != 0) {
              Navigator.of(context).popAndPushNamed("/Home",
                  arguments:
                      await API.sendLogin(usuarioController.text, contrasenaController.text));
            } else if (await API.sendLogin(usuarioController.text, contrasenaController.text) ==
                0) {
              // ignore: use_build_context_synchronously
              showDialog(
                  barrierDismissible: false,
                  context: context,
                  builder: (context) {
                    return AlertDialog(
                      title: const Text("Datos invalidos"),
                      actions: [
                        OutlinedButton(
                            onPressed: () {
                              Navigator.of(context).pop();
                            },
                            child: const Text("Aceptar"))
                      ],
                    );
                  });
            } else {
              // ignore: use_build_context_synchronously
              showDialog(
                  barrierDismissible: false,
                  context: context,
                  builder: (context) {
                    return AlertDialog(
                      title: const Text("Error en el servidor"),
                      actions: [
                        OutlinedButton(
                            onPressed: () {
                              Navigator.of(context).pop();
                            },
                            child: const Text("Aceptar"))
                      ],
                    );
                  });
            }
          }),
          style: ElevatedButton.styleFrom(
              backgroundColor: Colors.black87,
              padding: const EdgeInsets.only(top: 25, bottom: 25, left: 100, right: 100)),
          child: const Text("Iniciar Sesion"),
        );
      },
    );
  }
}
