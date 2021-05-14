import 'package:flutter/material.dart';

class CourseMenuPage extends StatefulWidget {
  @override
  _CourseMenuPageState createState() => _CourseMenuPageState();
}

class _CourseMenuPageState extends State<CourseMenuPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: CustomScrollView(slivers: <Widget>[
      SliverAppBar(
          backgroundColor: Colors.blue.shade400,
          expandedHeight: 160.0,
          flexibleSpace: const FlexibleSpaceBar(title: Text('SliverAppBar'))),
    ]));
  }
}
