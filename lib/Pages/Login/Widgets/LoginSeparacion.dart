import 'package:flutter/material.dart';
import 'package:okventasapp/Common/common.dart';

class LoginSeparacion extends StatelessWidget {
  const LoginSeparacion({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: Common.width(context) * 0.8,
        height: 3,
        color: Colors.grey[300],
      ),
    );
  }
}
