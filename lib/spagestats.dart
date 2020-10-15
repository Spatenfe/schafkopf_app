import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SPageStats extends StatelessWidget {
  int playercount = 4;
  final List<String> playerBar = ["Test1","Test2"];
  @override
  SPageStats() {}
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        padding: const EdgeInsets.all(8),
        itemCount: this.playerBar.length, 
        itemBuilder: (BuildContext context, index){
          return new Text	(
            playerBar[index],
            style: TextStyle(fontSize: 30),
          );
        }
        ),
    );
  }
}
