import 'package:flutter/material.dart';
import '../components/reUseCard.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../constVar.dart';
import '../components/iconPage.dart';
import '../components/RoundIconButton.dart';
import 'Calcute.dart';
import '../components/bottomButton.dart';
import 'package:bmi_calculate/brain/calcutive_brain.dart';

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Gender selectedGender;
  int height = 150;
  int weight = 60;
  int age = 25;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
              child: Row(
            children: <Widget>[
              Expanded(
                child: ReUseCard(
                  onPress: () {
                    setState(() {
                      selectedGender = Gender.male;
                    });
                  },
                  colour: selectedGender == Gender.male
                      ? kReUsedActiveColor
                      : kReUsedInactiveColor,
                  cardChild: IconContent(
                    gen: "Male",
                    icon: FontAwesomeIcons.mars,
                  ),
                ),
              ),
              Expanded(
                child: ReUseCard(
                  onPress: () {
                    setState(() {
                      selectedGender = Gender.female;
                    });
                  },
                  colour: selectedGender == Gender.female
                      ? kReUsedActiveColor
                      : kReUsedInactiveColor,
                  cardChild: IconContent(
                    icon: FontAwesomeIcons.venus,
                    gen: "Female",
                  ),
                ),
              ),
            ],
          )),
          Expanded(
            child: ReUseCard(
              colour: kReUsedActiveColor,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    "HEIGHT",
                    style: kBasicTextStyle,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.baseline,
                    textBaseline: TextBaseline.alphabetic,
                    children: <Widget>[
                      Text(
                        height.toString(),
                        style: kNumTxtStyle,
                      ),
                      Text(
                        "cm",
                        style: kBasicTextStyle,
                      )
                    ],
                  ),
                  SliderTheme(
                    data: kSliderTheme,
                    child: Slider(
                      min: 120,
                      max: 220,
                      value: height.toDouble(),
                      onChanged: (double newValue) {
                        setState(() {
                          height = newValue.round();
                        });
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: ReUseCard(
                    colour: kReUsedActiveColor,
                    cardChild: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          "Weight",
                          style: kBasicTextStyle,
                        ),
                        Text(
                          weight.toString(),
                          style: kNumTxtStyle,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Expanded(
                                child: RoundIconButton(
                              onPress: () {
                                setState(() {
                                  weight -= 1;
                                });
                              },
                              icon: FontAwesomeIcons.minus,
                            )),
                            Expanded(
                                child: RoundIconButton(
                              onPress: () {
                                setState(() {
                                  weight += 1;
                                });
                              },
                              icon: FontAwesomeIcons.plus,
                            )),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: ReUseCard(
                    cardChild: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          "Age",
                          style: kBasicTextStyle,
                        ),
                        Text(age.toString(), style: kNumTxtStyle),
                        Row(
                          children: <Widget>[
                            Expanded(
                                child: RoundIconButton(
                                    onPress: () {
                                      setState(() {
                                        age--;
                                      });
                                    },
                                    icon: FontAwesomeIcons.minus)),
                            Expanded(
                                child: RoundIconButton(
                                    onPress: () {
                                      setState(() {
                                        age++;
                                      });
                                    },
                                    icon: FontAwesomeIcons.plus))
                          ],
                        )
                      ],
                    ),
                    colour: kReUsedActiveColor,
                  ),
                ),
              ],
            ),
          ),
          BottomButton(
            onPress: () {
              CalculatorBrain calcu =
                  CalculatorBrain(height: height, weight: weight);
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => ResultPage(
                            bmiResult: calcu.calculateBmi(),
                            interpretation: calcu.getInterpretation(),
                            resultText: calcu.getResult(),
                          )));
            },
            text: "CALCULATOR",
          )
        ],
      ),
    );
  }
}
