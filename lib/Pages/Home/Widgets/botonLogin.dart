import 'package:flutter/material.dart';

class BotonLogin extends StatelessWidget {
  const BotonLogin({super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: (() {}),
      style: ElevatedButton.styleFrom(
          backgroundColor: Colors.black87,
          padding: const EdgeInsets.only(
              top: 25, bottom: 25, left: 100, right: 100)),
      child: const Text("Iniciar Sesion"),
    );
  }
}
