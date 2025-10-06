import 'package:flutter/material.dart';
import 'package:naghamat/core/constants/constants.dart';
import 'package:naghamat/labs/FutureBuilder/models/rondom_user.dart';
import 'package:naghamat/labs/FutureBuilder/view/widgets/contact_item.dart';

class ProfileCard extends StatelessWidget {
  const ProfileCard({super.key, required this.user});
  final RondomUser user;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 16, vertical: 20),
        width: 308,
        height: 380,
        decoration: BoxDecoration(
          color: AppColors.textFeilsPrimary,
          borderRadius: BorderRadius.circular(30),
          boxShadow: [
            BoxShadow(
              color: AppColors.primary.withOpacity(0.20),
              spreadRadius: 10,
              blurRadius: 30,
              offset: Offset(0, 0), // changes position of shadow
            ),
          ],
        ),
        child: Column(
          children: [
            SizedBox(height: 15),
            Text(
              "Profile",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w700,
                color: AppColors.primary,
              ),
            ),
            SizedBox(height: 15),
            CircleAvatar(
              radius: 53,
              backgroundColor: AppColors.primary,
              child: CircleAvatar(
                radius: 50,
                backgroundImage: NetworkImage(user.picture),
              ),
            ),
            SizedBox(height: 8),
            Column(
              children: [
                Text(
                  user.name,
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w700,
                    color: AppColors.primary,
                  ),
                ),
                Text(
                  user.gender,
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    color: AppColors.textPrimaryColor.withOpacity(0.8),
                  ),
                ),
              ],
            ),
            Spacer(),
            ContactItem(text: user.email),
            const SizedBox(height: 16),
            ContactItem(text: user.phone),
          ],
        ),
      ),
    );
  }
}
