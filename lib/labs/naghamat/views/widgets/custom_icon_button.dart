import 'package:flutter/material.dart';

class customIconButton extends StatelessWidget {
  const customIconButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
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
    );
  }
}
