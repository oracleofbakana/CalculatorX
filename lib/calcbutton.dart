import 'package:flutter/material.dart';

class CalcButton extends StatelessWidget {
  final IconData icon;
  final Function callback;

  CalcButton({@required this.icon, @required this.callback});

  @override
  Widget build(BuildContext build) {
    return SizedBox(
      width: 40,
      height: 70,
      child: RawMaterialButton(
        onPressed: () {callback();},
        child: Icon(icon, color: Color(0xFF8E8CBD),),
        elevation: 20.0,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
        //fillColor: Color(0xFF4C4F5E),
        constraints: BoxConstraints.tightFor(

        ),
      ),
    );
  }
}
