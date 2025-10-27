import 'package:flutter/material.dart';
import 'package:naghamat/core/constants/constants.dart';

class DrawerItem extends StatelessWidget {
  const DrawerItem({
    super.key,
    required this.title,
    required this.icon,
    this.onTap,
  });
  final String title;
  final IconData icon;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        GestureDetector(
          onTap: onTap,
          child: ListTile(
            title: Text(
              title,
              style: TextStyle(
                color:
                    title == 'Log out'
                        ? Colors.red.shade200
                        : AppColors.textPrimaryColor,
              ),
            ),
            leading: Container(
              width: 40,
              height: 40,
              decoration: BoxDecoration(
                color:
                    title == 'Log out'
                        ? Colors.red.shade200.withOpacity(0.1)
                        : AppColors.primary.withOpacity(0.1),
                borderRadius: BorderRadius.circular(50),
              ),
              child: Icon(
                icon,
                color:
                    title == 'Log out'
                        ? Colors.red.shade200
                        : AppColors.primary,
              ),
            ),
            trailing:
                title == 'Notifications'
                    ? Container(
                      width: 20,
                      height: 20,
                      decoration: BoxDecoration(
                        color: AppColors.primary,
                        borderRadius: BorderRadius.circular(50),
                      ),
                      child: Center(
                        child: Text(
                          '3',
                          style: TextStyle(
                            color: AppColors.textFeilsPrimary,
                            fontSize: 12,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    )
                    : null,
          ),
        ),
        Divider(color: AppColors.textPrimaryColor, thickness: 0.2),
      ],
    );
  }
}
