import 'package:flutter/material.dart';
import 'package:app/src/module/auth/widgets/auth_background.dart';
import 'package:app/src/module/auth/widgets/circular_social_button.dart';
import 'package:app/src/module/auth/widgets/or_divider.dart';

class AuthScreen extends StatelessWidget {
  const AuthScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xff000E08),
        body: AuthBackground(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 18.0),
            child: Column(children: [
              _ChateoLogo(),
              Expanded(child: _MainText()),
              Expanded(child: _SignUpOptions()),
            ]),
          ),
        ),
      ),
    );
  }
}

class _ChateoLogo extends StatelessWidget {
  const _ChateoLogo();

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.10,
      child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
        Image.asset("assets/logos/chateo_white_logo.png", height: 20),
        const SizedBox(width: 10.0),
        const Text("Chateo", style: TextStyle(color: Colors.white))
      ]),
    );
  }
}

class _MainText extends StatelessWidget {
  const _MainText();

  @override
  Widget build(BuildContext context) {
    TextStyle richTextStyle = const TextStyle(
      color: Colors.white,
      fontWeight: FontWeight.w400,
      fontSize: 63,
      letterSpacing: 3.5
    );

    return Column(crossAxisAlignment: CrossAxisAlignment.start, mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
      RichText(
        text: TextSpan(
          text: "Connect\nfriends\n",
          style: richTextStyle,
          children: [
            TextSpan(text: "easily &\nquickly", style: richTextStyle.copyWith(fontWeight: FontWeight.bold)),
          ],
        ),
      ),
      const Text(
        "Our chat app is the perfect way to stay connected with friends and family",
        style: TextStyle(color: Colors.white70),
      ),
    ]);
  }
}

class _SignUpOptions extends StatelessWidget {
  const _SignUpOptions();

  @override
  Widget build(BuildContext context) {
    return const Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Expanded(child: _SocialButtons()),
        OrDivider(),
        Expanded(child: _SignUpWithEmail()),
      ],
    );
  }
}

class _SocialButtons extends StatelessWidget {
  const _SocialButtons();

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 60.0),
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
        CircularSocialButton(imagePath: "assets/logos/facebook_logo.png"),
        CircularSocialButton(imagePath: "assets/logos/google_logo.png"),
        CircularSocialButton(imagePath: "assets/logos/apple_logo.png"),
      ]),
    );
  }
}

class _SignUpWithEmail extends StatelessWidget {
  const _SignUpWithEmail();

  @override
  Widget build(BuildContext context) {
    return Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
      TextButton(
        onPressed: null,
        style: TextButton.styleFrom(
          minimumSize: Size(MediaQuery.of(context).size.width, 60),
          backgroundColor: Colors.white,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(23)),
        ),
        child: const Text("Sign up withn mail"),
      ),
      RichText(
        text: const TextSpan(text: "Existing account", children: [TextSpan(text: " Log in", style: TextStyle(fontWeight: FontWeight.bold))]),
      )
    ]);
  }
}
