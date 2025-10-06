import 'package:flutter/material.dart';
import 'package:naghamat/core/constants/constants.dart';

class ContactItem extends StatelessWidget {
  const ContactItem({super.key, required this.text});
  final String text;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(0),
      width: MediaQuery.of(context).size.width * 0.65,
      height: 40,
      decoration: BoxDecoration(
        color: AppColors.textFeilsSecondary,
        borderRadius: BorderRadius.circular(30),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Text(
          textAlign: TextAlign.center,
          text,
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w500,
            color: AppColors.primary,
          ),
        ),
      ),
    );
  }
}
