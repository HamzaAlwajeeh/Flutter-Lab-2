import 'package:flutter/material.dart';
import 'package:naghamat/labs/SQL/data/models/contact_model.dart';
import 'package:naghamat/labs/SQL/presentation/views/widgets/list_view_contact_item.dart';

class ContactsListViewBuilder extends StatelessWidget {
  const ContactsListViewBuilder({super.key, required this.contacts});
  final List<ContactModel> contacts;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        physics: const BouncingScrollPhysics(),
        itemCount: contacts.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(vertical: 8),
            child: ListViewContactItem(contact: contacts[index]),
          );
        },
      ),
    );
  }
}
