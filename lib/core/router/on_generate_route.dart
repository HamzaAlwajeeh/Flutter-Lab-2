import 'package:flutter/material.dart';
import 'package:naghamat/labs/FutureBuilder/view/future_builder_home_view.dart';
import 'package:naghamat/labs/LearningSqlLite/views/test_db.dart';
import 'package:naghamat/labs/SQL/data/models/contact_model.dart';
import 'package:naghamat/labs/SQL/presentation/views/edit_contact_view.dart';
import 'package:naghamat/labs/SQL/presentation/views/sql_home_view.dart';
import 'package:naghamat/labs/StateManagment/Features/auth/views/login_view.dart';
import 'package:naghamat/labs/StateManagment/Features/auth/views/sign_up_view.dart';
import 'package:naghamat/labs/StateManagment/Features/home/views/state_managment_home_view.dart';
import 'package:naghamat/labs/naghamat/views/naghamat_home_view.dart';

Route<dynamic> onGenerateRoute(RouteSettings settings) {
  switch (settings.name) {
    case NaghamatHomeView.routeName:
      return MaterialPageRoute(builder: (context) => const NaghamatHomeView());
    case FutureBuilderHomeView.routeName:
      return MaterialPageRoute(
        builder: (context) => const FutureBuilderHomeView(),
      );
    case TestDb.routeName:
      return MaterialPageRoute(builder: (context) => const TestDb());
    case SqlHomeView.routeName:
      return MaterialPageRoute(builder: (context) => const SqlHomeView());
    case EditContactView.routeName:
      final contact = settings.arguments as ContactModel;
      return MaterialPageRoute(
        builder: (context) => EditContactView(contact: contact),
      );
    case LoginView.routeName:
      return MaterialPageRoute(builder: (context) => const LoginView());
    case SignUpView.routeName:
      return MaterialPageRoute(builder: (context) => const SignUpView());
    case StateManagmentHomeView.routeName:
      return MaterialPageRoute(
        builder: (context) => const StateManagmentHomeView(),
      );
    default:
      return MaterialPageRoute(builder: (context) => const Scaffold());
  }
}
