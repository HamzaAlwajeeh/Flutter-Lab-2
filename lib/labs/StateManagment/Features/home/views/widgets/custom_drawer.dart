import 'package:flutter/material.dart';
import 'package:naghamat/core/constants/constants.dart';
import 'package:naghamat/labs/StateManagment/Features/auth/providers/auth_provider.dart';
import 'package:naghamat/labs/StateManagment/Features/home/views/widgets/logged_in_drawer.dart';
import 'package:naghamat/labs/StateManagment/Features/home/views/widgets/logged_out_drawer.dart';
import 'package:provider/provider.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: AppColors.scaffoldBackground,
      child: Consumer<AuthProvider>(
        builder: (context, auth, child) {
          if (!auth.isLoggedIn) {
            return LoggedOutDrawer();
          } else {
            return LoggedInDrawer();
          }
        },
      ),
    );
  }
}
