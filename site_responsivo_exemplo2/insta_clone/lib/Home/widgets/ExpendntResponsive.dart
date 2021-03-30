import 'package:flutter/material.dart';
import 'package:responsive_framework/responsive_value.dart';
import 'package:responsive_framework/responsive_wrapper.dart';

class ExpendedResponsive extends StatelessWidget {
  const ExpendedResponsive({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        ResponsiveVisibility(
          visible: false,
          visibleWhen: [Condition.smallerThan(name: TABLET)],
          child:
              IconButton(onPressed: () {}, icon: Icon(Icons.search_outlined)),
        ),
        const SizedBox(
          width: 4,
        ),
        IconButton(onPressed: () {}, icon: Icon(Icons.home_outlined)),
        const SizedBox(
          width: 4,
        ),
        IconButton(onPressed: () {}, icon: Icon(Icons.send_outlined)),
        const SizedBox(
          width: 4,
        ),
        IconButton(
            onPressed: () {}, icon: Icon(Icons.favorite_outline_outlined)),
        const SizedBox(
          width: 16,
        ),
        CircleAvatar(
            radius: 16,
            backgroundImage: NetworkImage(
                'https://udemy-certificate.s3.amazonaws.com/image/UC-f5c8cf91-89e0-4ebb-bcc0-bc744c890cba.jpg'))
      ],
    );
  }
}
