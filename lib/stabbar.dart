import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:schafkopf_app/saddplayerbutton.dart';
import 'package:schafkopf_app/spagestats.dart';

class STabBar extends StatelessWidget {
  @override
  // ignore: override_on_non_overriding_member
  double iconSize;
  Color tabColor;
  Color iconColor;
  SPageStats lsit = SPageStats();
  TextStyle headline1;
  List<Tab> tabs_header = <Tab>[];
  STabBar(Color color, double iSize, Color iColor, TextStyle hline1) {
    tabColor = color;
    iconSize = iSize;
    print("ALARM: " + iSize.toString());
    iconColor = iColor;
    headline1 = headline1;

    tabs_header = [
      Tab(
        child: Column(
          children: [
            Icon(
              Icons.bar_chart_rounded,
              size: iconSize,
              color: iconColor,
            ),
            Text(
              "Statistics",
              style: headline1,
            )
          ],
        ),
      ),
      Tab(
        child: Column(
          children: [
            Icon(
              Icons.list_rounded,
              size: iconSize,
              color: iconColor,
            ),
            Text(
              "History",
              style: headline1,
            )
          ],
        ),
      ),
    ];
  }
  List<Tab> tabs_content = <Tab>[
    Tab(
      child: Column(
        children: [
          SPageStats(),
          SAddPlayerButton(),
        ],
        )    
    ),
    Tab(
      text: "second tab",
    ),
  ];

  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      // The Builder widget is used to have a different BuildContext to access
      // closest DefaultTabController.
      child: Builder(builder: (BuildContext context) {
        final TabController tabController = DefaultTabController.of(context);
        tabController.addListener(() {
          if (!tabController.indexIsChanging) {
            // Your code goes here.
            // To get index of current tab use tabController.index
          }
        });
        return Scaffold(
          //backgroundColor: Colors.white,
          appBar: AppBar(
            backgroundColor: tabColor,
            toolbarHeight: 50,
            bottom: TabBar(
              tabs: tabs_header,
            ),
          ),
          body: TabBarView(
            children: tabs_content.map((Tab tab) {
              return Center(
                  child: tab.child,
              );
            }).toList(),
          ),
        );
      }),
    );
  }
}
