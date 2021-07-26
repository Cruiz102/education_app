import 'package:education_app/widgets/interactives/explanation_page.dart';
import 'package:flutter/material.dart';

class MultipleSelect extends StatefulWidget {
  final int numbers;
  final int correctAnswer;
  final List<Widget> description;
  MultipleSelect({this.numbers, this.correctAnswer, this.description});

  @override
  _MultipleSelectState createState() => _MultipleSelectState();
}

class _MultipleSelectState extends State<MultipleSelect> {
  int valueofthemultipleSelectwidget = 0;

  void changeAnswer(value) {
    setState(() {
      print(value);
      valueofthemultipleSelectwidget = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    List<Widget> answers(int hello) {
      List<Widget> list = [];

      list.add(SizedBox(height: 25));

      for (int i = 0; i < widget.numbers; i++) {
        Widget radio = Container(
            width: MediaQuery.of(context).size.width / 1.101,
            decoration: BoxDecoration(
              boxShadow: <BoxShadow>[BoxShadow(spreadRadius: 0.1)],
              color: Colors.grey.shade100,
            ),
            child: RadioListTile(
                value: i,
                groupValue: valueofthemultipleSelectwidget,
                onChanged: (value) => {changeAnswer(value)},
                title: widget.description[i]));
        list.add(radio);
      }
      list.add(SizedBox(height: 5));

      list.add(ElevatedButton(
          onPressed: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => (ExplanationPage()),
                    maintainState: true,
                    fullscreenDialog: true));
          },
          child: Container(
            child: Center(child: Text("Submit")),
            width: MediaQuery.of(context).size.width / 1.15,
          )));
      return list;
    }

    return Column(children: answers(widget.numbers));
  }
}
