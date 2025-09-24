import 'package:flutter/material.dart';
import 'package:naghamat/labs/naghamat/views/widgets/custom_icon_button.dart';
import 'package:naghamat/labs/naghamat/views/widgets/custom_music_image.dart';
import 'package:naghamat/labs/naghamat/views/widgets/music_title.dart';

class MusicItemButton extends StatelessWidget {
  const MusicItemButton({
    super.key,
    required this.musicNumber,
    required this.musicName,
  });
  final String musicNumber;
  final String musicName;
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
          const SizedBox(width: 18),
          MusicTitle(text: musicName),
          const Spacer(),
          CustomIconButton(musicNumber: musicNumber),
        ],
      ),
    );
  }
}
