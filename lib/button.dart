import 'package:flutter/material.dart';

class NumPad extends StatelessWidget {
  final String numValue;

  NumPad(this.numValue);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blueGrey[900],
      padding: EdgeInsets.only(bottom: 10),
      alignment: Alignment.center,
      child: Text(
        numValue,
        style: TextStyle(
          color: Colors.white,
          fontSize: 26,
          fontWeight: FontWeight.w400,
        ),
      ),
    );
  }
}

class Operator extends StatelessWidget {
  final String opValue;
  final double fontSize;

  Operator({this.opValue, this.fontSize});

  @override
  Widget build(BuildContext context) {
    return Text(
      opValue,
      style: TextStyle(
        color: Colors.white,
        fontSize: fontSize,
        fontWeight: FontWeight.w400,
      ),
    );
  }
}
