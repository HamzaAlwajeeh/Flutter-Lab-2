import 'package:flutter/material.dart';
import 'package:naghamat/labs/naghamat/views/widgets/music_item_button.dart';

class NaghamatHomeViewBody extends StatelessWidget {
  const NaghamatHomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(height: 20),
          Text(
            'Naghamat',
            style: TextStyle(
              fontFamily: 'Qatar',
              fontSize: 30,
              fontWeight: FontWeight.bold,
              color: Colors.purple,
            ),
          ),
          const SizedBox(height: 10),
          MusicItemButton(musicName: 'Hamza Galaxy', musicNumber: '1'),
        ],
      ),
    );
  }
}
