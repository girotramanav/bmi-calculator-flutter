import 'package:bmi_calculator/background_card.dart';
import 'package:bmi_calculator/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ResultPage extends StatelessWidget {
  ResultPage({@required this.bmiResult ,@required this.resultText ,@required this.resultDescription ,@required this.resultColor});

  final String bmiResult;
  final String resultText;
  final String resultDescription;
  final Color resultColor;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("BMI CALCULATOR"),
      ),
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              child: Container(
                padding: EdgeInsets.all(10.0),
                margin: EdgeInsets.only(left: 8.0),
                alignment: Alignment.bottomLeft,
                child: Text(
                  "Your Result",
                  style: kTitleTextStyle,
                ),
              ),
            ),
            Expanded(
              flex: 5,
              child: BackgroundCard(
                colour: kActiveCardColor,
                cardChild: Padding(
                  padding: const EdgeInsets.only(top: 18.0, bottom: 18.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        resultText,
                        style: kResultTextStyle.copyWith(
                          color: resultColor
                        ),
                      ),
                      Text(
                        bmiResult,
                        style: kResultNumberStyle,
                      ),
                      Text(
                        resultDescription,
                        style: kResultDescriptionStyle,
                        textAlign: TextAlign.center,
                      )
                    ],
                  ),
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.pop(context);
              },
              child: Container(
                child: Center(
                  child: Text(
                    "Re-Calculate",
                    style: kLargeTextStyle,
                  ),
                ),
                margin: EdgeInsets.only(top: 10.0),
                padding: EdgeInsets.only(bottom: 5.0),
                width: double.infinity,
                height: kBottomContainerHeight,
                decoration: BoxDecoration(
                    color: kBottomContainerColor,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(10.0),
                        topRight: Radius.circular(10.0))),
              ),
            )
          ],
        ),
      ),
    );
  }
}
