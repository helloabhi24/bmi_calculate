import 'package:flutter/material.dart';
import '../constVar.dart';

class BottomButton extends StatelessWidget {
  BottomButton({@required this.onPress, @required this.text});

  final Function onPress;
  final String text;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        child: Center(
          child: Text(
            "$text",
            style: kBoldText,
          ),
        ),
        color: kContainerColor,
        margin: EdgeInsets.only(top: 10.0),
        padding: EdgeInsets.only(bottom: 10),
        height: kContainerHeight,
        width: double.infinity,
      ),
    );
  }
}
