import 'package:flutter/material.dart';
import 'package:naghamat/core/constants/constants.dart';
import 'package:naghamat/labs/SQL/data/repos/home_repo_impl.dart';
import 'package:naghamat/labs/SQL/presentation/views/sql_home_view.dart';
import 'package:naghamat/labs/SQL/presentation/views/widgets/custom_text_form_feild.dart';
import 'package:naghamat/labs/SQL/presentation/views/widgets/custom_toast_bar.dart';
import 'package:naghamat/labs/SQL/presentation/views/widgets/primary_button.dart';

class AddContactForm extends StatefulWidget {
  const AddContactForm({super.key});

  @override
  State<AddContactForm> createState() => _AddContactFormState();
}

class _AddContactFormState extends State<AddContactForm> {
  GlobalKey<FormState> formKey = GlobalKey<FormState>();
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;

  String? name;
  int? age;
  String? phone;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
      child: SingleChildScrollView(
        reverse: true,
        child: Column(
          children: [
            const SizedBox(height: 20),
            Text(
              'Add Contact',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: AppColors.primary,
              ),
            ),
            Form(
              key: formKey,
              autovalidateMode: autovalidateMode,
              child: Column(
                spacing: 16,
                children: [
                  const SizedBox(height: 20),
                  CustomTextFormFeild(
                    hintText: 'Name',
                    keyboardType: TextInputType.text,
                    onChanged: (value) {
                      name = value;
                    },
                  ),
                  CustomTextFormFeild(
                    hintText: 'Phone',
                    keyboardType: TextInputType.text,
                    onChanged: (value) {
                      phone = value;
                    },
                  ),
                  PrimaryButton(
                    text: 'Add',
                    onPressed: () async {
                      if (formKey.currentState!.validate()) {
                        autovalidateMode = AutovalidateMode.disabled;
                        await HomeRepoImpl().addNewContact(
                          query: '''
                            INSERT INTO contacts (name, phone) 
                            VALUES ('$name','$phone'); 
                          ''',
                        );
                        setState(() {});
                        Navigator.pushReplacementNamed(
                          context,
                          SqlHomeView.routeName,
                        );
                        customToastBar(
                          message: 'Contact added successfully',
                          icon: Icons.check,
                          context: context,
                        );
                      } else {
                        autovalidateMode = AutovalidateMode.always;
                        setState(() {});
                      }
                    },
                  ),
                  SizedBox(height: MediaQuery.of(context).viewInsets.bottom),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
