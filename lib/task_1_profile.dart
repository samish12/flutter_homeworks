// import 'package:flutter/material.dart';

// class StudentProfile extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text(
//           "Student Profile",
//           style: TextStyle(color: Colors.white),
//         ),
//         backgroundColor: Colors.deepPurple,
//       ),
//       body: SingleChildScrollView(
//         child: Padding(
//           padding: EdgeInsetsGeometry.only(left: 20, right: 20),
//           child: Column(
//             children: [
//               SizedBox(height: 30),
//               CircleAvatar(radius: 60, child: Icon(Icons.person, size: 60)),
//               SizedBox(height: 20),
//               Text(
//                 "Lina Haddad",
//                 style: TextStyle(
//                   fontSize: 22,
//                   fontWeight: FontWeight.bold,
//                   color: Colors.black,
//                 ),
//               ),
//               SizedBox(height: 6),
//               Text(
//                 "flutter beginner",
//                 style: TextStyle(
//                   fontSize: 18,
//                   color: const Color.fromARGB(255, 9, 9, 9),
//                 ),
//               ),
//               SizedBox(height: 15),
//               Card(
//                 elevation: 2,
//                 shape: RoundedRectangleBorder(
//                   borderRadius: BorderRadius.circular(12),
//                   side: BorderSide(color: Colors.black26),
//                 ),
//                 child: Padding(
//                   padding: const EdgeInsets.all(16.0),
//                   child: Row(
//                     mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                     children: [
//                       Expanded(
//                         child: Column(
//                           children: const [
//                             Text(
//                               "12",
//                               style: TextStyle(
//                                 fontSize: 18,
//                                 fontWeight: FontWeight.bold,
//                                 color: Colors.black,
//                               ),
//                             ),
//                             SizedBox(height: 2),
//                             Text(
//                               "Lessons",
//                               style: TextStyle(
//                                 fontSize: 14,
//                                 color: Color.fromARGB(255, 94, 94, 94),
//                               ),
//                             ),
//                           ],
//                         ),
//                       ),
//                       Expanded(
//                         child: Column(
//                           children: const [
//                             Text(
//                               "8",
//                               style: TextStyle(
//                                 fontSize: 18,
//                                 fontWeight: FontWeight.bold,
//                                 color: Colors.black,
//                               ),
//                             ),
//                             SizedBox(height: 2),
//                             Text(
//                               "Tasks",
//                               style: TextStyle(
//                                 fontSize: 14,
//                                 color: Color.fromARGB(255, 94, 94, 94),
//                               ),
//                             ),
//                           ],
//                         ),
//                       ),
//                       Expanded(
//                         child: Column(
//                           children: const [
//                             Text(
//                               "73%",
//                               style: TextStyle(
//                                 fontSize: 18,
//                                 fontWeight: FontWeight.bold,
//                                 color: Colors.black,
//                               ),
//                             ),
//                             SizedBox(height: 2),
//                             Text(
//                               "Progress",
//                               style: TextStyle(
//                                 fontSize: 14,
//                                 color: Color.fromARGB(255, 94, 94, 94),
//                               ),
//                             ),
//                           ],
//                         ),
//                       ),
//                     ],
//                   ),
//                 ),
//               ),
//               const SizedBox(height: 70),
//               const Align(
//                 alignment: Alignment.centerLeft,
//                 child: Text(
//                   "Information",
//                   style: TextStyle(
//                     fontSize: 20,
//                     fontWeight: FontWeight.bold,
//                     color: Colors.black,
//                   ),
//                 ),
//               ),
//               const SizedBox(height: 13),
//               Card(
//                 elevation: 2,
//                 shape: RoundedRectangleBorder(
//                   borderRadius: BorderRadius.circular(12),
//                   side: BorderSide(color: Colors.black26),
//                 ),
//                 child: Padding(
//                   padding: const EdgeInsets.all(16.0),
//                   child: Column(
//                     children: [
//                       Row(
//                         children: [
//                           const Icon(
//                             Icons.email,
//                             size: 35,
//                             color: Colors.deepPurple,
//                           ),
//                           const SizedBox(width: 16),
//                           Column(
//                             crossAxisAlignment: CrossAxisAlignment.start,
//                             children: const [
//                               Text(
//                                 "Email",
//                                 style: TextStyle(
//                                   fontSize: 14,
//                                   color: Color.fromARGB(255, 94, 94, 94),
//                                 ),
//                               ),
//                               SizedBox(height: 4),
//                               Text(
//                                 "Lina@example.com",
//                                 style: TextStyle(
//                                   fontSize: 18,
//                                   color: Colors.black,
//                                 ),
//                               ),
//                             ],
//                           ),
//                         ],
//                       ),
//                       Divider(height: 24, thickness: 1),
//                       Row(
//                         children: [
//                           const Icon(
//                             Icons.location_on,
//                             size: 35,
//                             color: Colors.deepPurple,
//                           ),
//                           const SizedBox(width: 16),
//                           Column(
//                             crossAxisAlignment: CrossAxisAlignment.start,
//                             children: const [
//                               Text(
//                                 "City",
//                                 style: TextStyle(
//                                   fontSize: 14,
//                                   color: Color.fromARGB(255, 94, 94, 94),
//                                 ),
//                               ),
//                               SizedBox(height: 4),
//                               Text(
//                                 "Damascus",
//                                 style: TextStyle(
//                                   fontSize: 18,
//                                   color: Colors.black,
//                                 ),
//                               ),
//                             ],
//                           ),
//                         ],
//                       ),
//                     ],
//                   ),
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
