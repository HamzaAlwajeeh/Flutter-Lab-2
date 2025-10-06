import 'package:flutter/material.dart';
import 'package:naghamat/core/constants/constants.dart';
import 'package:naghamat/labs/FutureBuilder/view/widgets/future_builder_home_view_body.dart';

class FutureBuilderHomeView extends StatefulWidget {
  const FutureBuilderHomeView({super.key});
  static const String routeName = 'future-builder';

  @override
  State<FutureBuilderHomeView> createState() => _FutureBuilderHomeViewState();
}

class _FutureBuilderHomeViewState extends State<FutureBuilderHomeView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.scaffoldBackground,
      appBar: AppBar(
        title: const Text(
          'FutureBuilder',
          style: TextStyle(color: AppColors.primary),
        ),
        centerTitle: true,
        backgroundColor: AppColors.scaffoldBackground,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          FutureBuilderHomeViewBody(),
          const SizedBox(height: 20),
          ElevatedButton(
            onPressed: () {
              setState(() {});
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: AppColors.primary,
              minimumSize: Size(308, 56),
            ),
            child: const Text(
              'Refresh',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w600,
                color: AppColors.scaffoldBackground,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
