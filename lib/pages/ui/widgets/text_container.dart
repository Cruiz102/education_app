import 'package:flutter/material.dart';

class TextContainer extends StatelessWidget {
  final Widget text;
  TextContainer({this.text});
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: text,
      ),
    );
  }
}
