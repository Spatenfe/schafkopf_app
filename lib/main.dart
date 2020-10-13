import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(SchafkopfCal());
}

class SchafkopfCal extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      title: 'Schafkopf calculator',
      home:  Scaffold(
        backgroundColor: Colors.blue,
        body:  Center(
          child: Text('ALARM'),
        ),
      ),
    );
  }
}