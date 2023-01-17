import 'package:flutter/material.dart';

class Logo extends StatelessWidget {
  const Logo({super.key});

  @override
  Widget build(BuildContext context) {
    return const Image(
      image: AssetImage("assets/logo.png"),
      height: 200,
      width: 200,
      color: Colors.black87,
      alignment: Alignment.center,
    );
  }
}
