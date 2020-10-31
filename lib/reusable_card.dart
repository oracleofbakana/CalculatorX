import 'package:flutter/material.dart';

class ReusableCard extends StatelessWidget {
  final Color colour;
  //final double margin;
  final Function onPress;
  final Widget cardChild;

  ReusableCard({this.colour, this.onPress, this.cardChild});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: this.onPress,
      child: Container(
        child: cardChild,
        color: colour,
      ),
    );
  }
}