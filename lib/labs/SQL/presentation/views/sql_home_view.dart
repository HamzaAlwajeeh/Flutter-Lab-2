import 'package:flutter/material.dart';
import 'package:naghamat/core/constants/constants.dart';
import 'package:naghamat/labs/SQL/presentation/views/widgets/add_contact_form.dart';
import 'package:naghamat/labs/SQL/presentation/views/widgets/sql_home_view_body.dart';

class SqlHomeView extends StatelessWidget {
  const SqlHomeView({super.key});
  static const String routeName = '/sql-home';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      backgroundColor: AppColors.scaffoldBackground,
      body: SqlHomeViewBody(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          addContactBottmShees(context);
        },
        backgroundColor: AppColors.primary,
        child: const Icon(Icons.add, size: 30),
      ),
    );
  }

  Future<dynamic> addContactBottmShees(BuildContext context) {
    return showModalBottomSheet(
      isScrollControlled: true,
      elevation: 50,
      backgroundColor: AppColors.textFeilsSecondary,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(30),
          topRight: Radius.circular(30),
        ),
      ),
      builder: (context) {
        return SingleChildScrollView(child: AddContactForm());
      },
      context: context,
    );
  }
}
