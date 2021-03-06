import 'package:flutter/material.dart';
import 'package:responsive/config/constantes.dart';
import 'package:responsive/widgets/custon_search_field.dart';

class TopSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      final maxWidth = constraints.maxWidth;

      if (maxWidth >= 1200) {
        return AspectRatio(
          aspectRatio: 3.2,
          child: Stack(
            children: [
              AspectRatio(
                aspectRatio: 3.4,
                child: Image.asset(
                  'assets/logo.jpg',
                  fit: BoxFit.cover,
                ),
              ),
              // card dentro da imagem
              Positioned(
                left: 50,
                top: 50,
                child: Card(
                  color: Colors.black,
                  elevation: 8,
                  child: Container(
                    width: 400,
                    padding: EdgeInsets.all(22),
                    child: Column(
                      children: [
                        Text(
                          'Aprenda Flutter com este curso',
                          style: TextStyle(
                              fontSize: 40,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                        const SizedBox(
                          height: 8,
                        ),
                        Text(
                          'Bora Aprender Flutter com o Professor Eduardo! Cursos por apenas R\$22.90, Qualidade Garantida',
                          style: TextStyle(fontSize: 18, color: Colors.white),
                        ),
                        const SizedBox(
                          height: 8,
                        ),
                        CustonSearchField()
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
        );
      }
      // view app
      if (maxWidth >= mobileApp) {
        return SizedBox(
          height: 320,
          child: Stack(
            children: [
              SizedBox(
                height: 250,
                width: double.infinity,
                child: Image.asset(
                  'assets/logo.jpg',
                  fit: BoxFit.cover,
                ),
              ),
              // card dentro da imagem
              Positioned(
                left: 20,
                top: 20,
                child: Card(
                  color: Colors.black,
                  elevation: 8,
                  child: Container(
                    width: 300,
                    padding: EdgeInsets.all(22),
                    child: Column(
                      children: [
                        Text(
                          'Aprenda Flutter com este curso',
                          style: TextStyle(
                              fontSize: 30,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                        const SizedBox(
                          height: 8,
                        ),
                        Text(
                          'Bora Aprender Flutter com o Professor Eduardo! Cursos por apenas R\$22.90, Qualidade Garantida',
                          style: TextStyle(fontSize: 15, color: Colors.white),
                        ),
                        const SizedBox(
                          height: 8,
                        ),
                        CustonSearchField()
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
        );
      }
      // modo mobile
      return Column(
        children: [
          AspectRatio(
            aspectRatio: 3.4,
            child: Image.asset(
              'assets/logo.jpg',
              fit: BoxFit.cover,
            ),
          ),
          Padding(
            padding: EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Aprenda Flutter com este curso',
                  style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
                const SizedBox(
                  height: 8,
                ),
                Text(
                  'Bora Aprender Flutter com o Professor Eduardo! Cursos por apenas R\$22.90, Qualidade Garantida',
                  style: TextStyle(fontSize: 15, color: Colors.white),
                ),
                const SizedBox(
                  height: 8,
                ),
                CustonSearchField()
              ],
            ),
          )
        ],
      );
    });
  }
}
