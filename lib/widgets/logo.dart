import 'package:flutter/material.dart';

class LogoWidget extends StatelessWidget {
  final String titulo;

  LogoWidget({@required this.titulo});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: 170,
        margin: EdgeInsets.only(top: 50),
        child: Column(
          children: [
            Image(image: AssetImage('assets/tag-logo.png')),
            SizedBox(
              height: 20.0,
            ),
            Text(
              titulo,
              style: TextStyle(fontSize: 30),
            )
          ],
        ),
      ),
    );
  }
}
