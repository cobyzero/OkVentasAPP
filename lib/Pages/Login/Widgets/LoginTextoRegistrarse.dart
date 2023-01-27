import 'package:flutter/material.dart';

class LoginTextoRegistrarse extends StatelessWidget {
  const LoginTextoRegistrarse({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text("No eres miembro?"),
        TextButton(onPressed: (() {}), child: const Text("Registrate ahora"))
      ],
    );
  }
}
