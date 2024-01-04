import 'package:flutter/material.dart';
import 'package:flutter_application_1/bottom_button.dart';
import 'package:flutter_application_1/constants.dart';
import 'package:flutter_application_1/reusable_card.dart';

class ResultPage extends StatelessWidget {

  String bmi;
  String bmiResult;
  String bmiInterpretation;

  ResultPage({super.key, required this.bmi, required this.bmiResult, required this.bmiInterpretation});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text('BIM CALCULATOR')),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  const Padding(
                    padding: EdgeInsets.fromLTRB(15, 10, 15, 0),
                    child: Text(
                      'Your Result',
                      style:
                          TextStyle(fontSize: 50, fontWeight: FontWeight.bold),
                    ),
                  ),
                  const SizedBox(height: 20),
                  Expanded(
                      child: ReusableCard(
                    colour: kActiveCardColor,
                    cardChild:  Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                         Text(
                          bmiResult,
                          style: resultTextStyle,
                        ),
                        Text(
                          bmi,
                          style: kBMITextStyle
                        ),
                        Text(
                          bmiInterpretation,
                          style: kBodyTextStyle,
                          textAlign: TextAlign.center,
                        )
                      ],
                    ),
                  )),
                ],
              ),
            ),
            BottomButton(buttonTitle: 'back', onTap: () {
              Navigator.pop(context);
            })
          ],
        ));
  }
}
