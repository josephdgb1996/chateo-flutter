import 'package:app/src/module/auth/widgets/circular_social_button.dart';
import 'package:app/src/module/auth/widgets/or_divider.dart';
import 'package:app/src/module/shared/custom_rounded_button.dart';
import 'package:flutter/material.dart';

class SigninScreen extends StatelessWidget {
  const SigninScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Scaffold(
        body: Padding(
          padding: EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Wrap(
                alignment: WrapAlignment.center,
                children: [
                  Align(alignment: Alignment.centerLeft, child: Icon(Icons.keyboard_backspace)),
                  Text("Log in to Chatbox", style: TextStyle(fontSize: 25)),
                  Text("Welcome back! Sign in using your social\n account or email to continue us"),
                  Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                    CircularSocialButton(imagePath: "assets/logos/facebook_logo.png"),
                    CircularSocialButton(imagePath: "assets/logos/google_logo.png"),
                    CircularSocialButton(imagePath: "assets/logos/apple_logo.png"),
                  ]),
                  OrDivider(),
                  TextField(
                    decoration: InputDecoration(label: Text("Your email")),
                  ),
                  TextField(
                    decoration: InputDecoration(label: Text("Password")),
                  ),
                ],
              ),
              CustomRoundedButton(text: "Log in"),
            ],
          ),
        ),
      ),
    );
  }
}
