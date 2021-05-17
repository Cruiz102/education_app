import 'package:education_app/courses/ui/widgets/courses_list.dart';
import 'package:flutter/material.dart';

class CourseHeader extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
            margin: EdgeInsets.only(top: 20, bottom: 10, left: 10),
            child: Text(
              "Popular",
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            )),
        Container(
          margin: EdgeInsets.only(bottom: 15, left: 10),
          child: Text(
            "Courses you've worked recently",
            style: TextStyle(fontSize: 15, fontStyle: FontStyle.italic),
          ),
        ),
        CourseList()
      ],
    ));
  }
}
