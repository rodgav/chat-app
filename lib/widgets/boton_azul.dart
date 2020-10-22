import 'package:chat/colors/colors.dart';
import 'package:flutter/material.dart';

class BotonAzulWidget extends StatelessWidget {
  final VoidCallback onPressed;
  final String text;

  BotonAzulWidget({Key key, @required this.onPressed, @required this.text})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      elevation: 2,
      highlightElevation: 5,
      color: Colors.blue,
      shape: StadiumBorder(),
      child: Container(
        width: double.infinity,
        child: Center(
          child: Text(
            text,
            style: TextStyle(color: white, fontSize: 17),
          ),
        ),
      ),
      onPressed: onPressed,
    );
  }
}
