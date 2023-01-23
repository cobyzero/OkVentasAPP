import 'package:flutter/material.dart';

class MyAppBar extends StatelessWidget {
  const MyAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 15, bottom: 10, left: 18),
      child: Container(
        child: Row(
          children: [myTextNombre()],
        ),
      ),
    );
  }

  myTextNombre() {
    return Text(
      "Hola Sebastian!",
      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
    );
  }
}
