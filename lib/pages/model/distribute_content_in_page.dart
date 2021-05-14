import 'package:flutter/material.dart';

distributeContentInPage(List<Widget> widgets, Text title) {
  dynamic titulo;
  titulo =
      Container(child: title, margin: EdgeInsets.only(bottom: 40.0, top: 40.0));

  widgets.insert(0, titulo);

  return widgets;
}
