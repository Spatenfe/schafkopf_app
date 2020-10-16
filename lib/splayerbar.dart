import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:schafkopf_app/shadow.dart';

class SPlayerBar extends StatelessWidget {
  String playername;
  String buttonname;
  Color playerbar = Color(0xFF29313A);

  SPlayerBar(String pname) {
    playername = pname;
    buttonname = playername + ":";
  }
  @override
  Widget build(BuildContext context) {
    return InkWell(
        onTap: () {
          action();
        },
        splashColor: Colors.transparent,
        highlightColor: Colors.transparent,
        child: Container(
          margin: EdgeInsets.only(top: 10, right: 5, left: 5),
          padding: EdgeInsets.all(5),
          decoration: BoxDecoration(
            boxShadow: [SShadow()],
            borderRadius: BorderRadius.all(Radius.circular(5)),
            color: playerbar,
          ),
          child: Row(
            children: [
              Icon(
                Icons.add,
                size: IconTheme.of(context).size,
              ),
              Text(
                //"Test",
                buttonname,
                style: Theme.of(context).textTheme.bodyText1,
              )
            ],
          ),
        ));
  }

  action() {
    print("Test_Palyerbar");
  }
}
