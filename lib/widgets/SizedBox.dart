import 'package:flutter/material.dart';

class WidgetSizedBox extends StatelessWidget {
  double width;
  double heigth;

  WidgetSizedBox({this.width, this.heigth});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: this.width,
      height: this.heigth,
    );
  }
}
