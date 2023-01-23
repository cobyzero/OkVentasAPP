import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:okventasapp/Common/MyColors.dart';
import 'package:okventasapp/Pages/Login/Widgets/LoginBoton.dart';
import 'package:okventasapp/Pages/Login/Widgets/LoginLogo.dart';
import 'package:okventasapp/Pages/Login/Widgets/LoginTextFieldPassword.dart';
import 'package:okventasapp/Pages/Login/Widgets/LoginTextFieldUsername.dart';
import 'package:okventasapp/Pages/Login/Widgets/LoginTextoBienvenida.dart';
import 'package:okventasapp/Pages/Login/Widgets/LoginTextoContrasenaPerdida.dart';
import 'package:okventasapp/Pages/Login/Widgets/LoginSeparacion.dart';
import 'package:okventasapp/Pages/Login/Widgets/LoginTextoRegistrarse.dart';

import '../../Common/common.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<StatefulWidget> createState() {
    return _LoginPage();
  }
}

class _LoginPage extends State<LoginPage> {
  var usernameController = TextEditingController();
  var passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: MyColors.myBlue,
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Common.space(Common.height(context) * 0.1),
              Container(
                decoration: myBoxDecoration(),
                width: double.infinity,
                height: Common.height(context) * 0.9,
                child: Column(
                  children: [
                    Common.space(20),
                    const LoginLogo(),
                    Common.space(20),
                    const LoginTextoBienvenida(),
                    Common.space(20),
                    LoginTextFieldUsername(
                        usuarioController: usernameController),
                    Common.space(20),
                    LoginTextFieldPassword(
                        contrasenaController: passwordController),
                    LoginTextoContrasenaPerdida(),
                    Common.space(10),
                    LoginBoton(
                        usuarioController: usernameController,
                        contrasenaController: passwordController),
                    Common.space(20),
                    LoginSeparacion(),
                    Common.space(10),
                    LoginTextoRegistrarse()
                  ],
                ),
              )
            ],
          ),
        ));
  }

  myBoxDecoration() {
    return const BoxDecoration(
      borderRadius: BorderRadius.only(
          topLeft: Radius.circular(40), topRight: Radius.circular(40)),
      color: Colors.white,
    );
  }
}
