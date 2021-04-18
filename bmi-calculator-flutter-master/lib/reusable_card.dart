import 'package:flutter/material.dart';

class ReusableCard extends StatelessWidget {
  ReusableCard({@required this.changeableColor, this.cardChild});
  final Color changeableColor;
  final Widget cardChild;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: cardChild,
      margin: EdgeInsets.all(15.0),
      decoration: BoxDecoration(
        color: changeableColor,
        borderRadius: BorderRadius.circular(10.0),
      ),
    );
  }
}
