import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  final EdgeInsets padding;
  final Alignment alignment;
  final Color color;
  final String textValue;
  final double fontSize;
  final FontWeight fontWeight;

  Button({
    Key key,
    @required this.padding,
    @required this.color,
    @required this.textValue,
    @required this.fontSize,
    this.fontWeight = FontWeight.w400,
    this.alignment = Alignment.center,
  })  : assert(textValue != null),
        assert(color != null),
        assert(padding != null),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: padding,
      alignment: alignment,
      //color: color,
      child: Text(
        textValue,
        style: TextStyle(
          color: Colors.white,
          fontSize: fontSize,
          fontWeight: fontWeight,
        ),
      ),
    );
  }
}
