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
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              mainAxisSize: MainAxisSize.max,
              children: [
                MusicItemButton(musicName: 'Sony Xperia', musicNumber: '1'),
                MusicItemButton(musicName: 'Vivo X90', musicNumber: '2'),
                MusicItemButton(musicName: 'Hwawei Mate 40', musicNumber: '3'),
                MusicItemButton(musicName: 'Oppo Reno 8', musicNumber: '4'),
                MusicItemButton(musicName: 'Nokia', musicNumber: '5'),
                MusicItemButton(musicName: 'Samsung Galaxy ', musicNumber: '6'),
                MusicItemButton(
                  musicName: 'Iphone 17 Pro Max',
                  musicNumber: '7',
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
