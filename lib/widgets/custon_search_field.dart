import 'package:flutter/material.dart';

class CustonSearchField extends StatelessWidget {
  const CustonSearchField({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      cursorColor: Colors.blue,
      style: TextStyle(color: Colors.white),
      decoration: InputDecoration(
          enabledBorder:
              OutlineInputBorder(borderSide: BorderSide(color: Colors.white)),
          focusedBorder:
              OutlineInputBorder(borderSide: BorderSide(color: Colors.white)),
          hintStyle: TextStyle(color: Colors.white),
          hintText: 'Digite Alguma coisa',
          suffixIcon: Icon(
            Icons.search,
            color: Colors.white,
          )),
    );
  }
}
