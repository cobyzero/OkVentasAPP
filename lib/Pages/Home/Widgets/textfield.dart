import 'package:flutter/material.dart';

class MyTextField extends StatelessWidget {
  Icon icon;
  String texto;

  MyTextField({super.key, required this.icon, required this.texto});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 50, right: 50, top: 20),
      child: TextFormField(
          decoration: InputDecoration(
              contentPadding: EdgeInsets.only(left: 20),
              hintText: texto,
              enabledBorder: myOutlineInputBorder(Colors.white),
              focusedBorder: myOutlineInputBorder(Colors.grey),
              fillColor: Colors.white12,
              filled: true)),
    );
  }

  myOutlineInputBorder(Color color) {
    return OutlineInputBorder(
        borderRadius: BorderRadius.circular(10),
        borderSide: BorderSide(color: color));
  }
}
