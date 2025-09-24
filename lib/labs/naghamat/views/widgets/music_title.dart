import 'package:flutter/material.dart';

class MusicTitle extends StatelessWidget {
  const MusicTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      'Samsung Galaxy',
      style: TextStyle(
        color: Colors.purple.shade50,
        fontSize: 20,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}
