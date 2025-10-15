import 'package:flutter/widgets.dart';
import 'package:naghamat/core/constants/constants.dart';

class CustomAPpBar extends StatelessWidget {
  const CustomAPpBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      textAlign: TextAlign.center,
      'Contacts',
      style: TextStyle(
        color: AppColors.primary,
        fontWeight: FontWeight.w600,
        fontSize: 26,
      ),
    );
  }
}
