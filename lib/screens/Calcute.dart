import 'package:bmi_calculate/components/reUseCard.dart';
import 'package:flutter/material.dart';
import '../constVar.dart';
import '../components/bottomButton.dart';

class ResultPage extends StatelessWidget {
  ResultPage(
      {@required this.bmiResult,
      @required this.interpretation,
      @required this.resultText});

  final String bmiResult;
  final String resultText;
  final String interpretation;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Bmi Calculator"),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Expanded(
            child: Container(
              padding: EdgeInsets.all(15.0),
              alignment: Alignment.bottomLeft,
              child: Text(
                "Your Result",
                style: kResultText,
              ),
            ),
          ),
          Expanded(
            flex: 5,
            child: ReUseCard(
              onPress: () {},
              colour: kReUsedActiveColor,
              cardChild: Container(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      resultText,
                      style: kOhterText,
                    ),
                    Text(
                      bmiResult,
                      style: kCalculatedBmi,
                    ),
                    Text(
                      interpretation,
                      style: kBottomText,
                      textAlign: TextAlign.center,
                    )
                  ],
                ),
                padding: EdgeInsets.only(bottom: 60.0),
              ),
            ),
          ),
          Expanded(
            flex: 0,
            child: BottomButton(
              onPress: () {
                Navigator.pop(context);
              },
              text: "RE-CALCULATE",
            ),
          )
        ],
      ),
    );
  }
}
