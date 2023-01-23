import 'package:flutter/material.dart';
import 'package:okventasapp/Common/Widgets/MyPaddingFormField.dart';
import 'package:okventasapp/Common/Widgets/MyTextFormField.dart';

class LoginTextFieldPassword extends StatelessWidget {
  TextEditingController contrasenaController;

  LoginTextFieldPassword({super.key, required this.contrasenaController});

  @override
  Widget build(BuildContext context) {
    return MyPaddingFormField(
      widget: MyTextFormField(
        texto: "Contraseña",
        controller: contrasenaController,
        contrasena: true,
        textoSuperior: "Contraseña",
      ),
    );
  }
}
