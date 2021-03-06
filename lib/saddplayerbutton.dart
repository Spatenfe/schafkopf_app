import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:schafkopf_app/finised/shadow.dart';
import 'package:schafkopf_app/main.dart';
import 'package:schafkopf_app/splayerbar.dart';
import 'package:schafkopf_app/stabbar.dart';

class SAddPlayerButton extends StatelessWidget {
  Color playerbar = Color(0xFF29313A);
  STabBarState temp;
  SAddPlayerButton(STabBarState temp){
    this.temp = temp;
  }
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        this.temp.addPlayerBar(SPlayerBar("pname"));
      },
      splashColor: Colors.transparent,
      highlightColor: Colors.transparent,
      child: Container(
        width: MediaQuery. of(context). size. width,
        margin: EdgeInsets.only(top: 10, right: 5, left: 5),
        padding: EdgeInsets.all(5),
        decoration: BoxDecoration(
          boxShadow: [SShadow()],
          borderRadius: BorderRadius.all(Radius.circular(5)),
          color: playerbar,
        ),
        child: Icon(
          Icons.add,
          size: IconTheme.of(context).size,
        ),
      ),
    );
  }

}
