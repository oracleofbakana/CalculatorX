import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class NumberButton extends StatelessWidget {
  final String text;
  final int textColor;
  final int fillColor;
  final double textSize;
  final Function callback;

  NumberButton({
    @required this.text,
    @required this.callback,
    this.fillColor,
    this.textSize = 28,
    this.textColor = 0xFFFFFFFF,
  });

  @override
  Widget build(BuildContext build) {
    return Container(
      margin: EdgeInsets.all(6),
      child: SizedBox(
        width: 80,
        height: 80,
        child: FlatButton(
          onPressed: () {
            callback(text);
          },
          color: fillColor != null ? Color(fillColor) : null,
          child: Text(
            text,
            style: GoogleFonts.rubik(
              textStyle: TextStyle(
                fontSize: textSize,
              ),
            ),
          ),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
          //textColor: Color(textColor),
        ),
      ),
    );
  }
}
