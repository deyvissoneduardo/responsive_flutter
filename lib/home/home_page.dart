import 'dart:html';
import 'dart:js';

import 'package:flutter/material.dart';
import 'package:responsive/config/constantes.dart';
import 'package:responsive/home/sections/AdvantageSection.dart';
import 'package:responsive/home/sections/TopSection.dart';
import 'package:responsive/widgets/SizedBox.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      /** pixels da area disponivel */
      // print('lagura max: ${constraints.maxWidth}');
      // print('lagura min: ${constraints.minWidth}');
      // print('altura max: ${constraints.maxHeight}');
      // print('altura min: ${constraints.minHeight}');
      return Scaffold(
        backgroundColor: Colors.black,
        appBar:
            constraints.maxWidth < mobileApp ? _appBarMobile() : _appBarWeb(),
        drawer: constraints.maxWidth < 800 ? Drawer() : null,
        body: Align(
          alignment: Alignment.center,
          child: ConstrainedBox(
              /** limita tamaho */
              constraints: BoxConstraints(maxWidth: 1200),
              child: ListView(
                children: [TopSection(), AdvantageSection()],
              )),
        ),
      );
    });
  }

// Widgets de AppBar
  Widget _imageLogo() {
    return Center(
      child: Row(
        children: [Text('Flutter'), FlutterLogo()],
      ),
    );
  }

  Widget _appBarMobile() {
    return PreferredSize(
      preferredSize: Size(double.infinity, 56),
      child: AppBar(
        backgroundColor: Colors.black,
        title: Center(
          child: _imageLogo(),
        ),
      ),
    );
  }

  Widget _appBarWeb() {
    return PreferredSize(
      preferredSize: Size(double.infinity, 56),
      child: AppBar(
          backgroundColor: Colors.black87,
          // toolbarHeight: 72,
          title: _rowAppBarWeb()),
    );
  }

  Widget _rowAppBarWeb() {
    return Row(
      children: [
        _imageLogo(),
        WidgetSizedBox(
          width: 32,
        ),
        _webAppBarContent(),
        Icon(Icons.shopping_cart_outlined),
        WidgetSizedBox(
          width: 24,
        ),
        _bottonLoginWeb(),
        WidgetSizedBox(
          width: 8,
        ),
        _bottonRegisterWeb()
      ],
    );
  }

  Widget _bottonLoginWeb() {
    return SizedBox(
      height: 38,
      child: OutlineButton(
          child: Text('Login'),
          textColor: Colors.white,
          borderSide: BorderSide(color: Colors.white, width: 2),
          onPressed: () {}),
    );
  }

  Widget _bottonRegisterWeb() {
    return SizedBox(
      height: 40,
      child: RaisedButton(
          child: Text('Cadastre-se'),
          color: Colors.white,
          textColor: Colors.black,
          onPressed: () {}),
    );
  }

  Widget _webAppBarContent() {
    return Expanded(
      child: LayoutBuilder(builder: (context, constraints) {
        /** pixels da area disponivel */
        // print('lagura max: ${constraints.maxWidth}');
        // print('lagura min: ${constraints.minWidth}');
        // print('altura max: ${constraints.maxHeight}');
        // print('altura min: ${constraints.minHeight}');
        return Row(
          children: [
            Expanded(
              child: Container(
                height: 45,
                decoration: BoxDecoration(
                    color: Colors.grey[100],
                    border: Border.all(color: Colors.grey[600])),
                child: _rowAppBarContent(),
              ),
            ),
            if (constraints.maxWidth >= 400) ...[
              WidgetSizedBox(
                width: 32,
              ),
              FlatButton(
                onPressed: () {},
                child: Text('Aprender'),
                textColor: Colors.white,
              )
            ],
            if (constraints.maxWidth >= 500)
              FlatButton(
                onPressed: () {},
                child: Text('Flutter'),
                textColor: Colors.white,
              )
          ],
        );
      }),
    );
  }

  Widget _bottonSearch() {
    return IconButton(
        icon: Icon(Icons.search), color: Colors.grey[500], onPressed: () {});
  }

  Widget _fildSearch() {
    return Expanded(
        child: TextField(
      decoration: InputDecoration(
          border: InputBorder.none, hintText: 'Pesquise', isCollapsed: true),
    ));
  }

  Widget _rowAppBarContent() {
    return Row(
      children: [
        WidgetSizedBox(
          width: 2,
        ),
        _bottonSearch(),
        _fildSearch(),
      ],
    );
  }
}
