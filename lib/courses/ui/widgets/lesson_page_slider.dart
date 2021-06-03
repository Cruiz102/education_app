import 'package:education_app/widgets/progress_bars.dart';
import 'package:flutter/material.dart';

class LessonPageSlider extends StatefulWidget {
  final List<Widget> pageList;
  LessonPageSlider({this.pageList});

  @override
  _LessonPageSliderState createState() => _LessonPageSliderState();
}

class _LessonPageSliderState extends State<LessonPageSlider> {
  int _currentPage = 0;

  void _asa(data) {
    setState(() {
      _currentPage = data;
    });
  }

  @override
  Widget build(BuildContext context) {
    var button =
        IconButton(onPressed: () {}, icon: Icon(Icons.access_alarm_outlined));
    return Scaffold(
      appBar: AppBar(
        title: ProgressBar(
          numberOfPages: widget.pageList.length,
          current: _currentPage,
        ),
        actions: [button],
      ),
      body: PageView(
          children: widget.pageList,
          onPageChanged: (int page) {
            print("Current Page: " + page.toString());
            _asa(page);
          }),
    );
  }
}
