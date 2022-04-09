import 'package:bmi_calculator/constants.dart';
import 'package:flutter/material.dart';

class BottomButton extends StatelessWidget {
  final Function onPress;
  final String title;

  const BottomButton({Key key, this.onPress, this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        child: Center(
          child: Text(
            title,
            style: kCalculateTextStyle,
          ),
        ),
        color: Color(0xFFEB1555),
        height: 80,
        margin: EdgeInsets.only(top: 10),
        padding: EdgeInsets.only(
          bottom: 15,
        ),
        width: double.infinity,
      ),
    );
  }
}