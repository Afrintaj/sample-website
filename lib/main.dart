import 'package:flutter/material.dart';
import 'package:flutter_captcha_demo/captcha_demo/captcha_webview.dart';
import 'package:flutter_captcha_demo/recaptca_config.dart';
import 'package:flutter_captcha_demo/web_view.dart';

void main() {
  /// STEP: 1
  /// Initialize your data site key
  /// Should be called at main to setup the site key
  RecaptchaHandler.instance
      .setupSiteKey(dataSiteKey: '6LcTZ5ApAAAAAP6aLM_XORmnPdxMdqvRn0C2zXBO');
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My Awesome App',
      theme: ThemeData(
        useMaterial3: true,
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.purple),
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const CaptchaWebView(),
              ElevatedButton(
                onPressed: (){
                  
                },
                child: const Text('submit'),
              )
            ],
          ),
        ),
      ),
    );
  }

  /// STEP: 3
  /// After calling [RecaptchaHandler.executeV3()] you will receive the [token]
  /// Verify your Token using the server

  _onTokenReceived(String token) {
    print("FINAL TOKEN===> $token");
  }

  /// STEP: 2
  /// Execute the Recaptcha V3  using this method call

  void execute() => RecaptchaHandler.executeV3();
}
