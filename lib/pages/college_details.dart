import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

import '../model/college_model.dart';
import '../services/api_service.dart';

class CollegeDetails extends StatefulWidget {
  final CollegeModel item;
  const CollegeDetails({Key? key, required this.item}) : super(key: key);

  @override
  _CollegeDetailsState createState() => _CollegeDetailsState();
}

class _CollegeDetailsState extends State<CollegeDetails> {
  late WebViewController controller;


  @override
  void initState() {
    controller = WebViewController()
      ..setJavaScriptMode(JavaScriptMode.unrestricted)
      ..setBackgroundColor(const Color(0x00000000))
      ..setNavigationDelegate(
        NavigationDelegate(
          onProgress: (int progress) {
            // Update loading bar.
          },
          onPageStarted: (String url) {},
          onPageFinished: (String url) {},
          onWebResourceError: (WebResourceError error) {},
          onNavigationRequest: (NavigationRequest request) {
            if (request.url.startsWith('https://www.youtube.com/')) {
              return NavigationDecision.prevent;
            }
            return NavigationDecision.navigate;
          },
        ),
      )
      ..loadRequest(Uri.parse(widget.item.webPages.toString()));
  }

  final user = FirebaseAuth.instance.currentUser!;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(widget.item.name.toString())),
      body:  WebViewWidget(controller: controller ),
    );
  }
}
