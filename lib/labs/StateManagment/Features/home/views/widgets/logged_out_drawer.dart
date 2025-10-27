import 'package:flutter/material.dart';
import 'package:naghamat/core/constants/constants.dart';
import 'package:naghamat/labs/StateManagment/Features/auth/providers/auth_provider.dart';
import 'package:naghamat/labs/StateManagment/Features/auth/views/login_view.dart';
import 'package:provider/provider.dart';

class LoggedOutDrawer extends StatelessWidget {
  const LoggedOutDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 70, horizontal: 16),
      child: Column(
        children: [
          ElevatedButton(
            onPressed: () {
              Navigator.pushReplacementNamed(context, LoginView.routeName);
            },
            style: ElevatedButton.styleFrom(
              minimumSize: Size(double.infinity, 56),
              backgroundColor: AppColors.primary,
            ),
            child: Text(
              'Log In',
              style: TextStyle(
                color: AppColors.scaffoldBackground,
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
