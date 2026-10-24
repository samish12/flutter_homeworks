import 'package:flutter_homework_02/main.dart';
import 'package:flutter_homework_02/model/user_model.dart';
import 'package:flutter_homework_02/service/login_service.dart';
import 'package:flutter_homework_02/ui/home_page.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  LoginPage({super.key});
  TextEditingController name = TextEditingController();
  TextEditingController password = TextEditingController();

  @override
  Widget build(BuildContext context) {
    prefs.setBool("firstOpen", false);
    return Scaffold(
      body: Center(
        child: Column(
          spacing: 20,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Hello From Login"),
            SizedBox(width: 300, child: TextField(controller: name)),
            SizedBox(width: 300, child: TextField(controller: password)),
            ElevatedButton(
              onPressed: () async {
                bool status = await logIn(
                  UserModel(name: name.text, password: password.text),
                );
                if (status) {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(builder: (context) => const HomePage()),
                  );
                } else {
                  // ... else {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      behavior: SnackBarBehavior.floating,
                      backgroundColor: Colors.red,
                      content: Text("Please Enter Your Real account"),
                    ),
                  );
                }
              },
              child: Text("Log In"),
            ),
          ],
        ),
      ),
    );
  }
}
