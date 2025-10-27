import 'package:flutter/widgets.dart';
import 'package:naghamat/core/constants/constants.dart';

class HomeItem extends StatelessWidget {
  const HomeItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width / 2 - 32,
      height: 100,
      decoration: BoxDecoration(
        color: AppColors.textFeilsPrimary,
        borderRadius: BorderRadius.circular(16),
      )
    );
  }
}