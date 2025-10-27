import 'package:flutter/material.dart';
import 'package:naghamat/core/constants/constants.dart';

class CustomDrawerHeader extends StatelessWidget {
  const CustomDrawerHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 200,
      decoration: BoxDecoration(
        color: AppColors.primary,
        borderRadius: BorderRadius.only(bottomRight: Radius.circular(40)),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CircleAvatar(
            radius: 42,
            backgroundColor: AppColors.scaffoldBackground,
            child: CircleAvatar(
              radius: 40,
              backgroundImage: AssetImage('assets/images/Profile.jpg'),
            ),
          ),
          Text(
            'Hamza Alwajeeh',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          Text(
            'ha20mza60@gmail.com',
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
              color: Colors.black.withOpacity(0.6),
            ),
          ),
        ],
      ),
    );
  }
}
