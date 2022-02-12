import 'package:education_app/widgets/interactives/multiple_select.dart';
import 'package:flutter/material.dart';

class InformationPage extends StatefulWidget {
  final String title;

  final List<Widget> children;
  InformationPage({this.title, this.children});

  bool checkIfSolved() {
    bool solve;
    for (var i = 0; i < children.length; i++) {
      if (children[i].runtimeType == MultipleSelect) {
        MultipleSelect a = children[i];
        if (a.boolState)
          solve = true;
        else {
          return false;
        }
      }
    }
    return solve;
  }

  @override
  _InformationPageState createState() => _InformationPageState();
}

class _InformationPageState extends State<InformationPage> {
  @override
  Widget build(BuildContext context) {
    //titleText is the widget of the title of the information Page
    final titleText = Container(
        margin: EdgeInsets.only(bottom: 40, top: 40),
        child: Text(
          widget.title,
          style: TextStyle(fontSize: 30.0),
        ));
    widget.children.insert(0, titleText);
    return Scaffold(
      body: ListView(children: widget.children),
    );
  }
}
