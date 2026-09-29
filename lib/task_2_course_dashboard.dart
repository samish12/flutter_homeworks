import 'dart:ffi';

import 'package:flutter/material.dart';

class CourseDashboard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "My Course",
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
        backgroundColor: Color(0xff086f83),
      ),
      body: ListView(
        padding: EdgeInsets.all(18.0),
        children: [
          SizedBox(height: 10),
          Container(
            padding: EdgeInsets.all(16.0),
            height: 180,
            width: 30,
            decoration: BoxDecoration(
              color: Color(0xff0b8197),
              borderRadius: BorderRadius.circular(10),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 8),
                Text(
                  "Flutter Fundamentals ",
                  style: TextStyle(fontSize: 18, color: Colors.white),
                ),
                SizedBox(height: 16),
                Text(
                  "Session 2 ",
                  style: TextStyle(
                    fontSize: 34,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                SizedBox(height: 6),
                LinearProgressIndicator(
                  value: 0.4,
                  backgroundColor: Color(0xff4da7b7),
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                  minHeight: 15,
                ),
                SizedBox(height: 6),
                Text(
                  "40% completed",
                  style: TextStyle(fontSize: 15, color: Colors.white),
                ),
              ],
            ),
          ),
          SizedBox(height: 40),
          Text(
            "Today",
            style: TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ),
          SizedBox(height: 15),
          Card(
            elevation: 2,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
              side: BorderSide(color: Colors.black),
            ),
            child: Padding(
              padding: EdgeInsets.all(16.0),
              child: Row(
                children: [
                  Icon(Icons.widgets, size: 40, color: Color(0xff086f83)),
                  SizedBox(width: 15),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Layout Widgets",
                          style: TextStyle(
                            fontSize: 22,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                        ),
                        SizedBox(height: 6),
                        Text(
                          "Row , Column , Container ",
                          style: TextStyle(
                            fontSize: 16,
                            color: const Color.fromARGB(255, 67, 64, 64),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: 10),
          Card(
            elevation: 2,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
              side: BorderSide(color: Colors.black),
            ),
            child: Padding(
              padding: EdgeInsets.all(16.0),
              child: Row(
                children: [
                  Icon(Icons.circle, size: 40, color: Color(0xff086f83)),
                  SizedBox(width: 15),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Practice",
                          style: TextStyle(
                            fontSize: 22,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                        ),
                        SizedBox(height: 6),
                        Text(
                          "build a static screen",
                          style: TextStyle(
                            fontSize: 16,
                            color: const Color.fromARGB(255, 67, 64, 64),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: 25),
          Text(
            "Topics",
            style: TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ),
          SizedBox(height: 15),
          Wrap(
            spacing: 10,
            runSpacing: 5,
            children: [
              Chip(
                label: Text("Text"),
                labelStyle: TextStyle(fontSize: 15),
                backgroundColor: Color.fromARGB(255, 159, 170, 232),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadiusGeometry.circular(20),
                ),
              ),
              Chip(
                label: Text("Icons"),
                labelStyle: TextStyle(fontSize: 15),
                backgroundColor: Color.fromARGB(255, 159, 170, 232),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadiusGeometry.circular(20),
                ),
              ),
              Chip(
                label: Text("Spacing"),
                labelStyle: TextStyle(fontSize: 15),
                backgroundColor: Color.fromARGB(255, 159, 170, 232),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadiusGeometry.circular(20),
                ),
              ),
              Chip(
                label: Text("Colors"),
                labelStyle: TextStyle(fontSize: 15),
                backgroundColor: Color.fromARGB(255, 159, 170, 232),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadiusGeometry.circular(20),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
