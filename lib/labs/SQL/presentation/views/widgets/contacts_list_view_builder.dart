import 'package:flutter/material.dart';
import 'package:naghamat/labs/SQL/presentation/views/widgets/list_view_contact_item.dart';

class ContactsListViewBuilder extends StatelessWidget {
  const ContactsListViewBuilder({super.key});
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        physics: const BouncingScrollPhysics(),
        itemCount: 10,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(vertical: 8),
            child: ListViewContactItem(),
          );
        },
      ),
    );
  }
}
