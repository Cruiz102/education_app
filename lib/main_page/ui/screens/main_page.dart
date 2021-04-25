import 'package:education_app/main_page/ui/widgets/Courses/courses_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class MainPage extends StatefulWidget {
  final navigationItem = BottomNavigationBarItem(
      icon: Icon(Icons.home), label: "home", backgroundColor: Colors.green);
  final accountItem = BottomNavigationBarItem(
      icon: Icon(Icons.account_circle), label: "account");
  final coursesItem = BottomNavigationBarItem(
      icon: Icon(Icons.collections_bookmark_rounded), label: "Courses");
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CoursePage(),
      appBar: AppBar(
        title: Row(
          children: [
            IconButton(
              color: Colors.black,
              icon: Icon(Icons.menu),
              onPressed: () => {},
            ),
            Container(
                margin: EdgeInsets.only(left: 10.0),
                height: 50.0,
                child: Center(
                    child: Text(
                  "Edu-App",
                  style: TextStyle(
                      color: Colors.black, fontWeight: FontWeight.bold),
                )))
          ],
        ),
        backgroundColor: Colors.white,
        systemOverlayStyle:
            SystemUiOverlayStyle(systemNavigationBarColor: Colors.white),
      ),
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.black,
        items: [
          widget.navigationItem,
          widget.coursesItem,
          widget.accountItem,
        ],
      ),
    );
  }
}
