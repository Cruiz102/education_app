import 'package:education_app/pages/ui/screens/example.dart';
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
  List lastValue = [];
  int _currentPage = 0;
  bool checkIfSolved = false;
  final controllerPage = PageController();

  dynamic _correctAnswer(page) {
    if (widget.pageList[page].runtimeType == Something2) {
      Something2 aa = widget.pageList[page];
      bool neww = page < lastValue;
      if (aa.isSolvedCall() | neww) {
        // If the question is answered correctly we can swipe to the next page
        lastValue = page + 1;
        return true;
      } else {
        // If not disable the slider physics
        return false;
      }
    } else {
      // If the Widget does not have a Question Widget then we return true to do not stop the slider
      return true;
    }
  }

  void _changePagefunction(data) {
    if (_correctAnswer(data)) {
      setState(() {
        _currentPage = data;
      });
    }
  }

  void _changePagewithBar(data) {
    if (_correctAnswer(data)) {
      setState(() {
        _currentPage = data;
        controllerPage.jumpToPage(data);
      });
    }
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
          allowImplicitScrolling: true,
          physics: PageScrollPhysics(),
          scrollBehavior: ScrollBehavior(),
          controller: controllerPage,
          children: widget.pageList,
          onPageChanged: (int page) {
            _changePagefunction(page);
          }),
    );
  }
}
