import 'package:education_app/widgets/interactives/explanation_page.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class MultipleSelect extends StatefulWidget {
  final int correctAnswer;
  final List<Widget> description;
  MultipleSelect({this.correctAnswer, this.description});
  get boolState {
    return answerCorrectandbuttonPressed;
  }

  int valueofthemultipleSelectwidget = 0;
  bool answerCorrectandbuttonPressed = false;

  @override
  _MultipleSelectState createState() => _MultipleSelectState();
}

class _MultipleSelectState extends State<MultipleSelect> {
// This method changed the value of the answer of the radiobuttons
  void changeAnswer(value) {
    setState(() {
      widget.valueofthemultipleSelectwidget = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    // This is the function that set the radio Button possible answers and put a Submit Button
    List<Widget> answers(int hello) {
      List<Widget> list = [];

      list.add(SizedBox(height: 25));

      for (int i = 0; i < widget.description.length; i++) {
        Widget radio = Container(
            width: MediaQuery.of(context).size.width / 1.101,
            decoration: BoxDecoration(
              boxShadow: <BoxShadow>[BoxShadow(spreadRadius: 0.1)],
              color: Colors.grey.shade100,
            ),
            child: RadioListTile(
                value: i,
                groupValue: widget.valueofthemultipleSelectwidget,
                onChanged: (value) => {changeAnswer(value)},
                title: widget.description[i]));
        list.add(radio);
      }
      list.add(SizedBox(height: 5));

      list.add(ElevatedButton(
          onPressed: () => {
                if (widget.correctAnswer ==
                    widget.valueofthemultipleSelectwidget)
                  {widget.answerCorrectandbuttonPressed = true}
                else
                  {widget.answerCorrectandbuttonPressed = false},
                showModalBottomSheet(
                    isScrollControlled: true,
                    backgroundColor: Colors.transparent,
                    context: context,
                    builder: (context) => ExplanationPage(
                          correctAnswer: widget.correctAnswer,
                          givenValue: widget.valueofthemultipleSelectwidget,
                          explanationInfo: Text("hola"),
                        ))
              },
          child: Container(
            child: Center(child: Text("Submit")),
            width: MediaQuery.of(context).size.width / 1.15,
          )));
      return list;
    }

// In here we return the function that set us all the ui
    return Column(children: answers(widget.description.length));
  }
}
