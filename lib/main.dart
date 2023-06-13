import 'package:flutter/material.dart';
import 'package:uts_miqdad/profile_page.dart';
import 'package:uts_miqdad/login_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        '/': (context) => const LoginPage(),
        '/profile_page': (context) => const ProfilePage()
      },
    );
  }
}
