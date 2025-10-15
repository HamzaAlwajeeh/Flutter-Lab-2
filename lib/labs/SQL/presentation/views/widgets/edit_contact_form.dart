import 'package:flutter/material.dart';
import 'package:naghamat/labs/SQL/presentation/views/widgets/custom_text_form_feild.dart';
import 'package:naghamat/labs/SQL/presentation/views/widgets/primary_button.dart';

class EditContactForm extends StatefulWidget {
  const EditContactForm({super.key});

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
                text: 'Edit',
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
            ],
          ),
        ),
      ],
    );
  }
}
