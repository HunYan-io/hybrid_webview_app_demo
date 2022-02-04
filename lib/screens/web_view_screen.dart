import 'package:flutter/material.dart';
import 'package:webview_prototype/utils/web_view_page.dart';
import 'package:webview_prototype/widgets/web_view_tab.dart';

class WebViewScreen extends StatelessWidget {
  const WebViewScreen({Key? key}) : super(key: key);

  static final _pages = [
    WebViewPage(initialUrl: "https://flutter.dev"),
    WebViewPage(initialUrl: "https://docs.flutter.dev")
  ];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: _pages.length,
      child: Scaffold(
        appBar: AppBar(
          title: const Text("WebView Demo"),
          centerTitle: true,
        ),
        body: TabBarView(
          children: [for (final page in _pages) WebViewTab(page: page)],
        ),
        bottomNavigationBar: const Material(
          elevation: 20.0,
          color: Colors.white,
          child: TabBar(
            tabs: [
              Tab(
                icon: Icon(Icons.home),
              ),
              Tab(
                icon: Icon(Icons.text_snippet),
              ),
            ],
            labelColor: Colors.blue,
            unselectedLabelColor: Colors.black,
            indicatorSize: TabBarIndicatorSize.label,
            indicatorPadding: EdgeInsets.all(5.0),
            indicatorColor: Colors.blue,
          ),
        ),
      ),
    );
  }
}
