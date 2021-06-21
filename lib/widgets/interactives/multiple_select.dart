import 'package:flutter/material.dart';

class MultipleSelect extends StatefulWidget {
  @override
  _MultipleSelectState createState() => _MultipleSelectState();
}

class _MultipleSelectState extends State<MultipleSelect> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 15),
      height: 50,
      width: MediaQuery.of(context).size.width,
      color: Colors.grey.shade200,
      child: Row(children: [
        BulletIndicator(),
        SizedBox(
          width: 10,
        ),
        Expanded(child: Text("sfjsbfjkhwefugv")),
      ]),
    );
  }
}

class BulletIndicator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Container(
        width: 32,
        height: 32,
        decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: Colors.white,
            border: Border.all(width: 1.5)),
      ),
      Positioned(
          top: 6,
          left: 6,
          child: Container(
            width: 20,
            height: 20,
            decoration:
                BoxDecoration(shape: BoxShape.circle, color: Colors.black),
          ))
    ]);
  }
}
