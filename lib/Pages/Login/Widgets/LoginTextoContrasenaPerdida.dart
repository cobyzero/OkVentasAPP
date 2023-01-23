import 'package:flutter/material.dart';

class LoginTextoContrasenaPerdida extends StatelessWidget {
  const LoginTextoContrasenaPerdida({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 40),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          TextButton(
              onPressed: (() {}),
              child: const Text(
                "Olvido su contraseña?",
                style: TextStyle(color: Colors.black),
              )),
        ],
      ),
    );
  }
}
