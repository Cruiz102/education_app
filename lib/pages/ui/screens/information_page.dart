import 'package:education_app/pages/model/distribute_content_in_page.dart';
import 'package:flutter/material.dart';

class InformationPage extends StatefulWidget {
  final String title;
  final List<Widget> children;
  InformationPage({this.title, this.children});
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
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(Icons.arrow_back_ios_outlined)),
        backgroundColor: Colors.transparent,
        shadowColor: Colors.transparent,
      ),
      body: ListView(
        children: distributeContentInPage(widget.children, titleText),
      ),
    );
  }
}