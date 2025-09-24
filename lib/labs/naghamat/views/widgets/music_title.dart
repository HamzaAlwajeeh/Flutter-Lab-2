import 'package:flutter/material.dart';

class MusicTitle extends StatelessWidget {
  const MusicTitle({super.key, required this.text});
  final String text;
  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        color: Colors.purple.shade50,
        fontSize: 20,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}
