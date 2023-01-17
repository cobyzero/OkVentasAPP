import 'package:flutter/material.dart';

class TextoO extends StatelessWidget {
  const TextoO({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [lineaContainer()],
    );
  }

  lineaContainer() {
    return Padding(
      padding: const EdgeInsets.only(left: 55, right: 50),
      child: Container(
        width: 286,
        height: 3,
        color: Colors.grey[100],
      ),
    );
  }
}
