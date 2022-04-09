import 'package:bmi_calculator/bottom_button.dart';
import 'package:bmi_calculator/box_decorate.dart';
import 'package:bmi_calculator/constants.dart';
import 'package:flutter/material.dart';

class ResultPage extends StatelessWidget {
  const ResultPage(
      {Key key, this.resultText, this.interpretation, this.bmiResult})
      : super(key: key);

  final resultText;
  final interpretation;
  final bmiResult;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'BMI CALCULATOR',
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Container(
              padding: EdgeInsets.all(15),
              alignment: Alignment.bottomLeft,
              child: Text(
                'Your Result',
                style: kResultTextStyle,
              ),
            ),
          ),
          Expanded(
            flex: 5,
            child: BoxDecorate(
              colour: activeCardColor,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    resultText.toUpperCase(),
                    style: kTempTextStyle,
                  ),
                  Text(
                    bmiResult,
                    style: kBMITextSTyle,
                  ),
                  Text(
                    interpretation,
                    style: kBodyTextStyle,
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
          ),
          BottomButton(
            title: 'RE-CALCULATE',
            onPress: () {
              Navigator.pop(context);
            },
          )
        ],
      ),
    );
  }
}
