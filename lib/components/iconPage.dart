import 'package:bmi_calculate/constVar.dart';
import 'package:flutter/material.dart';

class IconContent extends StatelessWidget {
  IconContent({this.gen, this.icon});

  final IconData icon;
  final String gen;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(
          icon,
          size: 80,
        ),
        SizedBox(
          height: 15.0,
        ),
        Text(
          gen,
          style: kBasicTextStyle,
        )
      ],
    );
  }
}
