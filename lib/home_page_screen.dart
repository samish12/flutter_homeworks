import 'package:flutter/material.dart';
import 'package:flutter_homework_02/home_page_service.dart';

class HomePageScreen extends StatelessWidget {
  const new({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FutureBuilder(
        future: getHomePage(),
        builder: (buildcontext, snapshot) {
          if (snapshot.hasData) {
            return Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(snapshot.data['id'], style: TextStyle(fontSize: 25)),
                  Text(snapshot.data['name'], style: TextStyle(fontSize: 25)),
                  Image.network(snapshot.data['avatar']),
                ],
              ),
            );
          } else {
            return Center(child: CircularProgressIndicator());
          }
        },
      ),
    );
  }
}
