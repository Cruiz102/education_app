import 'package:flutter/material.dart';

class ProgressBar extends StatefulWidget {
  final int numberOfPages;
  final int current;

  ProgressBar({this.numberOfPages, this.current});
  @override
  _ProgressBarState createState() => _ProgressBarState();
}

class _ProgressBarState extends State<ProgressBar> {
  @override
  Widget build(BuildContext context) {
    var bar = Expanded(
        child: Container(
      child: InkWell(
        onTap: () => {print("hi")},
      ),
      margin: EdgeInsets.only(
        top: 23,
        left: 4,
      ),
      color: Colors.black,
      height: 8,
      width: MediaQuery.of(context).size.width / (widget.numberOfPages * 2),
    ));
    var currentPageinSlider = Expanded(
        child: Container(
      child: InkWell(
        onTap: () => {print("hi")},
      ),
      margin: EdgeInsets.only(
        top: 23,
        left: 4,
      ),
      color: Colors.amber,
      height: 8,
      width: MediaQuery.of(context).size.width / (widget.numberOfPages * 2),
    ));

    List<Widget> barrs = [];
    for (int i = 0; i < widget.numberOfPages; i++) {
      if (i == widget.current) {
        barrs.add(currentPageinSlider);
      } else {
        barrs.add(bar);
      }
    }

    return Container(
      child: Row(children: barrs),
    );
  }
}
