import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      /** pixels da tela */
      print('lagura max: ${constraints.maxWidth}');
      print('lagura min: ${constraints.minWidth}');
      print('altura max: ${constraints.maxHeight}');
      print('altura min: ${constraints.minHeight}');
      return Scaffold(
        appBar: AppBar(
          backgroundColor:
              constraints.maxWidth >= 800 ? Colors.red : Colors.blue,
        ),
      );
    });
  }
}
