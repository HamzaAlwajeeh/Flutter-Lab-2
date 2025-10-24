import 'package:flutter/material.dart';
import 'package:naghamat/core/constants/constants.dart';
import 'package:naghamat/labs/SQL/data/models/contact_model.dart';
import 'package:naghamat/labs/SQL/data/repos/home_repo_impl.dart';
import 'package:naghamat/labs/SQL/presentation/views/widgets/contacts_list_view_builder.dart';
import 'package:naghamat/labs/SQL/presentation/views/widgets/custom_app_bart.dart';

class SqlHomeViewBody extends StatelessWidget {
  const SqlHomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 16, right: 16, top: 60),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          CustomAPpBar(),
          const SizedBox(height: 20),
          FutureBuilder(
            future: HomeRepoImpl().getAllContacts(),
            builder: (context, snapShot) {
              if (snapShot.connectionState == ConnectionState.waiting) {
                return CircularProgressIndicator();
              } else if (snapShot.hasError) {
                return Center(child: Text(snapShot.error.toString()));
              } else if (!snapShot.hasData || (snapShot.data as List).isEmpty) {
                return Center(
                  child: Text(
                    'There is No Contact Yet',
                    style: TextStyle(color: AppColors.textPrimaryColor),
                  ),
                );
              } else {
                return ContactsListViewBuilder(
                  contacts: snapShot.data as List<ContactModel>,
                );
              }
            },
          ),
        ],
      ),
    );
  }
}
