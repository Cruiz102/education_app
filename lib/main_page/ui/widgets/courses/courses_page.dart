import 'package:education_app/main_page/ui/widgets/courses/courses_list.dart';
import 'package:flutter/material.dart';

class CoursePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Container(
        color: Colors.grey.shade200,
      ),
      ListView(
        children: [CourseList()],
      )
    ]);
  }
}
