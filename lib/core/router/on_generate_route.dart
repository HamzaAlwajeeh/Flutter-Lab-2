import 'package:flutter/material.dart';
import 'package:naghamat/labs/FutureBuilder/view/future_builder_home_view.dart';
import 'package:naghamat/labs/LearningSqlLite/views/test_db.dart';
import 'package:naghamat/labs/SQL/views/sql_home_view.dart';
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
    default:
      return MaterialPageRoute(builder: (context) => const Scaffold());
  }
}
