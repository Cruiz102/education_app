import 'package:education_app/pages/model/distribute_content_in_page.dart';
import 'package:flutter/material.dart';

class CoursePage extends StatefulWidget {
  final Text title;
  final List<Widget> children;
  CoursePage({this.title, this.children});
  @override
  _CoursePageState createState() => _CoursePageState();
}

class _CoursePageState extends State<CoursePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        shadowColor: Colors.transparent,
      ),
      body: ListView(
          children: distributeContentInPage(widget.children, widget.title)),
    );
  }
}
