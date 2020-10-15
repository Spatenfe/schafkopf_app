
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SPageStats extends StatelessWidget{
  int playercount = 4;
  @override
  SPageStats(){}
  Widget build(BuildContext context) {
    return Column(
      children: [
        	for(int i = 0; i < playercount; i++){
            Icon: Icons.access_alarm_outlined,
          }
      ],
    );
  }
  
}