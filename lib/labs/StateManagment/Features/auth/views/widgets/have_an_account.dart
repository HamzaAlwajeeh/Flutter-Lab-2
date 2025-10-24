import 'package:flutter/material.dart';
import 'package:naghamat/core/constants/constants.dart';

class HaveAnAccount extends StatelessWidget {
  const HaveAnAccount({
    super.key,
    required this.subText,
    required this.primaryText,
    this.onTap,
  });
  final String subText;
  final String primaryText;
  final void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text('$subText ', style: TextStyle(fontSize: 16)),
        GestureDetector(
          onTap: onTap,
          child: Text(
            primaryText,
            style: TextStyle(color: AppColors.primary, fontSize: 16),
          ),
        ),
      ],
    );
  }
}
