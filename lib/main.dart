import 'package:flutter/material.dart';
import 'package:naghamat/core/helper/service_loactor.dart';
import 'package:naghamat/core/router/on_generate_route.dart';
import 'package:naghamat/labs/SQL/presentation/views/sql_home_view.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  setUpServiceLocator();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(fontFamily: 'Poppins'),
      title: 'Labs',
      onGenerateRoute: onGenerateRoute,
      initialRoute: SqlHomeView.routeName,
    );
  }
}
