import 'package:flutter/material.dart';
import 'package:flutter_homework_02/main.dart';
import 'package:flutter_homework_02/ui/login_page.dart';

class HelloPage extends StatefulWidget {
  const new({super.key});

  @override
  State<HelloPage> createState() => _HelloPageState();
}

class _HelloPageState extends State<HelloPage> {
  Tween<double> tween = Tween(begin: 0, end: 1);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: TweenAnimationBuilder(
          tween: tween,
          duration: Duration(seconds: 3),
          onEnd: () {
            prefs.setBool('firstOpen', false);
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(builder: (context) => LoginPage()),
            );
          },
          builder: (context, value, child) => FlutterLogo(size: value * 300),
        ),
      ),
    );
  }
}
