import 'dart:async';

import 'package:webview_flutter/webview_flutter.dart';

class WebViewPage {
  final String initialUrl;
  final Completer<WebViewController> controller =
      Completer<WebViewController>();

  WebViewPage({
    required this.initialUrl,
  });
}
