import 'package:flutter_homework_02/main.dart';
import 'package:flutter_homework_02/ui/login_page.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key}); // Fixed constructor

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          prefs.remove('token');
          Navigator.pushReplacement(
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
