import 'package:education_app/pages/ui/screens/information_page.dart';
import 'package:education_app/widgets/interactives/multiple_select.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_markdown/flutter_markdown.dart';

class Something extends StatefulWidget {
  @override
  _SomethingState createState() => _SomethingState();
}

class _SomethingState extends State<Something> {
  String data = "";
  fetchFileData() async {
    String responseText;
    responseText = await rootBundle.loadString("lib/pages/ui/screens/text.txt");
    setState(() {
      data = responseText;
    });
  }

  @override
  void initState() {
    fetchFileData();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return InformationPage(
      title: "Science in the space",
      children: [
        MarkdownBody(
          data: data,
          selectable: true,
        ),
        ElevatedButton(
            onPressed: () {
              print(data);
            },
            child: Text("toca")),
      ],
    );
  }
}

class Something2 extends StatefulWidget {
  @override
  _Something2State createState() => _Something2State();
}

enum SingingCharacter { lafayette, jefferson }

class _Something2State extends State<Something2> {
  String data = "";
  fetchFileData() async {
    String responseText;
    responseText =
        await rootBundle.loadString("lib/pages/ui/screens/albert.txt");
    setState(() {
      data = responseText;
    });
  }

  @override
  void initState() {
    fetchFileData();
    super.initState();
  }

  int selectedpsotion = 1;
  @override
  Widget build(BuildContext context) {
    return InformationPage(
      title: "Science in the space",
      children: [
        MarkdownBody(
          data: data,
          selectable: true,
        ),
        MultipleSelect(
          correctAnswer: 1,
          description: [Text("kb"), Text("sfg"), Text("Teamo")],
        )
      ],
    );
  }
}
