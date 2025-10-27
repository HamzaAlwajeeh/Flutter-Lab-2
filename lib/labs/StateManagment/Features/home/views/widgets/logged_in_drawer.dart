import 'package:flutter/material.dart';
import 'package:naghamat/labs/StateManagment/Features/auth/providers/auth_provider.dart';
import 'package:naghamat/labs/StateManagment/Features/home/views/widgets/drawe_header.dart';
import 'package:naghamat/labs/StateManagment/Features/home/views/widgets/drawer_item.dart';
import 'package:provider/provider.dart';

class LoggedInDrawer extends StatelessWidget {
  const LoggedInDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 20),
      child: Column(
        children: [
          CustomDrawerHeader(),
          const SizedBox(height: 20),
          DrawerItem(title: 'Settings', icon: Icons.settings),
          DrawerItem(title: 'Notifications', icon: Icons.notifications),
          DrawerItem(title: 'About', icon: Icons.info),
          Spacer(),
          DrawerItem(
            title: 'Log out',
            icon: Icons.exit_to_app,
            onTap: () {
              Provider.of<AuthProvider>(context, listen: false).logout();
            },
          ),
        ],
      ),
    );
  }
}
