import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'reusable_card.dart';
import 'constants.dart';
import 'calcbutton.dart';
import 'number_button.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData.dark(),
      home: Calculator(),
    );
  }
}

class Calculator extends StatefulWidget {
  @override
  _CalculatorState createState() => _CalculatorState();
}

class _CalculatorState extends State<Calculator> {
  String _history = '';
  String _expression = '';

  void numClick(String text){
  setState(() {
    _expression += text;
  });
  }

  void backSpace(){
    setState(() {
      _history = '';
     //_expression = '';
    });
  }

  void addition(){
    setState(() {

    });
  }

  void subtraction(){
    setState(() {

    });
  }

  void multiplication(){
    setState(() {

    });
  }

  void division(){
    setState(() {

    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Calculator'),
        backgroundColor: Color(0xFF1C2833),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(left:3.0,right:3.0,),
            child: Container(
              height: 40.0,
              color: Color(0xFF252020), // Blue color for Container containing RAD and menu button
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  ReusableCard(
                    cardChild: Text(
                      'RAD',
                      style: kCalcTextStyle,
                    ),
                  ),
                  ReusableCard(
                    cardChild: Icon(FontAwesomeIcons.ellipsisV),
                  )
                ],
              ),
            ),
          ),
          Expanded(
            child: Container(
              color: Color(0xFF252020),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  Container(
                      child: Padding(
                    padding: const EdgeInsets.all(2.0),
                    child: Text(
                      _history,
                      style: GoogleFonts.rubik(
                        textStyle: TextStyle(
                          fontSize: 36,
                          fontWeight: FontWeight.w900,
                          color: Color(0xFF545F61),
                        ),
                      ),
                    ),
                  ),
                    alignment: Alignment(1.0, 1.0),
                  ),
                  Container(
                    alignment: Alignment(1.0, 1.0),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        _expression,
                        style: GoogleFonts.rubik(
                          textStyle: TextStyle(
                            fontSize: 50,
                            fontWeight: FontWeight.w900,
                            color: Color(0xFF545F61),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),

          Container(
            color: Color(0xFF090808),
            height: 460.0,
            child: Row(
              children: <Widget>[
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      NumberButton(text: '7', callback: numClick,),
                      NumberButton(text: '4', callback: numClick,),
                      NumberButton(text: '1', callback: numClick,),
                      NumberButton(text: '0', callback: numClick,),
                    ],
                  ),
                ),
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      NumberButton(text: '8', callback: numClick,),
                      NumberButton(text: '5', callback: numClick,),
                      NumberButton(text: '2', callback: numClick,),
                      NumberButton(text: '.', callback: numClick,),
                    ],
                  ),
                ),
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      NumberButton(text: '9', callback: numClick,),
                      NumberButton(text: '6', callback: numClick,),
                      NumberButton(text: '3', callback: numClick,),
                      NumberButton(text: '=', callback: numClick,),
                    ],
                  ),
                ),
                Container(
                  height: 460.0,
                  width: 0.5,
                  color: Colors.white,
                ),
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: <Widget>[
                      CalcButton(
                          icon: FontAwesomeIcons.backspace, callback: backSpace,
                      ),
                      CalcButton(
                          icon: FontAwesomeIcons.divide, callback: backSpace, ),
                      CalcButton(
                          icon: FontAwesomeIcons.times, callback: backSpace,),
                      CalcButton(
                          icon: FontAwesomeIcons.minus, callback: backSpace,),
                      CalcButton(icon: FontAwesomeIcons.plus,callback: backSpace, ),
                    ],
                  ),
                ),
                Container(
                  decoration: new BoxDecoration(
                    color: Color(0xFF544fe6),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(top: 190.0, bottom: 190.0),
                    child: CalcButton(
                      icon: FontAwesomeIcons.angleLeft,
                      callback: backSpace,
                    ),
                  ),

                  // ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class KeyPadContainer extends StatelessWidget {
  final Color colour;
  //final double margin;
  //final Function onPress;
  final Widget cardChild;

  KeyPadContainer({this.colour, this.cardChild});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: cardChild,
      margin: EdgeInsets.all(10.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(25.0),
        color: Color(0xFF1D1E33),
      ),
      //height: 200.0,
      //width: 170.0,
    );
  }
}
