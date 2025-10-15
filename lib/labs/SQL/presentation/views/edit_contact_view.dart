import 'package:flutter/material.dart';
import 'package:naghamat/core/constants/constants.dart';
import 'package:naghamat/labs/SQL/presentation/views/widgets/custom_edit_app_bar.dart';
import 'package:naghamat/labs/SQL/presentation/views/widgets/edit_contact_form.dart';

class EditContactView extends StatefulWidget {
  const EditContactView({super.key});
  static const String routeName = '/edit-contact';

  @override
  State<EditContactView> createState() => _EditContactViewState();
}

class _EditContactViewState extends State<EditContactView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: AppColors.scaffoldBackground,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 50),
        child: Column(
          children: [
            CustomEditAppBar(),
            SingleChildScrollView(child: EditContactForm()),
          ],
        ),
      ),
    );
  }
}
