import 'package:education_app/widgets/progress_bar_widgets/bars.dart';
import 'package:flutter/material.dart';

class ProgressBar extends StatefulWidget {
  final int numberOfPages;
  final int current;
  final Function functionFromBars;

  ProgressBar({this.numberOfPages, this.current, this.functionFromBars});
  @override
  _ProgressBarState createState() => _ProgressBarState();
}

class _ProgressBarState extends State<ProgressBar> {
  @override
  Widget build(BuildContext context) {
    List<Widget> barrs = [];
    for (int i = 0; i < widget.numberOfPages; i++) {
      if (i == widget.current) {
        barrs.add(SelectedBar(
          numberOfPages: widget.numberOfPages,
        ));
      } else {
        barrs.add(Bar(
          numberOfPages: widget.numberOfPages,
          key: Key(i.toString()),
          callback: widget.functionFromBars,
        ));
      }
    }
    return Container(
      child: Row(children: barrs),
    );
  }
}
