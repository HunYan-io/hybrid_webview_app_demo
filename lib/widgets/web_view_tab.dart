import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';
import 'package:webview_prototype/utils/custom_gesture_recognizer.dart';

import 'package:webview_prototype/utils/web_view_page.dart';

class WebViewTab extends StatefulWidget {
  final WebViewPage page;
  const WebViewTab({
    Key? key,
    required this.page,
  }) : super(key: key);

  @override
  _WebViewTabState createState() => _WebViewTabState();
}

class _WebViewTabState extends State<WebViewTab>
    with AutomaticKeepAliveClientMixin {
  @override
  bool get wantKeepAlive => true;

  @override
  Widget build(BuildContext context) {
    super.build(context);
    return WebView(
      initialUrl: widget.page.initialUrl,
      javascriptMode: JavascriptMode.unrestricted,
      onWebViewCreated: (controller) {
        widget.page.controller.complete(controller);
      },
      gestureRecognizers: {}..add(
          Factory<PlatformViewVerticalGestureRecognizer>(
            () => PlatformViewVerticalGestureRecognizer(),
          ),
        ),
    );
  }
}
