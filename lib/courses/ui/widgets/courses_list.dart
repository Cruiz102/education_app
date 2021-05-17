import 'package:education_app/courses/ui/widgets/course_card.dart';
import 'package:flutter/material.dart';

class CourseList extends StatelessWidget {
  final t = Text("hello");
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 220.0,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          CourseCard(),
          CourseCard(),
          CourseCard(),
          CourseCard(),
          CourseCard(),
          CourseCard()
        ],
      ),
    );
  }
}
