import 'package:flutter/material.dart';

class Titulo extends StatelessWidget {
  final String text;
  Titulo(this.text);
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Row(
      children: <Widget>[
        Text(
          text,
          style: TextStyle(
            fontSize: width * 0.05,
            color: Colors.white,
            fontWeight: FontWeight.w600,
          ),
        ),
      ],
    );
  }
}
