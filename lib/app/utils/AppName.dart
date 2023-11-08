import 'package:flutter/material.dart';

class AppName extends StatelessWidget {
  final String appNameText;

  const AppName({
    required this.appNameText,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      appNameText,
      style: const TextStyle(
          fontSize: 34, color: Colors.grey, fontWeight: FontWeight.bold),
    );
  }
}