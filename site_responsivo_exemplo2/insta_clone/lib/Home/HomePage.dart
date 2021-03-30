import 'package:flutter/material.dart';
import 'package:insta_clone/Home/widgets/ResponsiveAppBar.dart';
import 'package:insta_clone/Home/widgets/StoryList.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black87,
      appBar: PreferredSize(
        preferredSize: Size(double.infinity, 56),
        child: ResponsiveAppBar(),
      ),
      body: Align(
        alignment: Alignment.topCenter,
        child: ConstrainedBox(
          constraints: BoxConstraints(maxWidth: 1000),
          child: ListView(
            children: [StoryList()],
          ),
        ),
      ),
    );
  }
}
