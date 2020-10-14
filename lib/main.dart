import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:schafkopf_app/sbutton.dart';

void main(){
  runApp(SchafkopfCal());
}

class SchafkopfCal extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      title: 'Schafkopf calculator',
      theme: ThemeData(
        brightness: Brightness.dark,
        accentColor: Color(0xFF00CCF2),
        scaffoldBackgroundColor: Color(0xFF181D23),

        textTheme: TextTheme(
          bodyText1: TextStyle(fontSize: 18),
        ),
        iconTheme: IconThemeData(
          size: 30,
          color: Colors.white,
          ),
      ),

      home:  Scaffold(
        body: new Center(
          child: new Stack(
            children: <Widget>[
              Positioned(
                bottom: 15, right: 15,
                child: SButton("NEW MATCH"),
              )
            ],
          ),
        ),
      )
    );
  }


  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    throw UnimplementedError();
  }
}