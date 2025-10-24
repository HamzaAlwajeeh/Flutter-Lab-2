import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:naghamat/core/constants/constants.dart';
import 'package:naghamat/labs/SQL/data/models/contact_model.dart';
import 'package:naghamat/labs/SQL/data/repos/home_repo_impl.dart';
import 'package:naghamat/labs/SQL/presentation/views/edit_contact_view.dart';
import 'package:naghamat/labs/SQL/presentation/views/sql_home_view.dart';
import 'package:naghamat/labs/SQL/presentation/views/widgets/custom_toast_bar.dart';

class ListViewContactItem extends StatelessWidget {
  const ListViewContactItem({super.key, required this.contact});
  final ContactModel contact;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(
          context,
          EditContactView.routeName,
          arguments: contact,
        );
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
                    contact.name,
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: AppColors.textPrimaryColor,
                    ),
                  ),
                  Text(
                    contact.phone,
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
                onPressed: () async {
                  await HomeRepoImpl().deleteContact(
                    query: '''
                      DELETE FROM contacts WHERE id = ${contact.id}
                    ''',
                  );
                  Navigator.pushReplacementNamed(
                    context,
                    SqlHomeView.routeName,
                  );
                  customToastBar(
                    message: 'Contact deleted successfully',
                    icon: Icons.delete,
                    context: context,
                  );
                },
                icon: Icon(Icons.delete, color: AppColors.primary, size: 30),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
