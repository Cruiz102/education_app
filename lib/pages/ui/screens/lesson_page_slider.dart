import 'package:education_app/pages/ui/screens/example.dart';
import 'package:flutter/material.dart';

class LessonCoursePage extends StatefulWidget {
  @override
  _LessonCoursePageState createState() => _LessonCoursePageState();
}

class _LessonCoursePageState extends State<LessonCoursePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: SafeArea(
            child: Row(children: [Spacer(), Icon(Icons.power_input_outlined)])),
      ),
      body: PageView(children: [Something(), Something(), Something()]),
    );
  }
}
