import 'package:flutter/material.dart';

class AnswerButton extends StatelessWidget {
  final Function countTestResultCallback;

  final String buttonName;
  final Color buttonColor;

  AnswerButton(
      {@required this.buttonName,
      @required this.buttonColor,
      @required this.countTestResultCallback});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: EdgeInsets.all(15.0),
        child: FlatButton(
          textColor: Colors.white,
          color: buttonColor,
          child: Text(
            buttonName,
            style: TextStyle(
              color: Colors.white,
              fontSize: 20.0,
            ),
          ),
          onPressed: () {
            int answerValue = 0;
            if (buttonName == 'Yes') {
              answerValue = 1;
            } else {
              answerValue = 0;
            }
            countTestResultCallback(answerValue);
          },
        ),
      ),
    );
  }
}
