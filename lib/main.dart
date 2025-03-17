import 'package:flutter/material.dart';
import 'package:indrive_clone/src/presentation/pages/auth/login/loginPage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'InDrive Clone',
      home: const LoginPage(),
    );
  }
}
