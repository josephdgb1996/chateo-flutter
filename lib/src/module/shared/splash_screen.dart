import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        Image.asset("assets/logos/chateo_logo.png", color: Theme.of(context).primaryColor),
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.02,
        ),
        const Text(
          "Chatbox",
          style: TextStyle(fontSize: 30.0, fontWeight: FontWeight.w600, fontFamily: "Std", fontStyle: FontStyle.italic),
        ),
      ]),
    );
  }
}
