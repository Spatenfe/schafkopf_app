import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:schafkopf_app/saddplayerbutton.dart';
import 'package:schafkopf_app/splayerbar.dart';

class STabBar extends StatefulWidget {
  static List<SPlayerBar> playerlist = new List<SPlayerBar>();
  double iconSize;
  Color tabColor;
  Color iconColor;
  List<Tab> tabs_header = <Tab>[];
  TextStyle headline1;
  STabBar(Color color, double iSize, Color iColor, TextStyle hline1) {
    tabColor = color;
    iconSize = iSize;
    iconColor = iColor;
    headline1 = headline1;
  }
  @override
  STabBarState createState() => STabBarState(tabColor, iconSize, iconColor, headline1, playerlist);
}

class STabBarState extends State<STabBar> {
  List<SPlayerBar> playerlist = new List<SPlayerBar>();
  double iconSize;
  Color tabColor;
  Color iconColor;
  List<Tab> tabs_header = <Tab>[];
  TextStyle headline1;
  STabBarState(Color color, double iSize, Color iColor, TextStyle hline1, List<SPlayerBar> playerlist) {
    tabColor = color;
    iconSize = iSize;
    iconColor = iColor;
    headline1 = headline1;
    this.playerlist = playerlist;
    tabs_header =[
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
  addPlayerBar(SPlayerBar newBar){
    setState(() {
      playerlist.add(newBar);
    });
  }
  @override
  Widget build(BuildContext context) {
    int test = playerlist.length;
    print("ALARM0123");
    print(playerlist.length.toString());
    List<Tab> tabs_content = <Tab>[
    Tab(
      child: Column(
        children: [
          for (var item in playerlist) item,
          new SAddPlayerButton(this),
        ],
        )    
    ),
    Tab(
      text: "second tab",
    ),
  ];
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

