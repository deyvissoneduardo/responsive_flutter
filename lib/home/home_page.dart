import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      /** pixels da tela */
      // print('lagura max: ${constraints.maxWidth}');
      // print('lagura min: ${constraints.minWidth}');
      // print('altura max: ${constraints.maxHeight}');
      // print('altura min: ${constraints.minHeight}');
      return Scaffold(
        appBar: constraints.maxWidth < 800
            ? PreferredSize(
                child: _appBarMobile(),
                preferredSize: Size(double.infinity, 56))
            : PreferredSize(
                child: _appBarWeb(), preferredSize: Size(double.infinity, 56)),
        drawer: Drawer(),
      );
    });
  }

  Widget _imageLogo() {
    return Center(
      child: Row(
        children: [Text('Flutter'), FlutterLogo()],
      ),
    );
  }

  Widget _appBarMobile() {
    return AppBar(
      backgroundColor: Colors.black,
      title: Center(
        child: _imageLogo(),
      ),
    );
  }

  Widget _appBarWeb() {
    return AppBar(
      backgroundColor: Colors.black87,
      // toolbarHeight: 72,
      title: Row(
        children: [
          _imageLogo(),
          const SizedBox(
            width: 32,
          ),
          Expanded(child: Container()),
          Icon(Icons.shopping_cart_outlined),
          const SizedBox(
            width: 24,
          ),
          SizedBox(
            height: 38,
            child: OutlineButton(
                child: Text('Login'),
                textColor: Colors.white,
                borderSide: BorderSide(color: Colors.white, width: 2),
                onPressed: () {}),
          ),
          const SizedBox(
            width: 8,
          ),
          SizedBox(
            height: 40,
            child: RaisedButton(
                child: Text('Cadastre-se'),
                color: Colors.white,
                textColor: Colors.black,
                onPressed: () {}),
          )
        ],
      ),
    );
  }
}
