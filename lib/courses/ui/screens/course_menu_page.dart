import 'package:education_app/courses/ui/widgets/expanded_lesson_tile.dart';
import 'package:flutter/material.dart';

class CourseMenuPage extends StatefulWidget {
  @override
  _CourseMenuPageState createState() => _CourseMenuPageState();
}

class _CourseMenuPageState extends State<CourseMenuPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: CustomScrollView(slivers: <Widget>[
      SliverAppBar(
          pinned: true,
          leading: IconButton(
            icon: Icon(Icons.arrow_back_ios),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
          backgroundColor: Colors.blue.shade400,
          expandedHeight: 200.0,
          flexibleSpace: const FlexibleSpaceBar(
              title: Text('Science and Zoology'),
              background: Image(
                image: AssetImage('lib/pages/repository/jiraffe.jpeg'),
              ))),
      SliverList(
          delegate: SliverChildListDelegate([
        ExpandedLessonTile(),
      ]))
    ]));
  }
}
