import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:schafkopf_app/finised/sbutton.dart';
import 'package:schafkopf_app/stabbar.dart';

void main() {
  runApp(SchafkopfCal());
}

class SchafkopfCal extends StatelessWidget {
  double iconSize = 25;
  Color iconColor = Colors.white;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Schafkopf calculator',
        theme: ThemeData(
          brightness: Brightness.dark,
          accentColor: Color(0xFF00CCF2),
          scaffoldBackgroundColor: Color(0xFF181D23),
          textTheme: TextTheme(
            bodyText1: TextStyle(fontSize: 18),
            headline1: TextStyle(
              fontSize: 15,
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        home: Scaffold(
          body: new Center(
            child: new Stack(
              children: <Widget>[
                STabBar(Color(0xFF263344), iconSize, iconColor,
                    Theme.of(context).textTheme.headline1),
                Positioned(
                  bottom: 15,
                  right: 15,
                  child: SButton("NEW MATCH"),
                ),
              ],
            ),
          ),
        ));
  }

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    throw UnimplementedError();
  }
}
