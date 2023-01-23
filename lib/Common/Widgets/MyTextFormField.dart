import 'package:flutter/material.dart';
import 'package:okventasapp/Common/common.dart';

class MyTextFormField extends StatelessWidget {
  TextEditingController controller;
  String textoSuperior;
  String texto;
  bool contrasena = false;

  MyTextFormField(
      {super.key,
      required this.texto,
      required this.controller,
      required this.contrasena,
      required this.textoSuperior});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          textoSuperior,
          style: const TextStyle(fontWeight: FontWeight.bold),
        ),
        Common.space(10),
        TextFormField(
            controller: controller,
            decoration: myInputDecoration(),
            obscureText: contrasena),
      ],
    );
  }

  myInputDecoration() {
    return InputDecoration(
        contentPadding: const EdgeInsets.only(left: 20),
        hintText: texto,
        enabledBorder: myOutlineInputBorder(Colors.grey),
        focusedBorder: myOutlineInputBorder(Colors.grey.shade300),
        fillColor: Colors.white12,
        filled: true);
  }

  myOutlineInputBorder(Color color) {
    return OutlineInputBorder(
        borderRadius: BorderRadius.circular(10),
        borderSide: BorderSide(color: color));
  }
}
