import 'package:flutter/material.dart';
import 'package:naghamat/labs/naghamat/views/naghamat_home_view.dart';

Route<dynamic> onGenerateRoute(RouteSettings settings) {
  switch (settings.name) {
    case NaghamatHomeView.routeName:
      return MaterialPageRoute(builder: (context) => const NaghamatHomeView());
    default:
      return MaterialPageRoute(builder: (context) => const Scaffold());
  }
}
