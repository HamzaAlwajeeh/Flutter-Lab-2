import 'package:flutter/material.dart';
import 'package:naghamat/labs/StateManagment/Features/auth/views/widgets/sign_up_view_body.dart';

class SignUpView extends StatelessWidget {
  const SignUpView({super.key});
  static const String routeName = 'SignUp';
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: SignUpViewBody());
  }
}
