import 'package:flutter/material.dart';
import 'package:naghamat/core/constants/constants.dart';
import 'package:naghamat/labs/SQL/views/widgets/sql_home_view_body.dart';

class SqlHomeView extends StatelessWidget {
  const SqlHomeView({super.key});
  static const String routeName = '/sql-home';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.scaffoldBackground,
      body: SqlHomeViewBody(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showModalBottomSheet(
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
              return SizedBox(
                height: 500,
                width: double.infinity,
                child: Column(
                  children: [
                    const SizedBox(height: 20),
                    Text(
                      'Add Contact',
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: AppColors.textPrimaryColor,
                      ),
                    ),
                  ],
                ),
              );
            },
            context: context,
          );
        },
        backgroundColor: AppColors.primary,
        child: const Icon(Icons.add, size: 30),
      ),
    );
  }
}
