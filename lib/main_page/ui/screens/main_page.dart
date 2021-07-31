import 'package:education_app/account/ui/screens/account_page.dart';
import 'package:education_app/courses/ui/screens/courses_page.dart';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

// ignore: must_be_immutable
class MainPage extends StatefulWidget {
  final List appbarTitles = ["Home", "Courses", "Profile"];

  int selectedIndex = 0;
  final navigationItem = BottomNavigationBarItem(
      icon: Icon(Icons.home), label: "home", backgroundColor: Colors.green);
  final accountItem = BottomNavigationBarItem(
      icon: Icon(Icons.account_circle), label: "account");
  final coursesItem = BottomNavigationBarItem(
      icon: Icon(Icons.collections_bookmark_rounded), label: "Courses");

  final List<Widget> _widgetOptions = <Widget>[
    AccountPage(),
    CoursePage(),
    AccountPage()
  ];

  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: Text("Hola"),
      ),
      body: widget._widgetOptions.elementAt(widget.selectedIndex),
      appBar: AppBar(
        title: Text(
          widget.appbarTitles[widget.selectedIndex],
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.white,
        systemOverlayStyle:
            SystemUiOverlayStyle(systemNavigationBarColor: Colors.white),
      ),
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.black,
        currentIndex: widget.selectedIndex,
        onTap: (int index) {
          setState(() {
            print(widget.selectedIndex);
            widget.selectedIndex = index;
          });
        },
        items: [
          widget.navigationItem,
          widget.coursesItem,
          widget.accountItem,
        ],
      ),
    );
  }
}
