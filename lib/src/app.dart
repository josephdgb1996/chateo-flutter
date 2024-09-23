import 'package:app/src/module/auth/screens/auth_screen.dart';
import 'package:flutter/material.dart';
//ui

void main() => runApp(const Chateo());

class Chateo extends StatelessWidget {
  const Chateo({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Chateo',
      theme: ThemeData(
        useMaterial3: true,
        scaffoldBackgroundColor: Colors.white,
        colorScheme: ColorScheme.fromSeed(seedColor: const Color(0xff24786D) ),
      ),
      home: const AuthScreen(),
    );
  }
}
