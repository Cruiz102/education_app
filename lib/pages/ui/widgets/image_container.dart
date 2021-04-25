import 'package:flutter/material.dart';

class ImageContainer extends StatelessWidget {
  final String url;
  final double size;
  ImageContainer({this.url = "", this.size = 200.0});
  @override
  Widget build(BuildContext context) {
    return Container(
      height: size,
      decoration: BoxDecoration(
          color: Colors.red,
          borderRadius: BorderRadius.circular(30.0),
          image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage(url),
          )),
    );
  }
}
