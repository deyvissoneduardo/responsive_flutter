import 'package:flutter/material.dart';

class TopSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      final maxWidth = constraints.maxWidth;

      if (maxWidth >= 1200) {
        return AspectRatio(
          aspectRatio: 3.2,
          child: Image.asset(
            'assets/logo.jpg',
            fit: BoxFit.cover,
          ),
        );
      }
      return Container();
    });
  }
}
