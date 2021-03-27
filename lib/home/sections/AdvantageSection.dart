import 'package:flutter/material.dart';

class AdvantageSection extends StatelessWidget {
  const AdvantageSection({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.fromLTRB(16, 0, 16, 16),
      decoration:
          BoxDecoration(border: Border(bottom: BorderSide(color: Colors.grey))),
      child: Wrap(
        alignment: WrapAlignment.spaceEvenly,
        runSpacing: 16,
        spacing: 8,
        children: [
          _buildAdvantages('+45.000 alunos', 'Didatica boa'),
          _buildAdvantages('+45.000 alunos', 'Didatica boa'),
          _buildAdvantages('+45.000 alunos', 'Didatica boa'),
        ],
      ),
    );
  }

  Widget _buildAdvantages(String title, String subTitle) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Icon(
          Icons.star,
          color: Colors.white,
          size: 50,
        ),
        const SizedBox(
          width: 8,
        ),
        Column(
          children: [
            Text(
              title,
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.bold),
            ),
            Text(
              subTitle,
              style: TextStyle(color: Colors.white),
            )
          ],
        )
      ],
    );
  }
}
