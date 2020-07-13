import 'dart:async';
import 'package:flutter/material.dart';
import 'package:webview_flutter/platform_interface.dart';
import 'package:webview_flutter/webview_flutter.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  Completer<WebViewController> _controller = Completer<WebViewController>();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'WebView Flutter',
      home: Scaffold(
        appBar: AppBar(
          title: Text('WebView Flutter'),
        ),
        body: WebView(
          onWebResourceError: (WebResourceError webviewerrr) {
            print("Handle your Error Page here");
          },
          initialUrl: 'http://144.91.64.7:1319/',
          javascriptMode: JavascriptMode.unrestricted,
          onWebViewCreated: (WebViewController webViewController) {
            _controller.complete(webViewController);
          },
        ),
      ),
    );
  }
}
