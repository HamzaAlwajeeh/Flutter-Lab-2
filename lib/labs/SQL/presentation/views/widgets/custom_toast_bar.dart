import 'package:delightful_toast/delight_toast.dart';
import 'package:delightful_toast/toast/components/toast_card.dart';
import 'package:delightful_toast/toast/utils/enums.dart';
import 'package:flutter/material.dart';
import 'package:naghamat/core/constants/constants.dart';

void customToastBar({
  required BuildContext context,
  required String message,
  required IconData icon,
}) {
  return DelightToastBar(
    builder: (context) {
      return ToastCard(
        color: AppColors.textFeilsPrimary,
        leading: Icon(icon, size: 30, color: AppColors.primary),
        title: Text(
          message,
          style: TextStyle(
            color: AppColors.primary,
            fontWeight: FontWeight.bold,
          ),
        ),
      );
    },
    position: DelightSnackbarPosition.bottom,
    autoDismiss: true,
    animationDuration: Duration(milliseconds: 900),
  ).show(context);
}
