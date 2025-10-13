import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:naghamat/core/constants/constants.dart';
import 'package:naghamat/labs/SQL/views/edit_contact_view.dart';

class ListViewContactItem extends StatelessWidget {
  const ListViewContactItem({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, EditContactView.routeName);
      },
      child: Container(
        height: 91,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: AppColors.textFeilsSecondary,
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
          child: Row(
            children: [
              SvgPicture.asset('assets/images/user.svg', width: 55),
              const SizedBox(width: 20),
              Column(
                spacing: 8,
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Hamza Alwajeeh',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: AppColors.textPrimaryColor,
                    ),
                  ),
                  Text(
                    '771832796',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color: AppColors.textPrimaryColor.withOpacity(0.5),
                    ),
                  ),
                ],
              ),
              Spacer(),
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.delete, color: AppColors.primary, size: 30),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
