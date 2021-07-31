import 'package:flutter/material.dart';

class MakeDismisseble extends StatelessWidget {
  final Widget child;
  MakeDismisseble({this.child});
  @override
  // ignore: missing_return
  Widget build(BuildContext context) {
    return GestureDetector(
      behavior: HitTestBehavior.opaque,
      onTap: () => Navigator.of(context).pop(),
      child: GestureDetector(onTap: () {}, child: child),
    );
  }
}

class WinInformation {
  String text;
  Color color;
  WinInformation(this.text, this.color);
}

class ExplanationPage extends StatelessWidget {
  final int correctAnswer;
  final int givenValue;
  final Widget explanationInfo;
  final controller = ScrollController();
  ExplanationPage({this.correctAnswer, this.givenValue, this.explanationInfo});
// This method check if the answer is correct and full the class
  checkAnswer() {
    if (givenValue == correctAnswer) {
      return WinInformation("Correct", Colors.green);
    } else {
      return WinInformation("Wrong", Colors.red);
    }
  }

  @override
  Widget build(BuildContext context) {
    return MakeDismisseble(
        child: DraggableScrollableSheet(
            initialChildSize: 0.5,
            maxChildSize: 0.9,
            minChildSize: 0.2,
            builder: (context, scrollController) {
              return Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius:
                          BorderRadius.vertical(top: Radius.circular(15))),
                  padding: EdgeInsets.all(16),
                  child: ListView(controller: scrollController, children: [
                    Center(
                        child: Text(
                      checkAnswer().text,
                      style: TextStyle(
                          fontSize: 50.0,
                          fontWeight: FontWeight.bold,
                          color: checkAnswer().color),
                    )),
                    //Explanation Content HERE:
                    explanationInfo
                  ]));
            }));
  }
}
