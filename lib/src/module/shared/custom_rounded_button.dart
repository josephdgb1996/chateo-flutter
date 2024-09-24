import 'package:flutter/material.dart';

class CustomRoundedButton extends StatelessWidget {
  final String text;
  const CustomRoundedButton({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () => print("Sign up withn mail"),
      style: TextButton.styleFrom(
        minimumSize: Size(MediaQuery.of(context).size.width, MediaQuery.of(context).size.height * 0.058),
        backgroundColor: Colors.white,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(18)),
      ),
      child: Text(text, style: const TextStyle(color: Colors.black, fontSize: 19.0)),
    );
  }
}
