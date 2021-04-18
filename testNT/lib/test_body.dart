import 'package:flutter/material.dart';
import 'test_button.dart';
import 'questions.dart';
//import 'package:page_view_indicators/page_view_indicators.dart';

class TestBody extends StatefulWidget {
  @override
  _TestBodyState createState() => _TestBodyState();
}

class _TestBodyState extends State<TestBody> {
  int testResult = 0;
  QuestionBrain questionBrain = QuestionBrain();

  void countTestResult(int answerValue) {
    setState(() {
      testResult = testResult + answerValue;
      questionBrain.nextQuestion();
    });
  } //test logic

  @override
  Widget build(BuildContext context) {
    double linearIndicatorValue =
        (questionBrain.questionNumber + 1) / questionBrain.questionBank.length;

    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        Expanded(
          flex: 5,
          child: Padding(
            padding: EdgeInsets.all(10.0),
            child: Center(
              child: Text(
                questionBrain.getNextQuestion(),
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 25.0,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ),
        AnswerButton(
          buttonName: 'Yes',
          buttonColor: Colors.green,
          countTestResultCallback: countTestResult,
        ),
        AnswerButton(
          buttonName: 'No',
          buttonColor: Colors.red,
          countTestResultCallback: countTestResult,
        ),
        SizedBox(
          height: 30.0,
          width: 300.0,
          child: LinearProgressIndicator(
            backgroundColor: Colors.deepPurple[50],
            value: linearIndicatorValue,
            valueColor: AlwaysStoppedAnimation(Colors.purple),
          ),
        )
      ],
    );
  }
}
