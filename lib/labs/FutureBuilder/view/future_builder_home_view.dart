import 'package:flutter/material.dart';
import 'package:naghamat/labs/FutureBuilder/view/widgets/future_builder_home_view_body.dart';

class FutureBuilderHomeView extends StatelessWidget {
  const FutureBuilderHomeView({super.key});
  static const String routeName = 'future-builder';
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: FutureBuilderHomeViewBody());
  }
}
