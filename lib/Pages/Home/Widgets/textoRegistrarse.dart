import 'package:flutter/material.dart';

class TextoRegistrarse extends StatelessWidget {
  const TextoRegistrarse({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text("No eres miembro?"),
        TextButton(onPressed: (() {}), child: Text("Registrate ahora"))
      ],
    );
  }
}
