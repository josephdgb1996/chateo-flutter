import 'package:flutter/material.dart';

void main() => runApp(const Chateo());

class Chateo extends StatelessWidget {
  const Chateo({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Chateo',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Material App Bar'),
        ),
        body: const Center(
          child: Text('Hello World'),
        ),
      ),
    );
  }
}