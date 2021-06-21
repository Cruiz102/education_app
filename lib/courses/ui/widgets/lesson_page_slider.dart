import 'package:education_app/widgets/progress_bar_widgets/progress_bars.dart';
import 'package:flutter/material.dart';

class LessonPageSlider extends StatefulWidget {
  final List<Widget> pageList;
  final Key key;
  LessonPageSlider({this.pageList, this.key});

  @override
  _LessonPageSliderState createState() => _LessonPageSliderState();
}

class _LessonPageSliderState extends State<LessonPageSlider> {
  int _currentPage = 0;
  final controllerPage = PageController();

  void _changePagefunction(data) {
    setState(() {
      _currentPage = data;
    });
  }

  void _changePagewithBar(data) {
    setState(() {
      _currentPage = data;
      controllerPage.jumpToPage(data);
    });
  }

  @override
  Widget build(BuildContext context) {
    //This is the controller of the PageView

    var button = IconButton(onPressed: () {}, icon: Icon(Icons.menu));
    return Scaffold(
      appBar: AppBar(
        title: ProgressBar(
          numberOfPages: widget.pageList.length,
          current: _currentPage,
          functionFromBars: _changePagewithBar,
        ),
        actions: [button],
      ),
      body: PageView(
          physics: PageScrollPhysics(),
          controller: controllerPage,
          children: widget.pageList,
          onPageChanged: (int page) {
            _changePagefunction(page);
          }),
    );
  }
}
