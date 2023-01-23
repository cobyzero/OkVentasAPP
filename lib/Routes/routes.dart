import 'package:flutter/cupertino.dart';
import 'package:okventasapp/Pages/Home/home.dart';
import 'package:okventasapp/Pages/Login/Login.dart';

Map<String, WidgetBuilder> routesHome() {
  return {
    "/": (context) => const LoginPage(),
    "/Home": (context) => const HomePage()
  };
}
