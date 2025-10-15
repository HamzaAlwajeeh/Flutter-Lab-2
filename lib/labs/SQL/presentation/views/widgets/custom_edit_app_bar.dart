import 'package:flutter/material.dart';
import 'package:naghamat/core/constants/constants.dart';

class CustomEditAppBar extends StatelessWidget {
  const CustomEditAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(
            Icons.arrow_back_ios,
            color: AppColors.textPrimaryColor,
          ),
        ),
        const Text(
          'Edit Contact',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: AppColors.textPrimaryColor,
          ),
        ),
        IconButton(
          onPressed: () {},
          icon: Container(
            height: 40,
            width: 40,
            decoration: BoxDecoration(
              color: AppColors.primary.withOpacity(0.1),
              borderRadius: BorderRadius.circular(12),
            ),
            child: const Icon(
              Icons.check,
              color: AppColors.textPrimaryColor,
              size: 30,
            ),
          ),
        ),
      ],
    );
  }
}
