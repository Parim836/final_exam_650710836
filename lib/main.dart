import 'package:flutter/material.dart';
import 'package:final_exam_650710836/profile.dart';

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
      home: const ProfileScreen(),
    );
  }
}

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Profile App'),
        centerTitle: true,
        backgroundColor: Color.fromARGB(220, 255, 210, 210),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ProfileCard(
            name: 'Patcharaporn Paythaisong',
            position: 'Student',
            email: 'paythaisong_p@silpakorn.edu',
            phone: '0805674895',
            imageUrl:
                'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSBCSncMky3y5D6cePikzRjNvJs2QozdiHruxOlu0fl1GUAFkOYbfy1iGSnyun6aQBuSeQ&usqp=CAU',
          ),
        ],
      ),
    );
  }
}
