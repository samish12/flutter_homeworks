import 'package:flutter_homework_02/ui/hello_page.dart';
import 'package:flutter_homework_02/ui/home_page.dart';
import 'package:flutter_homework_02/ui/login_page.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

// bool firstOpen = true;
// ? Declartion
late SharedPreferences prefs;

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  // ? inilization
  prefs = await SharedPreferences.getInstance();

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  new({super.key});

  // bool firstOpen = prefs.getBool('firstOpen') ?? false;
  bool notHasToken = checkIfHasToken(prefs);
  bool firstOpen = prefs.getBool('firstOpen') ?? true;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // ? in-line if
      home: firstOpen
          ? const HelloPage()
          : (notHasToken ? LoginPage() : const HomePage()),
    );
  }
}

bool checkIfHasToken(SharedPreferences object) {
  if (object.getString("token") == null) {
    return true;
  } else {
    return false;
  }
}
