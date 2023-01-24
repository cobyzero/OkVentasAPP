import 'package:flutter/material.dart';
import 'package:okventasapp/Common/MyColors.dart';

class LoginLogo extends StatelessWidget {
  const LoginLogo({super.key});

  @override
  Widget build(BuildContext context) {
    return const Image(
      image: AssetImage("assets/logo.png"),
      height: 200,
      width: 370,
      fit: BoxFit.fill,
      alignment: Alignment.center,
    );
  }
}
