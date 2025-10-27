import 'package:flutter/material.dart';
import 'package:naghamat/core/constants/constants.dart';
import 'package:naghamat/core/helper/service_loactor.dart';
import 'package:naghamat/core/router/on_generate_route.dart';
import 'package:naghamat/labs/StateManagment/Features/auth/views/login_view.dart';

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
      theme: ThemeData(
        fontFamily: 'Poppins',
        scaffoldBackgroundColor: AppColors.scaffoldBackground,
      ),
      title: 'Labs',
      onGenerateRoute: onGenerateRoute,
      initialRoute: LoginView.routeName,
    );
  }
}
