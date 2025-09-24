import 'package:flutter/material.dart';

class NaghamatHomeView extends StatelessWidget {
  const NaghamatHomeView({super.key});
  static const String routeName = '/naghamat-home';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        centerTitle: true,
        title: const Text(
          'Naghamat',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            height: 1,
          ),
        ),
        backgroundColor: Colors.purple,
      ),
    );
  }
}
