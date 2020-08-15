import 'package:flutter/material.dart';

const kContainerHeight = 70.0;
const kReUsedActiveColor = Color(0xFF1d1E33);
const kReUsedInactiveColor = Color(0xFF111328);
const kContainerColor = Color(0xFFEB1555);

enum Gender { male, female }

const kBasicTextStyle = TextStyle(
  fontSize: 18.0,
  color: Color(0xFF8D8E98),
);

const kNumTxtStyle = TextStyle(
  fontSize: 50,
  fontWeight: FontWeight.w900,
);

const kSliderTheme = SliderThemeData(
    thumbColor: Color(0xFFEB1555),
    activeTrackColor: Colors.white,
    inactiveTrackColor: Color(0xFF8D8E98),
    thumbShape: RoundSliderThumbShape(enabledThumbRadius: 15),
    overlayShape: RoundSliderOverlayShape(overlayRadius: 30),
    overlayColor: Color(0x4fEB1555),
    trackHeight: 1.5);

const kBoldText = TextStyle(fontSize: 30, fontWeight: FontWeight.bold);

const kResultText = TextStyle(fontSize: 50, fontWeight: FontWeight.bold);

const kOhterText =
    TextStyle(fontSize: 30, fontWeight: FontWeight.bold, color: Colors.green);

const kCalculatedBmi = TextStyle(fontSize: 120, fontWeight: FontWeight.bold);

const kBottomText = TextStyle(fontSize: 20);
