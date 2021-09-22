// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_money_tracker/controller/login_controller.dart';
import 'package:flutter_money_tracker/ui/page-1/page1.dart';
import 'package:flutter_money_tracker/ui/page-2/page2.dart';
import 'package:flutter_money_tracker/ui/page-3/page3.dart';
import 'package:flutter_money_tracker/ui/page-4/page4.dart';
import 'package:flutter_money_tracker/ui/page-5/page5.dart';

class LoggedInUi extends StatefulWidget {
  const LoggedInUi({
    Key? key,
  }) : super(key: key);


  @override
  State<LoggedInUi> createState() => _LoggedInUiState();
}

class _LoggedInUiState extends State<LoggedInUi> {
  final List<Widget> _tabItems = [
    PageOne(),
    PageTwo(),
    PageThree(),
    PageFour(),
    PageFive()
  ];
  int activePage = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: CurvedNavigationBar(
        color: Colors.blue,
        backgroundColor: Colors.white,
        items: <Widget>[
          Icon(Icons.home, size: 24, color: Colors.black),
          Icon(Icons.swap_vertical_circle_outlined,
              size: 24, color: Colors.black),
          Icon(Icons.add_circle_outline_outlined, size: 24, color: Colors.black),
          Icon(Icons.payment, size: 24, color: Colors.black),
          Icon(Icons.person, size: 24, color: Colors.black),
        ],
        onTap: (index) {
          setState(() {
            activePage = index;
          });
        },
      ),
      body: _tabItems[activePage],
    );
  }
}
