import 'package:flutter/material.dart';

class TextoBienvenida extends StatelessWidget {
  const TextoBienvenida({super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      "Bienvenido a OkVentas!!",
      style: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.w300,
          fontStyle: FontStyle.italic,
          color: Colors.grey[700],
          letterSpacing: 3.4),
    );
  }
}
