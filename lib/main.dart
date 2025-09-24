import 'package:flutter/material.dart';
import 'package:naghamat/core/router/on_generate_route.dart';
import 'package:naghamat/labs/naghamat/views/naghamat_home_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(fontFamily: 'Qatar'),
      title: 'Labs',
      onGenerateRoute: onGenerateRoute,
      initialRoute: NaghamatHomeView.routeName,
    );
  }
}
