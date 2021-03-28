import 'package:flutter/material.dart';
import 'package:insta_clone/Home/widgets/ResponsiveAppBar.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: PreferredSize(
      preferredSize: Size(double.infinity, 56),
      child: ResponsiveAppBar(),
    ));
  }
}
