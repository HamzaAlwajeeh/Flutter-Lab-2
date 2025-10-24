import 'package:flutter/material.dart';
import 'package:naghamat/labs/SQL/data/models/contact_model.dart';
import 'package:naghamat/labs/SQL/data/repos/home_repo_impl.dart';
import 'package:naghamat/labs/SQL/presentation/views/sql_home_view.dart';
import 'package:naghamat/labs/SQL/presentation/views/widgets/custom_text_form_feild.dart';
import 'package:naghamat/labs/SQL/presentation/views/widgets/custom_toast_bar.dart';
import 'package:naghamat/labs/SQL/presentation/views/widgets/primary_button.dart';

class EditContactForm extends StatefulWidget {
  const EditContactForm({super.key, required this.contact});
  final ContactModel contact;
  @override
  State<EditContactForm> createState() => _AddContactFormState();
}

class _AddContactFormState extends State<EditContactForm> {
  GlobalKey<FormState> formKey = GlobalKey<FormState>();
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;

  String? name;
  int? age;
  String? phone;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 20),
        Form(
          key: formKey,
          autovalidateMode: autovalidateMode,
          child: Column(
            spacing: 16,
            children: [
              const SizedBox(height: 20),
              CustomTextFormFeild(
                initValue: widget.contact.name,
                hintText: 'Name',
                keyboardType: TextInputType.text,
                onChanged: (value) {
                  name = value;
                },
              ),
              CustomTextFormFeild(
                initValue: widget.contact.phone,
                hintText: 'Phone',
                keyboardType: TextInputType.text,
                onChanged: (value) {
                  phone = value;
                },
              ),
              PrimaryButton(
                text: 'Edit',
                onPressed: () async {
                  if (formKey.currentState!.validate()) {
                    autovalidateMode = AutovalidateMode.disabled;
                    setState(() {});
                    HomeRepoImpl().updateContact(
                      query: '''
                        UPDATE contacts
                        SET name = '${name ?? widget.contact.name}', phone = '${phone ?? widget.contact.phone}'
                        WHERE id = ${widget.contact.id};
                      ''',
                    );
                    Navigator.pushReplacementNamed(
                      context,
                      SqlHomeView.routeName,
                    );
                    customToastBar(
                      message: 'Contact Edited successfully',
                      icon: Icons.edit_note_outlined,
                      context: context,
                    );
                  } else {
                    autovalidateMode = AutovalidateMode.always;
                    setState(() {});
                  }
                },
              ),
            ],
          ),
        ),
      ],
    );
  }
}
