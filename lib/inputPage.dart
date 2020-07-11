import 'package:flutter/material.dart';
import 'reUseCard.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

const containerHeight = 70.0;
const reUsedColor = Color(0xFF1d1E33);
const containerColor = Color(0xFFEB1555);

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        children: <Widget>[
          Expanded(
              child: Row(
            children: <Widget>[
              Expanded(
                child: ReUseCard(
                  colour: reUsedColor,
                ),
              ),
              Expanded(
                child: ReUseCard(
                  colour: reUsedColor,
                ),
              ),
            ],
          )),
          Expanded(
            child: ReUseCard(
              colour: reUsedColor,
            ),
          ),
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: ReUseCard(
                    colour: reUsedColor,
                  ),
                ),
                Expanded(
                  child: ReUseCard(
                    colour: reUsedColor,
                  ),
                ),
              ],
            ),
          ),
          Container(
            color: containerColor,
            margin: EdgeInsets.only(top: 10.0),
            height: containerHeight,
            width: double.infinity,
          )
        ],
      ),
    );
  }
}
