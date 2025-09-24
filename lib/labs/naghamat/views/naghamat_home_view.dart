import 'package:flutter/material.dart';
import 'package:naghamat/labs/naghamat/views/widgets/naghamat_home_view_body.dart';

class NaghamatHomeView extends StatelessWidget {
  const NaghamatHomeView({super.key});
  static const String routeName = '/naghamat-home';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: NaghamatHomeViewBody(),
      // Stack(
      //   children: [
      //     // SizedBox(
      //     //   height: double.infinity,
      //     //   width: double.infinity,
      //     //   // child: Image.asset('', fit: BoxFit.cover),
      //     // ),
      //     const NaghamatHomeViewBody(),
      //   ],
      // ),
    );
  }
}
