import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

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
                  child: Container(
//                    width: 170,
                      margin: EdgeInsets.all(15.0),
                      decoration: BoxDecoration(
                        color: Color(0xff1d1e33),
                        borderRadius: BorderRadius.circular(10.0),
                      )),
                ),
                Expanded(
                  child: Container(
                      margin: EdgeInsets.all(15.0),
                      decoration: BoxDecoration(
                        color: Color(0xff1d1e33),
                        borderRadius: BorderRadius.circular(10.0),
                      )),
                ),
              ],
            ),
          ),
          Expanded(
            child: Container(
                margin: EdgeInsets.all(15.0),
                decoration: BoxDecoration(
                  color: Color(0xff1d1e33),
                  borderRadius: BorderRadius.circular(10.0),
                )),
          ),
          Expanded(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                Expanded(
                  child: Container(
                      margin: EdgeInsets.all(15.0),
                      decoration: BoxDecoration(
                        color: Color(0xff1d1e33),
                        borderRadius: BorderRadius.circular(10.0),
                      )),
                ),
                Expanded(
                  child: Container(
                      margin: EdgeInsets.all(15.0),
                      decoration: BoxDecoration(
                        color: Color(0xff1d1e33),
                        borderRadius: BorderRadius.circular(10.0),
                      )),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
