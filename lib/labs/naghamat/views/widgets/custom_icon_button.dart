import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:naghamat/core/helper/service_loactor.dart';

class CustomIconButton extends StatefulWidget {
  const CustomIconButton({super.key, required this.musicNumber});
  final String musicNumber;
  @override
  State<CustomIconButton> createState() => _CustomIconButtonState();
}

class _CustomIconButtonState extends State<CustomIconButton> {
  String state = 'stop';
  AudioPlayer player = getIt<AudioPlayer>();

  void playSound() async {
    await player.play(AssetSource('music/music-${widget.musicNumber}.mp3'));
    state = 'play';
    setState(() {});
  }

  void pauseSound() async {
    await player.pause();
    state = 'stop';
    setState(() {});
  }

  @override
  void initState() {
    player.onPlayerComplete.listen((event) {
      if (!mounted) return;
      setState(() {
        state = 'stop';
      });
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 12),
      child: Container(
        width: 55,
        height: 55,
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
          onPressed: () async {
            if (state == 'stop') {
              playSound();
              setState(() {
                state = 'play';
              });
            } else {
              pauseSound();
              setState(() {
                state = 'stop';
              });
            }
          },
          icon: Icon(
            state == 'stop' ? Icons.play_arrow : Icons.pause,
            color: Colors.white,
            size: 35,
          ),
        ),
      ),
    );
  }
}
