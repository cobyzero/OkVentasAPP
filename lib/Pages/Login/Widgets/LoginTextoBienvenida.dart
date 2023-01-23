import 'package:flutter/material.dart';

class LoginTextoBienvenida extends StatelessWidget {
  const LoginTextoBienvenida({super.key});

  @override
  Widget build(BuildContext context) {
    return RichText(
        text: TextSpan(
            text: "Bienvenido a ",
            style: style(FontWeight.w300),
            children: [
          TextSpan(text: "OkVentas", style: style(FontWeight.bold))
        ]));
  }

  style(FontWeight fontWeight) {
    return TextStyle(
        color: Colors.grey[700],
        fontSize: 20,
        fontStyle: FontStyle.italic,
        letterSpacing: 4,
        fontWeight: fontWeight);
  }
}
