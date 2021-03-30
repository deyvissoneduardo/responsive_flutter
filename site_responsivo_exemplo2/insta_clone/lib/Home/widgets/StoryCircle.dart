import 'package:flutter/material.dart';

class StoryCircle extends StatelessWidget {
  const StoryCircle({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 65,
          width: 65,
          decoration: BoxDecoration(
              shape: BoxShape.circle,
              gradient: LinearGradient(
                  colors: [Colors.blue, Colors.green],
                  begin: Alignment.topRight,
                  end: Alignment.bottomLeft)),
          alignment: Alignment.center,
          child: Container(
            height: 60,
            width: 60,
            decoration:
                BoxDecoration(shape: BoxShape.circle, color: Colors.black),
            alignment: Alignment.center,
            child: CircleAvatar(
              radius: 29,
              backgroundImage: NetworkImage(
                  'https://udemy-certificate.s3.amazonaws.com/image/UC-f5c8cf91-89e0-4ebb-bcc0-bc744c890cba.jpg'),
            ),
          ),
        ),
        Text(
          'Deyvisson Eduardo',
          style: TextStyle(fontSize: 12, color: Colors.white),
        )
      ],
    );
  }
}
