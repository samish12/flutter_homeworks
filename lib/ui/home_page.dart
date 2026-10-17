import 'package:flutter_homework_02/main.dart';
import 'package:flutter_homework_02/ui/login_page.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const new({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          prefs.clear();
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => LoginPage()),
          );
        },
      ),
      body: Center(
        child: Text("Hello From HomePage", style: TextStyle(fontSize: 40)),
      ),
    );
  }
}
