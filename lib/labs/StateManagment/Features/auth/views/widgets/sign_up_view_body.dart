import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:naghamat/core/constants/constants.dart';
import 'package:naghamat/labs/StateManagment/Features/auth/views/login_view.dart';
import 'package:naghamat/labs/StateManagment/Features/auth/views/widgets/custom_text_form_feild.dart';
import 'package:naghamat/labs/StateManagment/Features/auth/views/widgets/have_an_account.dart';
import 'package:naghamat/labs/StateManagment/Features/auth/views/widgets/primary_button.dart';

class SignUpViewBody extends StatefulWidget {
  const SignUpViewBody({super.key});

  @override
  State<SignUpViewBody> createState() => _LoginViewBodyState();
}

class _LoginViewBodyState extends State<SignUpViewBody> {
  GlobalKey<FormState> formKey = GlobalKey();
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
  String userName = '';
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
              'SIGNUP',
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
                color: AppColors.primary,
              ),
            ),
            const SizedBox(height: 70),
            SvgPicture.asset('assets/images/signup.svg'),
            Form(
              key: formKey,
              autovalidateMode: autovalidateMode,
              child: Column(
                children: [
                  const SizedBox(height: 50),
                  CustomTextFormFeild(
                    hintText: 'UserName',
                    keyboardType: TextInputType.text,
                    onChanged: (value) {
                      userName = value;
                    },
                  ),
                  const SizedBox(height: 20),
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
                    text: 'Sign Up',
                    onPressed: () {
                      onSignUpButtonPressed();
                    },
                  ),
                  const SizedBox(height: 20),
                  HaveAnAccount(
                    subText: 'Already have an account?',
                    primaryText: 'Login',
                    onTap: () {
                      Navigator.pushReplacementNamed(
                        context,
                        LoginView.routeName,
                      );
                    },
                  ),
                  const SizedBox(height: 50),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  void onSignUpButtonPressed() {
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
