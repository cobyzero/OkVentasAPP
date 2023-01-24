import 'package:flutter/material.dart';

class Common {
  static space(double num) {
    return SizedBox(
      height: num,
    );
  }

  static width(BuildContext context) {
    return MediaQuery.of(context).size.width;
  }

  static height(BuildContext context) {
    return MediaQuery.of(context).size.height;
  }

  static convertSpace(String texto) {
    return texto.replaceAll(" ", "_");
  }

  static getPrimerNombre(String texto) {
    for (int i = 0; i < texto.length; i++) {
      if (texto[i] == " ") {
        return texto.substring(0, i);
      }
    }
  }
}
