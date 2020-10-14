import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:schafkopf_app/shadow.dart';

class SButton extends StatelessWidget {
  String buttonTitle;
  SButton(String title) {
    this.buttonTitle = title;
  }
  void action() {
    print("TEST");
  }

  Widget build(BuildContext context) {
    return InkWell(
        onTap: () {
          action();
        },
        splashColor: Colors.transparent,
        highlightColor: Colors.transparent,
        child: Container(
          padding: EdgeInsets.all(15.0),
          decoration: BoxDecoration(
            boxShadow: [SShadow()],
            borderRadius: BorderRadius.all(Radius.circular(10)),
            color: Theme.of(context).accentColor,
          ),
          child: Row(
            children: [
              Icon(
                Icons.add,
                size: IconTheme.of(context).size,
              ),
              Text(
                buttonTitle,
                style: Theme.of(context).textTheme.bodyText1,
              )
            ],
          ),
        ));
  }
}
