// Column(
// mainAxisAlignment: MainAxisAlignment.spaceEvenly,
// crossAxisAlignment: CrossAxisAlignment.stretch,
// children: <Widget>[
// Expanded(
// child: Row(
// crossAxisAlignment: CrossAxisAlignment.stretch,
// mainAxisAlignment: MainAxisAlignment.end,
// mainAxisSize: MainAxisSize.max,
// children: <Widget>[
// Expanded(
// flex: 12,
// child: ReusableCard(
// cardChild: Text(
// 'RAD',
// style: kCalcTextStyle,
// ),
// ),
// ),
// Expanded(
// child: Icon(Icons.more_vert, color: Colors.blueGrey),
// ),
// ],
// ),
// ),
// Expanded(
//
// child: TextField(
// maxLines: 9,
// minLines: 6,
// obscureText: false,
// showCursor: true,
// textAlign: TextAlign.right,
// style: kCalcTextStyle,
// cursorWidth: 5.0,
// autofocus: true,
// ),
// ),
// Expanded(
// flex: 6,
// child: Row(
// mainAxisAlignment:  MainAxisAlignment.spaceBetween,
// crossAxisAlignment: CrossAxisAlignment.stretch,
// //Keypad Columns
// children: <Widget>[
// Expanded(
// child: Column(
// children: <Widget>[
// Expanded(child: Row(
// mainAxisAlignment: MainAxisAlignment.spaceBetween,
// crossAxisAlignment: CrossAxisAlignment.stretch,
// children: <Widget>[
// ReusableCard(
// cardChild: Text('7'),
// ),
// ReusableCard(
// cardChild: Text('4'),
// ),
// ReusableCard(
// cardChild: Text('1'),
// ),
// ReusableCard(
// cardChild: Text('0'),
// ),
//
// ],
// ),),
// Expanded(),
// Expanded(),
// ],
// )
// ),
// Expanded(
// child: Column(
// mainAxisAlignment: MainAxisAlignment.spaceBetween,
// verticalDirection: VerticalDirection.down,
// children: <Widget>[
// ReusableCard(
// cardChild: CalcButton(icon: FontAwesomeIcons.plus,onPressed: (){},),
// ),
// ReusableCard(
// cardChild: CalcButton(icon: FontAwesomeIcons.divide,onPressed: (){},),
// ),
// ReusableCard(
// cardChild: CalcButton(icon: FontAwesomeIcons.times,onPressed: (){},),
// ),
// ReusableCard(
// cardChild: CalcButton(icon: FontAwesomeIcons.minus, onPressed: (){},),
// ),
// ReusableCard(
// cardChild: CalcButton(icon: FontAwesomeIcons.plus, onPressed: (){
//
// },),
// ),
// ],
// ),
// ),
// Expanded(
// child: CalcButton(
// icon: FontAwesomeIcons.angleLeft,
// onPressed: () {},
// ),
// ),
// ],
// ),
// ),
// ],
// )