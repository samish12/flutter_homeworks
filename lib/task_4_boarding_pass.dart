import 'package:flutter/material.dart';

class BoardingPass extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "My Trip",
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
        backgroundColor: Color(0xff263b74),
      ),
      body: ListView(
        padding: EdgeInsets.all(18.0),
        children: [
          SizedBox(height: 15),
          Card(
            elevation: 2,
            margin: EdgeInsets.all(10.0),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadiusGeometry.circular(15),
              side: BorderSide(color: const Color.fromARGB(255, 130, 130, 130)),
            ),
            child: Padding(
              padding: EdgeInsets.all(20.0),
              child: Column(
                children: [
                  SizedBox(height: 6),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Chip(
                        label: Text(
                          "BOARDING PASS",
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                            color: Color.fromARGB(255, 35, 52, 108),
                          ),
                        ),
                        backgroundColor: Color.fromARGB(255, 211, 215, 235),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),
                      Chip(
                        label: Text(
                          "SV 104",
                          style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.bold,
                            color: const Color.fromARGB(255, 100, 99, 99),
                          ),
                        ),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 30),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "RUH",
                            style: TextStyle(
                              fontSize: 30,
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                              height: 1,
                            ),
                          ),
                          Text(
                            "Riyadh",
                            style: TextStyle(
                              fontSize: 15,
                              color: const Color.fromARGB(255, 106, 100, 100),
                            ),
                          ),
                        ],
                      ),
                      Transform.rotate(
                        angle: 0.8,
                        child: Icon(
                          Icons.flight,
                          size: 50,
                          color: Color(0xff263b74),
                        ),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "DXB",
                            style: TextStyle(
                              fontSize: 30,
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                              height: 1,
                            ),
                          ),
                          Text(
                            "Dubai",
                            style: TextStyle(
                              fontSize: 15,
                              color: const Color.fromARGB(255, 106, 100, 100),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(height: 30),
                  Divider(height: 15, thickness: 2),
                  SizedBox(height: 25),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Date",
                            style: TextStyle(
                              fontSize: 15,
                              color: const Color.fromARGB(255, 106, 100, 100),
                            ),
                          ),
                          SizedBox(height: 7),
                          Text(
                            "18 Oct",
                            style: TextStyle(
                              fontSize: 19,
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                            ),
                          ),
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Gate",
                            style: TextStyle(
                              fontSize: 15,
                              color: const Color.fromARGB(255, 106, 100, 100),
                            ),
                          ),
                          SizedBox(height: 7),
                          Text(
                            "A 12",
                            style: TextStyle(
                              fontSize: 19,
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                            ),
                          ),
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Seat",
                            style: TextStyle(
                              fontSize: 15,
                              color: const Color.fromARGB(255, 106, 100, 100),
                            ),
                          ),
                          SizedBox(height: 7),
                          Text(
                            "7A",
                            style: TextStyle(
                              fontSize: 19,
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(height: 30),
                ],
              ),
            ),
          ),
          SizedBox(height: 70),
          Text(
            "Seat map",
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ),
          SizedBox(height: 15),
          GridView.count(
            crossAxisCount: 3,
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            mainAxisSpacing: 10,
            crossAxisSpacing: 10,
            childAspectRatio: 2.0,
            children: [
              Container(
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 209, 214, 226),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Text(
                  "6A",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
              ),
              Container(
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 209, 214, 226),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Text(
                  "6B",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
              ),
              Container(
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 209, 214, 226),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Text(
                  "6C",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
              ),
              Container(
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: Color(0xff263b74),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Text(
                  "7A",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ),
              Container(
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 209, 214, 226),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Text(
                  "7B",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
              ),
              Container(
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 209, 214, 226),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Text(
                  "7C",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
