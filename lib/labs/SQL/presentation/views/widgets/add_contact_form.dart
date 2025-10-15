import 'package:flutter/material.dart';
import 'package:naghamat/core/constants/constants.dart';
import 'package:naghamat/labs/SQL/presentation/views/widgets/custom_text_form_feild.dart';
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
                    hintText: 'Age',
                    keyboardType: TextInputType.number,
                    onChanged: (value) {
                      age = int.tryParse(value);
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
                    onPressed: () {
                      if (formKey.currentState!.validate()) {
                        autovalidateMode = AutovalidateMode.disabled;
                        setState(() {});
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
