import 'package:final_exam_650710836/answer2.dart';
import 'package:flutter/material.dart';
// import 'package:final_exam_650710836/profile.dart';
import 'package:final_exam_650710836/answer1.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Profile App',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: ProfileScreen(),
    );
  }
}

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('โปรไฟล์ผู้ใช้'),
        centerTitle: true,
        backgroundColor: Color.fromARGB(220, 148, 200, 255),
      ),
      backgroundColor: const Color.fromARGB(255, 255, 255, 255),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
          ProfileCard(
            name: 'ชื่อผู้ใช้:Patcharaporn Paythaisong',
            email: 'อีเมลล์: paythaisong_p@silpakorn.edu',
            imageUrl:
                'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSBCSncMky3y5D6cePikzRjNvJs2QozdiHruxOlu0fl1GUAFkOYbfy1iGSnyun6aQBuSeQ&usqp=CAU',
          ),
        ],
        ),
      ),
    );
  }
}

// // import 'package:final_exam_650710836/pro.dart';
// import 'package:flutter/material.dart';
// // import 'package:final_exam_650710836/profile.dart';

// void main() {
//   runApp(const MyApp());
// }

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       title: 'Profile App',
//       theme: ThemeData(primarySwatch: Colors.blue),
//       home: const ProfileScreen(),
//      ); 
//   }
// }

// class ProfileScreen extends StatelessWidget {
//   const ProfileScreen({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Profile App'),
//         centerTitle: true,
//         backgroundColor: Color.fromARGB(220, 255, 212, 212),
//       ),
//       backgroundColor: const Color.fromARGB(255, 255, 255, 255),
//       body: Column(
//         mainAxisAlignment: MainAxisAlignment.center,
//         children: [
//           ProfileCardN(
//             name: 'Patcharaporn Paythaisong',
//             position: 'Student',
//             email: 'paythaisong_p@silpakorn.edu',
//             phone: '0805674895',
//             imageAsset: 'assets/images.jpg',
//           ),
//         ],
//       ),
//     );
//   }
// }

