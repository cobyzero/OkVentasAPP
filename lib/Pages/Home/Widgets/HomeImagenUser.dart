import 'package:flutter/material.dart';

class HomeImagenUser extends StatelessWidget {
  const HomeImagenUser({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 55,
      height: 55,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.amber,
          image: DecorationImage(image: AssetImage("assets/persona.jpg"))),
    );
  }
}
