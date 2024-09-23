import 'package:flutter/material.dart';

class CircularSocialButton extends StatelessWidget {
  final String imagePath;
  const CircularSocialButton({super.key, required this.imagePath});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      width: 60,
      decoration: BoxDecoration(shape: BoxShape.circle, border: Border.all(color: Colors.white)),
      child: Center(child: Image.asset(imagePath, height: 60, width: 60)),
    );
  }
}
