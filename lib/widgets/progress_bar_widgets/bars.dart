import 'package:flutter/material.dart';

class Bar extends StatefulWidget {
  final int numberOfPages;
  final Key key;
  final Function callback;
  Bar({this.numberOfPages, this.key, this.callback});

  @override
  _BarState createState() => _BarState();
}

class _BarState extends State<Bar> {
  @override
  Widget build(BuildContext context) {
    dynamic a;
    return Expanded(
        child: Container(
      key: widget.key,
      child: InkWell(
        onTap: () => {
          a = widget.key.toString().replaceAll(new RegExp(r'[^0-9]'), ''),
          a = int.parse(a),
          widget.callback(a)
        },
      ),
      margin: EdgeInsets.only(
        top: 5,
        left: 2,
      ),
      color: Colors.black,
      height: 8,
      width: MediaQuery.of(context).size.width / (widget.numberOfPages * 1),
    ));
  }
}

class SelectedBar extends StatefulWidget {
  final int numberOfPages;
  final Key key;
  final Function callback;
  SelectedBar({this.numberOfPages, this.key, this.callback});

  @override
  _SelectedBarState createState() => _SelectedBarState();
}

class _SelectedBarState extends State<SelectedBar> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: Container(
      child: InkWell(
        radius: 100.0,
        onTap: () => {print("hi")},
      ),
      margin: EdgeInsets.only(
        top: 5,
        left: 2,
      ),
      color: Colors.amber,
      height: 16,
      width: MediaQuery.of(context).size.width / (widget.numberOfPages),
    ));
  }
}
