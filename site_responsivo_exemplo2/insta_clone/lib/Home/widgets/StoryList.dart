import 'package:flutter/material.dart';
import 'package:insta_clone/Home/widgets/ResponsiveAppBar.dart';
import 'package:responsive_framework/responsive_wrapper.dart';

import 'StoryCircle.dart';

class StoryList extends StatelessWidget {
  const StoryList({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final mobile = ResponsiveWrapper.of(context).isMobile;

    return Container(
      margin: EdgeInsets.symmetric(vertical: mobile ? 5 : 35),
      height: 110,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        separatorBuilder: (_, __) => const SizedBox(
          width: 16,
        ),
        itemCount: 16,
        itemBuilder: (_, index) => StoryCircle(),
      ),
    );
  }
}
