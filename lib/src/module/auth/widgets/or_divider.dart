import 'package:flutter/material.dart';

class OrDivider extends StatelessWidget {
  const OrDivider({super.key});

  @override
  Widget build(BuildContext context) {
    Widget divider = const Expanded(child: Divider());
    Widget or = Container(
      margin: const EdgeInsets.only(left: 15, right: 15),
      child: const Text("OR", style: TextStyle(color: Colors.white)),
    );

    return Row(children: [divider, or, divider]);
  }
}