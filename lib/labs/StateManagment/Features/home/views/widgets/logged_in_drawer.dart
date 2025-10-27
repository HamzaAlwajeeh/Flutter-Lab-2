import 'package:flutter/material.dart';
import 'package:naghamat/core/constants/constants.dart';
import 'package:naghamat/labs/StateManagment/Features/auth/providers/auth_provider.dart';
import 'package:naghamat/labs/StateManagment/Features/home/views/widgets/drawe_header.dart';
import 'package:provider/provider.dart';

class LoggedInDrawer extends StatelessWidget {
  const LoggedInDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomDrawerHeader(),
        const SizedBox(height: 20),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: ElevatedButton(
            onPressed: () {
              Provider.of<AuthProvider>(context, listen: false).logout();
            },
            style: ElevatedButton.styleFrom(
              minimumSize: Size(double.infinity, 56),
              backgroundColor: Colors.red.shade200,
            ),
            child: Text(
              'Log In',
              style: TextStyle(
                color: AppColors.scaffoldBackground.withOpacity(0.7),
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
