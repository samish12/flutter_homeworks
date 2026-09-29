import 'package:flutter/material.dart';

class RestaurantMenu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Olive Kitchen",
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
        backgroundColor: Color(0xffb9462e),
      ),
      body: ListView(
        padding: EdgeInsets.all(18.0),
        children: [
          SizedBox(height: 15),
          Container(
            padding: EdgeInsets.all(16.0),
            height: 200,
            width: 10,
            decoration: BoxDecoration(
              color: Color.fromARGB(255, 240, 185, 156),
              border: Border.all(
                color: Color.fromARGB(255, 237, 163, 123),
                width: 1,
              ),
              borderRadius: BorderRadius.circular(10),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 6),
                Text(
                  "Today's Special",
                  style: TextStyle(
                    fontSize: 16,
                    color: const Color.fromARGB(255, 98, 98, 98),
                  ),
                ),
                SizedBox(height: 15),
                Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(height: 20),
                        Text(
                          "Mediterranean Plate",
                          style: TextStyle(
                            fontSize: 22,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                        ),
                        SizedBox(height: 15),
                        Chip(
                          label: Text("\$ 12.50"),
                          labelStyle: TextStyle(
                            fontSize: 15,
                            color: Colors.black,
                          ),
                          backgroundColor: Color(0xffb9462e),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadiusGeometry.circular(10),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(width: 30),
                    CircleAvatar(
                      radius: 45,
                      child: Icon(Icons.food_bank, size: 40),
                      backgroundColor: Color.fromARGB(255, 241, 211, 194),
                    ),
                  ],
                ),
              ],
            ),
          ),
          SizedBox(height: 35),
          Text(
            "Popular Dishes",
            style: TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ),
          SizedBox(height: 5),
          ListTile(
            leading: CircleAvatar(
              child: Icon(Icons.local_pizza, size: 35),
              backgroundColor: Color.fromARGB(255, 241, 211, 194),
              radius: 45,
            ),
            title: Text(
              "Margherita",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            subtitle: Text(
              "Tomato, Cheese, Basil",
              style: TextStyle(
                fontSize: 15,
                color: const Color.fromARGB(255, 123, 123, 123),
              ),
            ),
            trailing: Text(
              "\$8",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            contentPadding: EdgeInsets.symmetric(
              horizontal: 0.0,
              vertical: 10.0,
            ),
          ),
          Divider(height: 10, thickness: 3),
          ListTile(
            leading: CircleAvatar(
              child: Icon(Icons.lunch_dining, size: 35),
              backgroundColor: Color.fromARGB(255, 241, 211, 194),
              radius: 45,
            ),
            title: Text(
              "Falafel Wrap",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            subtitle: Text(
              "Tahini and Vegetables",
              style: TextStyle(
                fontSize: 15,
                color: const Color.fromARGB(255, 123, 123, 123),
              ),
            ),
            trailing: Text(
              "\$6",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            contentPadding: EdgeInsets.symmetric(
              horizontal: 0.0,
              vertical: 10.0,
            ),
          ),
          Divider(height: 10, thickness: 3),
          ListTile(
            leading: CircleAvatar(
              child: Icon(Icons.cake, size: 35),
              backgroundColor: Color.fromARGB(255, 241, 211, 194),
              radius: 45,
            ),
            title: Text(
              "Cheesecake",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            subtitle: Text(
              "Vanilla and Lemon",
              style: TextStyle(
                fontSize: 15,
                color: const Color.fromARGB(255, 123, 123, 123),
              ),
            ),
            trailing: Text(
              "\$5",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            contentPadding: EdgeInsets.symmetric(
              horizontal: 0.0,
              vertical: 10.0,
            ),
          ),
          Divider(height: 10, thickness: 3),
        ],
      ),
    );
  }
}
