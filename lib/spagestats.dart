import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SPageStats extends StatelessWidget {
  int playercount = 4;
  var list = ["Test1", "Test2", "Test3"];
  @override
  SPageStats() {}
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        for (var item in list) Text(item),
      ],
    );
  }
}
