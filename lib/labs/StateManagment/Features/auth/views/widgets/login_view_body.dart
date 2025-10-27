import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:naghamat/core/constants/constants.dart';
import 'package:naghamat/labs/SQL/presentation/views/widgets/primary_button.dart';
import 'package:naghamat/labs/StateManagment/Features/auth/views/sign_up_view.dart';
import 'package:naghamat/labs/StateManagment/Features/auth/views/widgets/custom_text_form_feild.dart';
import 'package:naghamat/labs/StateManagment/Features/auth/views/widgets/have_an_account.dart';

class LoginViewBody extends StatefulWidget {
  const LoginViewBody({super.key});

  @override
  State<LoginViewBody> createState() => _LoginViewBodyState();
}

class _LoginViewBodyState extends State<LoginViewBody> {
  GlobalKey<FormState> formKey = GlobalKey();
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
  String email = '';
  String password = '';

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16),
      child: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 70),
            Text(
              'LOGIN',
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
                color: AppColors.primary,
              ),
            ),
            const SizedBox(height: 70),
            SvgPicture.asset('assets/images/login.svg'),
            Form(
              key: formKey,
              autovalidateMode: autovalidateMode,
              child: Column(
                children: [
                  const SizedBox(height: 50),
                  CustomTextFormFeild(
                    hintText: 'Email',
                    keyboardType: TextInputType.emailAddress,
                    onChanged: (value) {
                      email = value;
                    },
                  ),
                  const SizedBox(height: 20),
                  CustomTextFormFeild(
                    hintText: 'Password',
                    keyboardType: TextInputType.visiblePassword,
                    isPassword: true,
                    onChanged: (value) {
                      password = value;
                    },
                  ),
                  const SizedBox(height: 20),
                  PrimaryButton(
                    text: 'Login',
                    onPressed: () {
                      onLoginButtonPressed();
                    },
                  ),
                  const SizedBox(height: 20),
                  HaveAnAccount(
                    subText: 'Don\'t have an account?',
                    primaryText: 'Sign Up',
                    onTap: () {
                      Navigator.pushReplacementNamed(
                        context,
                        SignUpView.routeName,
                      );
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  void onLoginButtonPressed() {
    if (formKey.currentState!.validate()) {
      formKey.currentState!.save();
      autovalidateMode = AutovalidateMode.disabled;
      setState(() {});
    } else {
      autovalidateMode = AutovalidateMode.always;
      setState(() {});
    }
  }
}
