import 'package:flutter/material.dart';

class RoundIconButton extends StatelessWidget {
  const RoundIconButton({Key key, @required this.icon, @required this.press})
      : super(key: key);
  final IconData icon;
  final Function press;

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      child: Icon(icon),
      onPressed: press,
      elevation: 0,
      shape: CircleBorder(),
      fillColor: Color(0xFF4C4F5E),
      constraints: BoxConstraints.tightFor(
        height: 50.0,
        width: 50.0,
      ),
    );
  }
}