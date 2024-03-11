import 'package:flutter/material.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';
import 'package:webview_flutter/webview_flutter.dart';

class CaptchaWebView extends StatefulWidget {
  const CaptchaWebView({super.key});

  @override
  State<CaptchaWebView> createState() => _CaptchaWebViewState();
}

class _CaptchaWebViewState extends State<CaptchaWebView> {
  //  InAppWebViewController? webViewController;

  @override
  void initState() {
    // controller = WebViewController()
    //   ..setJavaScriptMode(JavaScriptMode.unrestricted)
    //   ..setBackgroundColor(const Color(0x00000000))
    //   ..setNavigationDelegate(
    //     NavigationDelegate(
    //       onProgress: (int progress) {
    //         // Update loading bar.
    //       },
    //       onPageStarted: (String url) {},
    //       onPageFinished: (String url) {
    //         setState(() {});
    //       },
    //       onWebResourceError: (WebResourceError error) {},
    //       onNavigationRequest: (NavigationRequest request) {
    //         return NavigationDecision.navigate;
    //       },
    //     ),
    //   )
    //   ..loadRequest(Uri.parse("assets/web_pages/index.html"));

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: InAppWebView(
          initialFile: 'assets/web_pages/index.html',
          initialOptions: InAppWebViewGroupOptions(
             crossPlatform: InAppWebViewOptions(
                              javaScriptEnabled: true,
                              transparentBackground: true)
          ),
          onWebViewCreated: (InAppWebViewController controller) {
            // webViewController = controller;
          },
        ),
    );
  }
}
