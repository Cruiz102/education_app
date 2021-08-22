import 'package:flutter/material.dart';

class InformationPage extends StatefulWidget {
  final String title;
  final bool solve;
  final List<Widget> children;
  InformationPage({this.title, this.children, this.solve = true});
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
