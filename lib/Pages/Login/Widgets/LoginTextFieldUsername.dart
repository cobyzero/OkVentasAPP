import 'package:flutter/material.dart';
import 'package:okventasapp/Common/Widgets/MyPaddingFormField.dart';
import 'package:okventasapp/Common/Widgets/MyTextFormField.dart';
import 'package:okventasapp/Common/common.dart';

class LoginTextFieldUsername extends StatelessWidget {
  TextEditingController usuarioController;

  LoginTextFieldUsername({super.key, required this.usuarioController});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Common.space(30),
        MyPaddingFormField(
            widget: MyTextFormField(
          texto: "Usuario",
          controller: usuarioController,
          contrasena: false,
          textoSuperior: "Correo Electronico o Usuario",
        )),
      ],
    );
  }
}
