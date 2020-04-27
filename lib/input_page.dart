import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

const bottomContainerHeight = 80.0;
const cardDefaultColor = 0xff1d1e33;
const bottomContainerColor = 0xffeb1bbb;

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text(widget.title)),
      ),
      body: Column(
        children: <Widget>[
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Expanded(
                  child: ReusableCard(colour: Color(cardDefaultColor)),
                ),
                Expanded(
                  child: ReusableCard(colour: Color(cardDefaultColor)),
                ),
              ],
            ),
          ),
          Expanded(
            child: ReusableCard(colour: Color(cardDefaultColor)),
          ),
          Expanded(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                Expanded(
                  child: ReusableCard(colour: Color(cardDefaultColor)),
                ),
                Expanded(
                  child: ReusableCard(colour: Color(cardDefaultColor)),
                ),
              ],
            ),
          ),
          Container(
//              child: Center(child: Text('CALCULATE!')),
              margin: EdgeInsets.only(top: 10),
              color: Color(bottomContainerColor),
              width: double.infinity,
              height: bottomContainerHeight),
        ],
      ),
    );
  }
}

class ReusableCard extends StatelessWidget {
  ReusableCard({@required this.colour});

  final Color colour;

  @override
  Widget build(BuildContext context) {
    return Container(
//                    width: 170,
        margin: EdgeInsets.all(15.0),
        decoration: BoxDecoration(
          color: colour,
          borderRadius: BorderRadius.circular(10.0),
        ));
  }
}
