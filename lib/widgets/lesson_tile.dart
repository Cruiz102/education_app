import 'package:flutter/material.dart';

class LessonTile extends StatefulWidget {
  @override
  _LessonTileState createState() => _LessonTileState();
}

class _LessonTileState extends State<LessonTile> {
  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.only(bottom: 40),
        child: Row(children: [
          Container(
            height: 20,
            width: 20,
            decoration:
                BoxDecoration(shape: BoxShape.circle, color: Colors.red),
          ),
          SizedBox(
            width: 120,
          ),
          Material(
              borderRadius: BorderRadius.circular(20),
              child: InkWell(
                  child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.transparent,
                      ),
                      height: 150,
                      width: 240,
                      child: ListTile(
                        leading: Icon(Icons.ac_unit),
                        title: Text("Que qioero fek"),
                        subtitle: Text("Lesson 2.1"),
                        trailing: Container(
                            color: Colors.green,
                            margin: EdgeInsets.only(top: 100),
                            child: Icon(
                              Icons.check,
                            )),
                        onTap: () {},
                      ))))
        ]));
  }
}
