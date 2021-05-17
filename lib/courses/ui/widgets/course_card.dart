import 'package:education_app/courses/ui/screens/course_menu_page.dart';
import 'package:flutter/material.dart';

class CourseCard extends StatefulWidget {
  @override
  _CourseCardState createState() => _CourseCardState();
}

class _CourseCardState extends State<CourseCard> {
  @override
  Widget build(BuildContext context) {
    return Row(children: [
      SizedBox(width: 15),
      Material(
          child: InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => (CourseMenuPage()),
                      maintainState: true,
                      fullscreenDialog: true),
                );
              },
              child: Container(
                width: 130.0,
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey.shade400, width: 1),
                ),
                child: Column(children: [
                  Container(
                      height: 120,
                      child: Center(
                          child: Icon(
                        Icons.ac_unit,
                        size: 100,
                      ))),
                  Text(
                    "Course Introduction",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  Spacer(),
                  Container(
                    margin: EdgeInsets.all(10),
                    height: 3,
                    child: LinearProgressIndicator(
                      value: 0.5,
                      backgroundColor: Colors.white,
                    ),
                  )
                ]),
              ))),
    ]);
  }
}
