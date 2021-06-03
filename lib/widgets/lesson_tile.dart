import 'package:education_app/courses/ui/widgets/lesson_page_slider.dart';
import 'package:education_app/pages/ui/screens/example.dart';
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
            width: MediaQuery.of(context).size.width / 4,
          ),
          ElevatedButton(
              style: ButtonStyle(
                elevation: MaterialStateProperty.all<double>(0),
                backgroundColor:
                    MaterialStateProperty.all<Color>(Colors.grey.shade100),
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => (LessonPageSlider(
                            pageList: [
                              Something(),
                              Something(),
                              Something(),
                              Something(),
                              Something(),
                              Something(),
                              Something(),
                              Something(),
                              Something(),
                            ],
                          )),
                      maintainState: true,
                      fullscreenDialog: true),
                );
              },
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
                  )))
        ]));
  }
}
