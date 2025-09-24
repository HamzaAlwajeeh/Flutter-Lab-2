import 'package:flutter/material.dart';

class CustomMusicImage extends StatelessWidget {
  const CustomMusicImage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 60,
      height: 60,
      decoration: BoxDecoration(
        // color: Colors.purple,
        gradient: LinearGradient(
          colors: [
            Colors.purple.withOpacity(0.5),
            Colors.blue.withOpacity(0.2),
          ],
          begin: Alignment.centerLeft,
          end: Alignment.topRight,
        ),
        borderRadius: BorderRadius.circular(16),
      ),
      child: Icon(Icons.music_note, color: Colors.white, size: 40),
    );
  }
}
