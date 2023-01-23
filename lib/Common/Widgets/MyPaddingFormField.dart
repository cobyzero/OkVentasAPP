import 'package:flutter/material.dart';

class MyPaddingFormField extends StatelessWidget {
  Widget widget;
  double left;
  double right;

  MyPaddingFormField(
      {super.key, required this.widget, this.left = 40, this.right = 40});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: left, right: right),
      child: widget,
    );
  }
}
