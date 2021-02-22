import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'constans.dart';
import 'reusable_card.dart';
import 'input_page.dart';

class ReturnsPage extends StatelessWidget {
  ReturnsPage(
      {@required this.bmiResult,
      @required this.resultText,
      @required this.interpretation});
  final String bmiResult;
  final String resultText;
  final String interpretation;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        shadowColor: Colors.transparent,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Container(
              child: Center(
                child: Text(
                  'Dein Ergebnis',
                  style: kTitleTextStyle,
                ),
              ),
            ),
          ),
          Expanded(
            flex: 7,
            child: ReusableCard2(
              colour: kactiveCardColour,
              cardChild: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(height: 20.0),
                  Text(
                    resultText.toUpperCase(),
                    style: kResultTextStyle,
                  ),
                  SizedBox(height: 20.0),
                  Text(
                    bmiResult,
                    style: kBMITextStyle,
                  ),
                  SizedBox(height: 30.0),
                  Text(
                    'Normaler BMI-Bereich:',
                    style: kBMIBereich,
                  ),
                  SizedBox(height: 5.0),
                  Text(
                    '18,5 - 25 kg/m²',
                    style: kBodyTextStyle,
                  ),
                  SizedBox(height: 30.0),
                  Text(
                    interpretation,
                    textAlign: TextAlign.center,
                    style: kBodyTextStyle,
                  ),
                ],
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => InputPage()));
            },
            child: Container(
              padding: EdgeInsets.only(bottom: 7.0),
              color: kbottomContainerColor,
              margin: EdgeInsets.only(top: 15.0),
              width: double.infinity,
              height: kbottomContainerHeight,
              child:
                  Center(child: Text('NEU BERECHNEN', style: kLargeButtonText)),
            ),
          ),
        ],
      ),
    );
  }
}
