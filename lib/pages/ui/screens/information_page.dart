import 'package:education_app/pages/model/distribute_content_in_page.dart';
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
    final titleText = Text(
      widget.title,
      style: TextStyle(fontSize: 30.0),
    );
    return Scaffold(
      body: ListView(
        children: distributeContentInPage(widget.children, titleText),
      ),
    );
  }
}
