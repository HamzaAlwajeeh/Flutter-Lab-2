import 'package:flutter/material.dart';
import 'package:naghamat/core/constants/constants.dart';
import 'package:naghamat/labs/StateManagment/Features/home/views/widgets/custom_drawer.dart';
import 'package:naghamat/labs/StateManagment/Features/home/views/widgets/state_managment_home_body.dart';

class StateManagmentHomeView extends StatelessWidget {
  const StateManagmentHomeView({super.key});
  static const String routeName = '/home';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: AppColors.primary,
        title: Text(
          'State Managment',
          style: TextStyle(color: AppColors.textFeilsPrimary),
        ),
      ),
      drawer: CustomDrawer(),
      body: StateManagmentHomeBody(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: AppColors.primary,
        child: Icon(Icons.add),
      ),
    );
  }
}
