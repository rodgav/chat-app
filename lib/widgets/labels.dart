import 'package:chat/colors/colors.dart';
import 'package:flutter/material.dart';

class LabelsWidget extends StatelessWidget {
  final String ruta;
  final String text1;
  final String text2;

  LabelsWidget(
      {Key key,
      @required this.ruta,
      @required this.text1,
      @required this.text2})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Text(
            text1,
            style: TextStyle(
                color: black54, fontSize: 15, fontWeight: FontWeight.w300),
          ),
          SizedBox(
            height: 10,
          ),
          GestureDetector(
            child: Text(
              text2,
              style: TextStyle(
                  color: blue600, fontSize: 18, fontWeight: FontWeight.bold),
            ),
            onTap: () {
              Navigator.pushReplacementNamed(context, ruta);
            },
          )
        ],
      ),
    );
  }
}
