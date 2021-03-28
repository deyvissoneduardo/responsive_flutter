import 'package:flutter/material.dart';

class CourseItem extends StatelessWidget {
  const CourseItem({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Image.asset(
          'assets/logo.jpg',
          fit: BoxFit.fitWidth,
        ),
        const SizedBox(
          height: 4,
        ),
        Text(
          'Criação de apps Andrios IOS com Flutter - Crie Varios Apps',
          style: TextStyle(
              fontWeight: FontWeight.bold, fontSize: 15, color: Colors.white),
        ),
        Text(
          'Deyvisson Eduardo',
          style: TextStyle(color: Colors.white),
        ),
        Text(
          'R\$99.99',
          style: TextStyle(color: Colors.white),
        )
      ],
    );
  }
}
