import 'package:flutter/material.dart';
import 'package:naghamat/labs/naghamat/views/widgets/custom_music_image.dart';

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
          MusicItemButton(),
        ],
      ),
    );
  }
}

class MusicItemButton extends StatelessWidget {
  const MusicItemButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 70,
      decoration: BoxDecoration(
        border: Border.all(color: Colors.purple.shade50, width: 1),
        borderRadius: BorderRadius.circular(16),
        gradient: LinearGradient(
          colors: [
            Colors.purple.withOpacity(0.5),
            Colors.blue.withOpacity(0.5),
          ],
          begin: Alignment.centerLeft,
          end: Alignment.topRight,
        ),
      ),
      child: Row(
        children: [
          SizedBox(width: 6),
          CustomMusicImage(),
          const SizedBox(width: 15),
          Text(
            'Samsung Galaxy',
            style: TextStyle(
              color: Colors.purple.shade50,
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          const Spacer(),
          Padding(
            padding: const EdgeInsets.only(right: 12),
            child: Container(
              width: 45,
              height: 45,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
                gradient: LinearGradient(
                  colors: [
                    Colors.purple.withOpacity(0.5),
                    Colors.blue.withOpacity(0.5),
                  ],
                  begin: Alignment.centerLeft,
                  end: Alignment.topRight,
                ),
              ),
              child: IconButton(
                onPressed: () {},
                icon: Icon(Icons.play_arrow, color: Colors.white, size: 30),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
