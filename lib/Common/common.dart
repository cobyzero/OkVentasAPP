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
}
