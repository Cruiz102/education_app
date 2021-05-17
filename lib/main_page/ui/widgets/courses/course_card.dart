import 'package:flutter/material.dart';

class CourseCard extends StatefulWidget {
  @override
  _CourseCardState createState() => _CourseCardState();
}

class _CourseCardState extends State<CourseCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 20, right: 20),
      width: 130.0,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(Radius.circular(15)),
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
        Spacer(),
        Text(
          "CesarCourse",
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        Container(
          margin: EdgeInsets.all(10),
          height: 3,
          child: LinearProgressIndicator(
            value: 0.5,
            backgroundColor: Colors.white,
          ),
        )
      ]),
    );
  }
}
