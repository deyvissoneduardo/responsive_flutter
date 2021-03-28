import 'package:flutter/material.dart';
import 'package:responsive_framework/responsive_framework.dart';

import 'Home/HomePage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        /**config responsive frame */
        builder: (context, widget) => ResponsiveWrapper.builder(
                ClampingScrollWrapper.builder(context, widget),
                defaultScale: true,
                minWidth: 450,
                breakpoints: [
                  ResponsiveBreakpoint.resize(450, name: MOBILE),
                  ResponsiveBreakpoint.resize(700, name: TABLET),
                  ResponsiveBreakpoint.resize(800, name: DESKTOP),
                ]),
        home: HomePage());
  }
}
