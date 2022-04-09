import 'package:bmi_calculator/constants.dart';
import 'package:flutter/material.dart';

class IconContent extends StatelessWidget {
  const IconContent({
    Key key,
    this.text,
    this.iconChange,
  }) : super(key: key);

  final String text;
  final IconData iconChange;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          iconChange,
          size: 80.0,
        ),
        SizedBox(
          height: 15,
        ),
        Text(
          text,
          style: textStyle,
        ),
      ],
    );
  }
}
