import 'package:education_app/courses/ui/widgets/course_header_list.dart';
import 'package:education_app/courses/ui/widgets/courses_list.dart';
import 'package:flutter/material.dart';

class CoursePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Container(
        color: Colors.grey.shade200,
      ),
      ListView(
        children: [CourseHeader(), CourseHeader()],
      )
    ]);
  }
}
