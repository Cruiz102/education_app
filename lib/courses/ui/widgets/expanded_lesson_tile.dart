import 'package:education_app/widgets/lesson_tile.dart';
import 'package:flutter/material.dart';

class ExpandedLessonTile extends StatefulWidget {
  @override
  _ExpandedLessonTileState createState() => _ExpandedLessonTileState();
}

class _ExpandedLessonTileState extends State<ExpandedLessonTile> {
  List<bool> _isOpen = [false, false, false];
  @override
  Widget build(BuildContext context) {
    return ExpansionPanelList(children: [
      ExpansionPanel(
          canTapOnHeader: true,
          isExpanded: _isOpen[0],
          headerBuilder: (context, isOpen) {
            return Text(
              "Hello",
              style: TextStyle(fontSize: 20),
            );
          },
          body: Column(children: [
            LessonTile(),
            LessonTile(),
          ]))
    ], expansionCallback: (i, isOpen) => setState(() => _isOpen[i] = !isOpen));
  }
}
