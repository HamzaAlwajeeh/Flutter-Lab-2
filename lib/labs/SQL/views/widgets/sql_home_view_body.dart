import 'package:flutter/material.dart';
import 'package:naghamat/labs/SQL/views/widgets/contacts_list_view_builder.dart';
import 'package:naghamat/labs/SQL/views/widgets/custom_app_bart.dart';

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
          ContactsListViewBuilder(),
        ],
      ),
    );
  }
}
