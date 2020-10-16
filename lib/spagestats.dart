import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:schafkopf_app/saddplayerbutton.dart';
import 'package:schafkopf_app/splayerbar.dart';

class SPageStats extends StatelessWidget {
  int playercount = 4;
  List<String> playername;
  static List<SPlayerBar> playerlist = new List<SPlayerBar>();
  @override
  SPageStats() {
    /*list.add(new SPlayerBar("Felix"));
    list.add(SPlayerBar("Lars"));*/
  }
  Widget build(BuildContext context) {
    return Column( 
      children: <SPlayerBar>[
        for (var item in playerlist) item,
      ],
    );
  }
}
