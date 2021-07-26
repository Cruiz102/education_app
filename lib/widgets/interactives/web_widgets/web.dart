import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:webview_flutter/webview_flutter.dart';

class WebWidget extends StatefulWidget {
  @override
  _WebWidget createState() => _WebWidget();
}

class _WebWidget extends State<WebWidget> {
  WebViewController _controller;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Webview')),
      body: WebView(
        initialUrl: 'about:blank',
        onWebViewCreated: (WebViewController webviewController) {
          _controller = webviewController;
          _loadHtmlFromAssets();
        },
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.arrow_upward),
        onPressed: () {
          _controller.evaluateJavascript('fromFlutter("From Flutter")');
        },
      ),
    );
  }

  _loadHtmlFromAssets() async {
    String file = await rootBundle
        .loadString('lib/widgets/interactives/web_widgets/index.html');
    _controller.loadUrl(Uri.dataFromString(file,
            mimeType: 'text/html', encoding: Encoding.getByName('utf-8'))
        .toString());
  }
}
